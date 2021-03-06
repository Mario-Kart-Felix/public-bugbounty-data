```
<!DOCTYPE html>
<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->
<!--[if lt IE 9]><html class="no-js lte-ie8"><![endif]-->
<!--[if (gt IE 8)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->
<head>
  <meta charset="utf-8">
  <title>Balint Erdi's blog about Ember.js</title>
  <meta name="author" content="Balint Erdi">

  
  <meta name="description" content="Ember.js screencasts, articles, best practice tips and more. Check out my blog and stay up-to-date on Ember.js">
  

  <!-- http://t.co/dKP3o1e -->
  <meta name="HandheldFriendly" content="True">
  <meta name="MobileOptimized" content="320">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-NNRW2Q"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-NNRW2Q');</script>
<!-- End Google Tag Manager -->


  
  <link rel="canonical" href="http://balinterdi.com/index.html">
  <link href="/favicon.ico" rel="icon">
  <link href="/stylesheets/screen.css" media="screen, projection" rel="stylesheet" type="text/css">
  <script src="/javascripts/modernizr-2.0.js"></script>
  <script src="/javascripts/ender.js"></script>
  <script src="/javascripts/octopress.js" type="text/javascript"></script>
  <link href="http://feeds.feedburner.com/balinterdi" rel="alternate" title="Balint Erdi's blog about Ember.js" type="application/atom+xml">
  <!--Fonts from Google's Web font directory at http://google.com/webfonts -->
<link href='//fonts.googleapis.com/css?family=PT+Serif:regular,italic,bold,bolditalic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=PT+Sans:regular,italic,bold,bolditalic' rel='stylesheet' type='text/css'>
<script src="//load.sumome.com/" data-sumo-site-id="2f7f42a353353cbb47533e4a22a64e9c3ec9211f92d2320ff1130ad6c622ee03" async></script>

  
  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
     (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
       m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-12299794-2', 'balinterdi.com');
    ga('send', 'pageview');
  </script>


</head>

<body   >
  <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NNRW2Q"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

  <header role="banner"><hgroup>
  <h1><a href="/">I'm all about Ember.js recently</a></h1>
  
</hgroup>

</header>
  <nav role="navigation"><ul class="subscription" data-subscription="rss">
  <li><a href="http://feeds.feedburner.com/balinterdi" rel="home" title="subscribe via RSS">RSS</a></li>
  
</ul>
  
<form action="https://google.com/search" method="get">
  <fieldset role="search">
    <input type="hidden" name="q" value="site:balinterdi.com" />
    <input class="search" type="text" name="q" results="0" placeholder="Search"/>
  </fieldset>
</form>
  
<ul role=main-navigation>
  <li><a href="/">Blog</a></li>
  <li><a href="/blog/archives">Archives</a></li>
</ul>

</nav>
  <div id="main">
    <div id="content">
      <div class="blog-index">
  
  
  
    <article>
      
  <header>
    
      <h1 class="entry-title"><a href="/2016/11/29/two-way-symmetric-relationships-in-ember-with-jsonapi-part-2.html">Two-way Symmetric Relationships in Ember With JSON API - Part 2</a></h1>
    
    
      <p class="meta">
        








  


<time datetime="2016-11-29T13:55:00+01:00" pubdate data-updated="true">Nov 29<span>th</span>, 2016</time>
        
      </p>
    
  </header>


  <div class="entry-content"><p>In <a href="/2016/11/17/two-way-symmetric-relationships-in-ember-with-jsonapi-part-1.html">Part 1</a> of this series, we saw what symmetric relationships are, how to
model them on the back-end (using Rails) and how to implement a simple app that
displays such relationships in Ember.js, adhering to the JSON API specification
for serializing data.</p>

<p>The solution we came up with worked but was a very naive one. For N relationships
a resource had, it made 2N+1 queries to the back-end to display them. We should
do better and in this post we&#8217;ll see how.</p>

<p>(If you haven&#8217;t read <a href="/2016/11/17/two-way-symmetric-relationships-in-ember-with-jsonapi-part-1.html">the previous post</a>, this one will not make much sense,
so I recommend to at least skim it before you delve into this one.)</p>

<h2>One request to rule them all</h2>

<p>We&#8217;d observed that for each person whose friendships we wanted to observe, our
application made 2N+1 requests. One to grab the friendships themselves, and then
two requests for each friendship in that collection, one to fetch the
friender, one to fetch the friended person.</p>

<p><img src="/images/posts/symmetric-relationships/too-many-xhrs.png" alt="Too many XHRs" /></p>

<p>We also noticed that those people (instances of the Person model) had already
been fetched at that point so the extra requests were for nothing. Our mission
is thus to reduce the 2N+1 requests to a single one, the one that fetches the
friendships.</p>

<h2>How would Ember (Data) know?</h2>

<p>If we take a look at the data returned by the request for friendships, you can
see that both the <code>friended</code> and <code>friender</code> end of each are just links with no
type or identity information (like <code>/friendships/1/friended</code>). This is all
that&#8217;s needed for an asynchronous relationship, since the client (Ember Data, in
this case) can just fetch the relationship data when/if it needs it.</p>

<p><img src="/images/posts/symmetric-relationships/relationship-without-resource-linkage-data.png" alt="No linkage data" /></p>

<p>The solution, then, might be to include some data about the resource that the
relationship refers to. In the JSON API vocabulary this is called <a href="http://jsonapi.org/format/#document-resource-object-linkage">resource
linkage</a>:</p>

<blockquote>
Resource linkage in a compound document allows a client to link together all
of the included resource objects without having to GET any URLs via links.
</blockquote>


<p>Digging around in the <a href="https://github.com/cerebris/jsonapi-resources">jsonapi-resources source</a>, we find a relationship
option called <code>always_include_linkage_data</code> that seems to do what we need. Let&#8217;s
add that to the relationships of the friendship resource and see:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
</pre></td><td class='code'><pre><code class='ruby'><span class='line'><span class="c1"># app/resources/friendship_resource.rb</span>
</span><span class='line'><span class="k">class</span> <span class="nc">FriendshipResource</span> <span class="o">&lt;</span> <span class="ss">JSONAPI</span><span class="p">:</span><span class="ss">:Resource</span>
</span><span class='line'>  <span class="n">has_one</span> <span class="ss">:friender</span><span class="p">,</span> <span class="n">always_include_linkage_data</span><span class="p">:</span> <span class="kp">true</span>
</span><span class='line'>  <span class="n">has_one</span> <span class="ss">:friended</span><span class="p">,</span> <span class="n">always_include_linkage_data</span><span class="p">:</span> <span class="kp">true</span>
</span><span class='line'>  <span class="n">attributes</span> <span class="ss">:strength</span>
</span><span class='line'><span class="k">end</span>
</span></code></pre></td></tr></table></div></figure>


<p>If we now reload our Ember app, we see how a <code>data</code> key was added to each
relationship in the response, uniquely identifying the person resource that is
the friender (or friended) in the friendship relationship:</p>

<p><img src="/images/posts/symmetric-relationships/relationship-with-resource-linkage-data.png" alt="Relationship with linkage data" /></p>

<p>Furthermore, the extra XHRs we wanted to eliminate are now indeed gone as Ember
Data is smart enough to just use the referred resources that are already in the
store:</p>

<p><img src="/images/posts/symmetric-relationships/no-useless-xhrs.png" alt="Just the XHRs we need" /></p>

<h2>Let&#8217;s just be friends (not friendeds or frienders)</h2>

<p>We have now achieved what we&#8217;d wanted and only have to make one request per
person to fetch and display their friendships.</p>

<p>It looks a bit weird, though, that when a person&#8217;s friendships are displayed, we
also display the person&#8217;s name, too:</p>

<p><img src="/images/posts/symmetric-relationships/friendships-step-1.png" alt="Mike McCready's friendships - Part 1" /></p>

<p>Let&#8217;s fix that by transforming the <code>friendships</code> of the person to an array where
each item only contains the friend&#8217;s name (and the strength of the friendship):</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
<span class='line-number'>9</span>
<span class='line-number'>10</span>
<span class='line-number'>11</span>
<span class='line-number'>12</span>
<span class='line-number'>13</span>
<span class='line-number'>14</span>
<span class='line-number'>15</span>
<span class='line-number'>16</span>
<span class='line-number'>17</span>
<span class='line-number'>18</span>
<span class='line-number'>19</span>
<span class='line-number'>20</span>
<span class='line-number'>21</span>
<span class='line-number'>22</span>
<span class='line-number'>23</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// app/controllers/people/show.js</span>
</span><span class='line'><span class="kr">import</span> <span class="nx">Ember</span> <span class="nx">from</span> <span class="s1">&#39;ember&#39;</span><span class="p">;</span>
</span><span class='line'>
</span><span class='line'><span class="kr">const</span> <span class="p">{</span> <span class="nx">Controller</span><span class="p">,</span> <span class="nx">computed</span> <span class="p">}</span> <span class="o">=</span> <span class="nx">Ember</span><span class="p">;</span>
</span><span class='line'>
</span><span class='line'><span class="kr">export</span> <span class="k">default</span> <span class="nx">Controller</span><span class="p">.</span><span class="nx">extend</span><span class="p">({</span>
</span><span class='line'>  <span class="nx">friendships</span><span class="o">:</span> <span class="nx">computed</span><span class="p">(</span><span class="s1">&#39;model.friendships.[]&#39;</span><span class="p">,</span> <span class="kd">function</span><span class="p">()</span> <span class="p">{</span>
</span><span class='line'>    <span class="kd">let</span> <span class="nx">person</span> <span class="o">=</span> <span class="k">this</span><span class="p">.</span><span class="nx">get</span><span class="p">(</span><span class="s1">&#39;model&#39;</span><span class="p">);</span>
</span><span class='line'>    <span class="kd">let</span> <span class="nx">friendships</span> <span class="o">=</span> <span class="k">this</span><span class="p">.</span><span class="nx">get</span><span class="p">(</span><span class="s1">&#39;model.friendships&#39;</span><span class="p">);</span>
</span><span class='line'>    <span class="k">return</span> <span class="nx">friendships</span><span class="p">.</span><span class="nx">map</span><span class="p">((</span><span class="nx">friendship</span><span class="p">)</span> <span class="o">=&gt;</span> <span class="p">{</span>
</span><span class='line'>      <span class="kd">let</span> <span class="nx">friend</span><span class="p">;</span>
</span><span class='line'>      <span class="k">if</span> <span class="p">(</span><span class="nx">friendship</span><span class="p">.</span><span class="nx">get</span><span class="p">(</span><span class="s1">&#39;friended.id&#39;</span><span class="p">)</span> <span class="o">===</span> <span class="nx">person</span><span class="p">.</span><span class="nx">get</span><span class="p">(</span><span class="s1">&#39;id&#39;</span><span class="p">))</span> <span class="p">{</span>
</span><span class='line'>        <span class="nx">friend</span> <span class="o">=</span> <span class="nx">friendship</span><span class="p">.</span><span class="nx">get</span><span class="p">(</span><span class="s1">&#39;friender&#39;</span><span class="p">);</span>
</span><span class='line'>      <span class="p">}</span> <span class="k">else</span> <span class="p">{</span>
</span><span class='line'>        <span class="nx">friend</span> <span class="o">=</span> <span class="nx">friendship</span><span class="p">.</span><span class="nx">get</span><span class="p">(</span><span class="s1">&#39;friended&#39;</span><span class="p">);</span>
</span><span class='line'>      <span class="p">}</span>
</span><span class='line'>      <span class="k">return</span> <span class="p">{</span>
</span><span class='line'>        <span class="nx">friend</span><span class="p">,</span>
</span><span class='line'>        <span class="nx">strength</span><span class="o">:</span> <span class="nx">friendship</span><span class="p">.</span><span class="nx">get</span><span class="p">(</span><span class="s1">&#39;strength&#39;</span><span class="p">)</span>
</span><span class='line'>      <span class="p">};</span>
</span><span class='line'>    <span class="p">});</span>
</span><span class='line'>  <span class="p">})</span>
</span><span class='line'><span class="p">});</span>
</span></code></pre></td></tr></table></div></figure>


<p>Nothing fancy going on, we check which end of the relationship the person in
question (the <code>model</code>) is, and then only return the other end.</p>

<p>We should now use <code>friendships</code> in the template instead of <code>model.friendships</code>:</p>

<div>
  <pre><code class='html'>&lt;div class=&quot;panel panel-default&quot;&gt;
  &lt;div class=&quot;panel-heading&quot;&gt;
    &lt;h3 class=&quot;panel-title&quot;&gt;Friends of {{model.name}}&lt;/h3&gt;
  &lt;/div&gt;
  &lt;div class=&quot;panel-body&quot;&gt;
    {{#if friendships.length}}
      &lt;ul class=&quot;friend-list&quot;&gt;
        {{#each friendships as |friendship|}}
          &lt;li class=&quot;friend-list-item&quot;&gt;
            &lt;span class=&quot;name&quot;&gt;{{friendship.friend.name}}&lt;/span&gt;
            &lt;span class=&quot;badge&quot;&gt;{{friendship.strength}}&lt;/span&gt;
          &lt;/li&gt;
        {{/each}}
      &lt;/ul&gt;
    {{else}}
      &lt;div class=&quot;empty-list&quot;&gt;
        &lt;p class=&quot;empty-message&quot;&gt;{{model.name}} has no friends :(&lt;/p&gt;
      &lt;/div&gt;
    {{/if}}
  &lt;/div&gt;
&lt;/div&gt;</code></pre>
</div>


<p>It works, we indeed only see the friend&#8217;s name, not the person&#8217;s:</p>

<p><img src="/images/posts/symmetric-relationships/only-friend-name.png" alt="Relationship with linkage data" /></p>

<h2>Resources</h2>

<p>Hopefully you can now implement a symmetric relationship with relative
ease, the next time you encounter it.</p>

<p>I made the source code of both <a href="https://github.com/balinterdi/ember-two-way-symmetric-relationships">the Ember app</a> and the <a href="https://github.com/balinterdi/two-way-symmetric-relationships-api">Rails API</a>
available on Github. If you want to learn more about the jsonapi-resources gem,
I suggest you visit <a href="http://jsonapi-resources.com/">the documentation site</a>.</p>

<p>Finally, if you&#8217;d like to receive the series as a pdf, fill out the form below
and I&#8217;ll send it to you right away!</p>
</div>
  
  


    </article>
  
  
    <article>
      
  <header>
    
      <h1 class="entry-title"><a href="/2016/11/17/two-way-symmetric-relationships-in-ember-with-jsonapi-part-1.html">Two-way Symmetric Relationships in Ember With JSON API - Part 1</a></h1>
    
    
      <p class="meta">
        








  


<time datetime="2016-11-17T12:52:00+01:00" pubdate data-updated="true">Nov 17<span>th</span>, 2016</time>
        
      </p>
    
  </header>


  <div class="entry-content"><h2>Definition</h2>

<p>In data modelling, a symmetric relationship is a special kind of relationship
where the description of the relationship from the perspective of one end of
the relationship is identical to looking at it from the perspective of the other
end.</p>

<p>Friendship between people is a good example. If Megan is Selma&#8217;s friend, it
follows that Selma is Megan&#8217;s friend, too. On the other hand, the &#8220;knows&#8221;
relationship between two people is not a symmetric one. I might know Danny
Carey (the drummer of Tool), but that does not imply he knows me.</p>

<h2>Historical background</h2>

<p>My research into how to model and implement such a relationship in an Ember
application was sparked by <a href="http://stackoverflow.com/questions/34186435/modelling-two-way-symmetric-relationships-in-ember">this Stack Overflow question</a> that was posed by
a reader of <a href="http://rockandrollwithemberjs.com">my book</a>. It was more difficult than I thought it would be so I
was intrigued to find the (an) answer.</p>

<p>My solution turned out to have a fairly large API component, too, so the
following post will show both the server-side implementation (in Rails) and the
client-side one (in Ember).</p>

<p>If you don&#8217;t speak Rails, fear not. The code is straightforward and easy to
understand without any substantial Rails knowledge, thanks in most part to the gem that
makes it extremely easy to serialize data models and relationships to json:api
format, <a href="https://github.com/cerebris/jsonapi-resources">jsonapi-resources</a>.</p>

<h2>Data modelling</h2>

<p>We&#8217;ll start with the data modelling part, which is the Rails side.</p>

<p>To be able to model our problem in the data layer, let&#8217;s say that Friendships
have a <code>friender</code> and a <code>friended</code> end of the relationship and a strength
attribute that measures how strong their friendship is.</p>

<p>We should create a (data) migration that will create a database table when run:</p>

<pre><code>    $ rails g migration create_friendships
</code></pre>

<p>Let&#8217;s fill in the generated migration with the above attributes:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
<span class='line-number'>9</span>
<span class='line-number'>10</span>
</pre></td><td class='code'><pre><code class='ruby'><span class='line'><span class="k">class</span> <span class="nc">CreateFriendships</span> <span class="o">&lt;</span> <span class="ss">ActiveRecord</span><span class="p">:</span><span class="ss">:Migration</span>
</span><span class='line'>  <span class="k">def</span> <span class="nf">change</span>
</span><span class='line'>    <span class="n">create_table</span> <span class="ss">:friendships</span> <span class="k">do</span> <span class="o">|</span><span class="n">t</span><span class="o">|</span>
</span><span class='line'>      <span class="n">t</span><span class="o">.</span><span class="n">integer</span> <span class="ss">:friender_id</span>
</span><span class='line'>      <span class="n">t</span><span class="o">.</span><span class="n">integer</span> <span class="ss">:friended_id</span>
</span><span class='line'>      <span class="n">t</span><span class="o">.</span><span class="n">integer</span> <span class="ss">:strength</span>
</span><span class='line'>      <span class="n">t</span><span class="o">.</span><span class="n">timestamps</span> <span class="ss">null</span><span class="p">:</span> <span class="kp">false</span>
</span><span class='line'>    <span class="k">end</span>
</span><span class='line'>  <span class="k">end</span>
</span><span class='line'><span class="k">end</span>
</span></code></pre></td></tr></table></div></figure>


<p>A Friendship, then, is between two people (Persons), so let&#8217;s define that in the
corresponding model file:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
</pre></td><td class='code'><pre><code class='ruby'><span class='line'><span class="c1"># app/models/friendship.rb</span>
</span><span class='line'><span class="k">class</span> <span class="nc">Friendship</span> <span class="o">&lt;</span> <span class="ss">ActiveRecord</span><span class="p">:</span><span class="ss">:Base</span>
</span><span class='line'>  <span class="n">belongs_to</span> <span class="ss">:friender</span><span class="p">,</span> <span class="n">class_name</span><span class="p">:</span> <span class="no">Person</span>
</span><span class='line'>  <span class="n">belongs_to</span> <span class="ss">:friended</span><span class="p">,</span> <span class="n">class_name</span><span class="p">:</span> <span class="no">Person</span>
</span><span class='line'><span class="k">end</span>
</span></code></pre></td></tr></table></div></figure>


<p>We&#8217;ll want to list all the friendships a person has so a <code>friendships</code> method
needs to be added to the Person class:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
</pre></td><td class='code'><pre><code class='ruby'><span class='line'><span class="c1"># app/models/person.rb</span>
</span><span class='line'><span class="k">class</span> <span class="nc">Person</span> <span class="o">&lt;</span> <span class="ss">ActiveRecord</span><span class="p">:</span><span class="ss">:Base</span>
</span><span class='line'>  <span class="k">def</span> <span class="nf">friendships</span>
</span><span class='line'>    <span class="no">Friendship</span><span class="o">.</span><span class="n">where</span><span class="p">(</span><span class="s2">&quot;friender_id = ? OR friended_id = ?&quot;</span><span class="p">,</span> <span class="nb">id</span><span class="p">,</span> <span class="nb">id</span><span class="p">);</span>
</span><span class='line'>  <span class="k">end</span>
</span><span class='line'><span class="k">end</span>
</span></code></pre></td></tr></table></div></figure>


<p>We select the friendships where either the <code>friender</code> or the <code>friended</code> is the
person we query it for. This is where the symmetric aspect of the relationship
is implemented. We don&#8217;t care if the person friended somebody or if that
somebody friended him, they are friends.</p>

<p>Note that modelling it this way, we could split up the symmetric relationship
into the two constituent parts. We could return only the friendships where the
person in question &#8220;initiated&#8221; it (was the friender), or &#8220;let himself be
friended&#8221; (was the friender).</p>

<h2>Server endpoints, resources, serializing relationships</h2>

<p>We could now turn our attention to setting up the endpoints and serializing the
model, and relationship data for the client application to consume. First, let&#8217;s
install <a href="https://github.com/cerebris/jsonapi-resources">the jsonapi-resources gem</a>:</p>

<pre><code>    $ gem install jsonapi-resources
</code></pre>

<p>This gives us a jsonapi:resource generator that we can use to create both the
endpoints and the serializer for our resources.</p>

<pre><code>    $ rails generate jsonapi:resource person
    $ rails generate jsonapi:resource friendship
</code></pre>

<p>The created resources are placed in the <code>app/resources</code> folder. Let&#8217;s add the
attributes we want to serialize for each one:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
</pre></td><td class='code'><pre><code class='ruby'><span class='line'><span class="c1"># app/resources/person_resource.rb</span>
</span><span class='line'><span class="k">class</span> <span class="nc">PersonResource</span> <span class="o">&lt;</span> <span class="ss">JSONAPI</span><span class="p">:</span><span class="ss">:Resource</span>
</span><span class='line'>  <span class="n">attributes</span> <span class="ss">:name</span>
</span><span class='line'>  <span class="n">has_many</span> <span class="ss">:friendships</span><span class="p">,</span> <span class="n">class_name</span><span class="p">:</span> <span class="s2">&quot;Friendship&quot;</span>
</span><span class='line'><span class="k">end</span>
</span></code></pre></td></tr></table></div></figure>




<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
</pre></td><td class='code'><pre><code class='ruby'><span class='line'><span class="c1"># app/resources/friendship_resource.rb</span>
</span><span class='line'><span class="k">class</span> <span class="nc">FriendshipResource</span> <span class="o">&lt;</span> <span class="ss">JSONAPI</span><span class="p">:</span><span class="ss">:Resource</span>
</span><span class='line'>  <span class="n">has_one</span> <span class="ss">:friender</span>
</span><span class='line'>  <span class="n">has_one</span> <span class="ss">:friended</span>
</span><span class='line'>  <span class="n">attributes</span> <span class="ss">:strength</span>
</span><span class='line'><span class="k">end</span>
</span></code></pre></td></tr></table></div></figure>


<p>Creating the endpoints is no more work than adding a <code>jsonapi_resources</code> call
for each resource in the router configuration:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
</pre></td><td class='code'><pre><code class='ruby'><span class='line'><span class="c1"># config/routes.rb</span>
</span><span class='line'><span class="no">Rails</span><span class="o">.</span><span class="n">application</span><span class="o">.</span><span class="n">routes</span><span class="o">.</span><span class="n">draw</span> <span class="k">do</span>
</span><span class='line'>  <span class="n">jsonapi_resources</span> <span class="ss">:people</span>
</span><span class='line'>  <span class="n">jsonapi_resources</span> <span class="ss">:friendships</span>
</span><span class='line'><span class="k">end</span>
</span></code></pre></td></tr></table></div></figure>


<p>The gem also provides a controller generator so let&#8217;s use it to create controllers for our resources:</p>

<pre><code>    $ rails generate jsonapi:controller person
    $ rails generate jsonapi:controller friendship
</code></pre>

<p>They can be left empty but they need to be created in a way that they are
descendants of JSONAPI::ResourceController (the generator takes care of that):</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
</pre></td><td class='code'><pre><code class='ruby'><span class='line'><span class="c1"># app/controllers/people_controller.rb</span>
</span><span class='line'><span class="k">class</span> <span class="nc">PeopleController</span> <span class="o">&lt;</span> <span class="ss">JSONAPI</span><span class="p">:</span><span class="ss">:ResourceController</span>
</span><span class='line'><span class="k">end</span>
</span></code></pre></td></tr></table></div></figure>




<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
</pre></td><td class='code'><pre><code class='ruby'><span class='line'><span class="c1"># app/controllers/friendships_controller.rb</span>
</span><span class='line'><span class="k">class</span> <span class="nc">FriendshipsController</span> <span class="o">&lt;</span> <span class="ss">JSONAPI</span><span class="p">:</span><span class="ss">:ResourceController</span>
</span><span class='line'><span class="k">end</span>
</span></code></pre></td></tr></table></div></figure>


<p>The back-end is now done, we can switch our focus to the Ember app.</p>

<h2>The front-end</h2>

<p>We want a list of people (<a href="http://rockandrollwithemberjs.com">rock stars</a>, of course) and then have a list of
their friendships on the person details page.</p>

<p><img src="/images/posts/symmetric-relationships/friendships-step-1.png" alt="Mike McCready's frienships - Part 1" /></p>

<p>The first step is to set up the routes:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
</pre></td><td class='code'><pre><code class='javascript'><span class='line'><span class="p">(...)</span>
</span><span class='line'><span class="nx">Router</span><span class="p">.</span><span class="nx">map</span><span class="p">(</span><span class="kd">function</span><span class="p">()</span> <span class="p">{</span>
</span><span class='line'>  <span class="k">this</span><span class="p">.</span><span class="nx">route</span><span class="p">(</span><span class="s1">&#39;people&#39;</span><span class="p">,</span> <span class="p">{</span> <span class="nx">path</span><span class="o">:</span> <span class="s1">&#39;/&#39;</span> <span class="p">},</span> <span class="kd">function</span><span class="p">()</span> <span class="p">{</span>
</span><span class='line'>    <span class="k">this</span><span class="p">.</span><span class="nx">route</span><span class="p">(</span><span class="s1">&#39;show&#39;</span><span class="p">,</span> <span class="p">{</span> <span class="nx">path</span><span class="o">:</span> <span class="s1">&#39;/people/:person_id&#39;</span> <span class="p">});</span>
</span><span class='line'>  <span class="p">});</span>
</span><span class='line'><span class="p">});</span>
</span><span class='line'>
</span><span class='line'><span class="kr">export</span> <span class="k">default</span> <span class="nx">Router</span><span class="p">;</span>
</span></code></pre></td></tr></table></div></figure>


<p>The model hooks for these routes are the classic, &#8220;fetch&#8217;em all&#8221; and &#8220;fetch the
one that matches the id&#8221; methods of Ember Data&#8217;s store:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
</pre></td><td class='code'><pre><code class='javascript'><span class='line'><span class="c1">// app/routes/people.js</span>
</span><span class='line'><span class="kr">import</span> <span class="nx">Ember</span> <span class="nx">from</span> <span class="s1">&#39;ember&#39;</span><span class="p">;</span>
</span><span class='line'>
</span><span class='line'><span class="kr">export</span> <span class="k">default</span> <span class="nx">Ember</span><span class="p">.</span><span class="nx">Route</span><span class="p">.</span><span class="nx">extend</span><span class="p">({</span>
</span><span class='line'>  <span class="nx">model</span><span class="p">()</span> <span class="p">{</span>
</span><span class='line'>    <span class="k">return</span> <span class="k">this</span><span class="p">.</span><span class="nx">store</span><span class="p">.</span><span class="nx">findAll</span><span class="p">(</span><span class="s1">&#39;person&#39;</span><span class="p">);</span>
</span><span class='line'>  <span class="p">}</span>
</span><span class='line'><span class="p">});</span>
</span></code></pre></td></tr></table></div></figure>




<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
</pre></td><td class='code'><pre><code class='javascript'><span class='line'><span class="c1">// app/routes/people/show.js</span>
</span><span class='line'><span class="kr">import</span> <span class="nx">Ember</span> <span class="nx">from</span> <span class="s1">&#39;ember&#39;</span><span class="p">;</span>
</span><span class='line'>
</span><span class='line'><span class="kr">export</span> <span class="k">default</span> <span class="nx">Ember</span><span class="p">.</span><span class="nx">Route</span><span class="p">.</span><span class="nx">extend</span><span class="p">({</span>
</span><span class='line'>  <span class="nx">model</span><span class="p">(</span><span class="nx">params</span><span class="p">)</span> <span class="p">{</span>
</span><span class='line'>    <span class="k">return</span> <span class="k">this</span><span class="p">.</span><span class="nx">store</span><span class="p">.</span><span class="nx">findRecord</span><span class="p">(</span><span class="s1">&#39;person&#39;</span><span class="p">,</span> <span class="nx">params</span><span class="p">.</span><span class="nx">person_id</span><span class="p">);</span>
</span><span class='line'>  <span class="p">}</span>
</span><span class='line'><span class="p">});</span>
</span></code></pre></td></tr></table></div></figure>


<p>Before we move on to writing the templates, let&#8217;s define the models:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
<span class='line-number'>9</span>
<span class='line-number'>10</span>
<span class='line-number'>11</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// app/models/person.js</span>
</span><span class='line'><span class="kr">import</span> <span class="nx">DS</span> <span class="nx">from</span> <span class="s1">&#39;ember-data&#39;</span><span class="p">;</span>
</span><span class='line'>
</span><span class='line'><span class="kr">const</span> <span class="p">{</span> <span class="nx">Model</span><span class="p">,</span> <span class="nx">attr</span><span class="p">,</span> <span class="nx">hasMany</span> <span class="p">}</span> <span class="o">=</span> <span class="nx">DS</span><span class="p">;</span>
</span><span class='line'>
</span><span class='line'><span class="kr">export</span> <span class="k">default</span> <span class="nx">Model</span><span class="p">.</span><span class="nx">extend</span><span class="p">({</span>
</span><span class='line'>  <span class="nx">name</span><span class="o">:</span> <span class="nx">attr</span><span class="p">(),</span>
</span><span class='line'>  <span class="nx">friendships</span><span class="o">:</span> <span class="nx">hasMany</span><span class="p">(),</span>
</span><span class='line'>  <span class="nx">frienderFriendships</span><span class="o">:</span> <span class="nx">hasMany</span><span class="p">(</span><span class="s1">&#39;friendship&#39;</span><span class="p">,</span> <span class="p">{</span> <span class="nx">inverse</span><span class="o">:</span> <span class="s1">&#39;friender&#39;</span> <span class="p">}),</span>
</span><span class='line'>  <span class="nx">friendedFriendships</span><span class="o">:</span> <span class="nx">hasMany</span><span class="p">(</span><span class="s1">&#39;friendship&#39;</span><span class="p">,</span> <span class="p">{</span> <span class="nx">inverse</span><span class="o">:</span> <span class="s1">&#39;friended&#39;</span> <span class="p">}),</span>
</span><span class='line'><span class="p">});</span>
</span></code></pre></td></tr></table></div></figure>




<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
<span class='line-number'>9</span>
<span class='line-number'>10</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// app/models/friendship.js</span>
</span><span class='line'><span class="kr">import</span> <span class="nx">DS</span> <span class="nx">from</span> <span class="s1">&#39;ember-data&#39;</span><span class="p">;</span>
</span><span class='line'>
</span><span class='line'><span class="kr">const</span> <span class="p">{</span> <span class="nx">Model</span><span class="p">,</span> <span class="nx">attr</span><span class="p">,</span> <span class="nx">belongsTo</span> <span class="p">}</span> <span class="o">=</span> <span class="nx">DS</span><span class="p">;</span>
</span><span class='line'>
</span><span class='line'><span class="kr">export</span> <span class="k">default</span> <span class="nx">Model</span><span class="p">.</span><span class="nx">extend</span><span class="p">({</span>
</span><span class='line'>  <span class="nx">strength</span><span class="o">:</span> <span class="nx">attr</span><span class="p">(</span><span class="s1">&#39;number&#39;</span><span class="p">),</span>
</span><span class='line'>  <span class="nx">friender</span><span class="o">:</span> <span class="nx">belongsTo</span><span class="p">(</span><span class="s1">&#39;person&#39;</span><span class="p">,</span> <span class="p">{</span> <span class="nx">inverse</span><span class="o">:</span> <span class="s1">&#39;frienderFriendships&#39;</span> <span class="p">}),</span>
</span><span class='line'>  <span class="nx">friended</span><span class="o">:</span> <span class="nx">belongsTo</span><span class="p">(</span><span class="s1">&#39;person&#39;</span><span class="p">,</span> <span class="p">{</span> <span class="nx">inverse</span><span class="o">:</span> <span class="s1">&#39;friendedFriendships&#39;</span> <span class="p">}),</span>
</span><span class='line'><span class="p">});</span>
</span></code></pre></td></tr></table></div></figure>


<p>This is rather standard Ember Data stuff, possibly with the exception of the
<code>inverse</code> definitions. Since we have two relationships between <code>Person</code> and
<code>Friendship</code> we need to specify the other end of each relationship and that&#8217;s
what we do with the <code>inverse</code> option.</p>

<p>With the models and routes in place, we can now see what the templates should look like.</p>

<p>The top-level <code>people</code> route is again fairly straightforward:</p>

<div>
  <pre><code class='html'>// app/templates/people.hbs
&lt;div class=&quot;col-md-4&quot;&gt;
  &lt;div class=&quot;list-group&quot;&gt;
    {{#each model as |person|}}
      {{link-to person.name &#39;people.show&#39; person.id class=&quot;list-group-item&quot;}}
    {{/each}}
  &lt;/div&gt;
&lt;/div&gt;
&lt;div class=&quot;col-md-8&quot;&gt;
  {{outlet}}
&lt;/div&gt;</code></pre>
</div>


<p>The <code>each</code> loop iterates through each person and renders a link for each of
those that will take us to the person details page, which will display the
person&#8217;s friendships.</p>

<p><img src="/images/posts/symmetric-relationships/people-list-step-1.png" alt="List of people" /></p>

<h3>Listing a person&#8217;s friendships</h3>

<div>
  <pre><code class='html'>// app/templates/people/show.hbs
&lt;div class=&quot;panel panel-default&quot;&gt;
  &lt;div class=&quot;panel-heading&quot;&gt;
    &lt;h3 class=&quot;panel-title&quot;&gt;Friends of {{model.name}}&lt;/h3&gt;
  &lt;/div&gt;
  &lt;div class=&quot;panel-body&quot;&gt;
    &lt;ul class=&quot;friend-list&quot;&gt;
      {{#each model.friendships as |friendship|}}
        &lt;li class=&quot;friend-list-item&quot;&gt;
          &lt;span class=&quot;name&quot;&gt;{{friendship.friender.name}}&lt;/span&gt;
          &lt;span class=&quot;name&quot;&gt;{{friendship.friended.name}}&lt;/span&gt;
          &lt;span class=&quot;badge&quot;&gt;{{friendship.strength}}&lt;/span&gt;
        &lt;/li&gt;
      {{/each}}
    &lt;/ul&gt;
  &lt;/div&gt;
&lt;/div&gt;</code></pre>
</div>


<p>There is nothing fancy going on here, either. The <code>model</code> is the person
retrieved in the route.  For each friendship that he has, the friender&#8217;s and
the friended&#8217;s name are rendered along with the strength of the relationship.
(Either <code>friender</code> or <code>friended</code> will be the person itself, but we can ignore that
in the first version.)</p>

<p>This naive approach works, the friendships for the selected person are listed correctly:</p>

<p><img src="/images/posts/symmetric-relationships/friendships-step-1.png" alt="Mike McCready's friendships - Part 1" /></p>

<h2>A 2N+1 problem</h2>

<p>However, looking at the requests to the backend for just one page, one gets the
impression that we&#8217;re not done yet:</p>

<p><img src="/images/posts/symmetric-relationships/too-many-xhrs.png" alt="Too many XHRs" /></p>

<p>For each friendship the person has, two requests are sent to the backend. One to
fetch the <code>friender</code> and another one to fetch the <code>friended</code> person. This is not
an <a href="https://www.sitepoint.com/silver-bullet-n1-problem/">N+1 query problem</a>, this is worse, a 2N+1 query problem!</p>

<p>On top of that, those requests are sent for no good reason as we&#8217;d previously
loaded the people referred by those <code>friended</code> and <code>friended</code> relationships.</p>

<p>In the next part, we&#8217;ll see how these wasteful requests can be eliminated and
we&#8217;ll also make the person details page less perplexing by not displaying the
person whose page we&#8217;re looking at in the relationships. Stay tuned!</p>

<p>UPDATE: <a href="/2016/11/29/two-way-symmetric-relationships-in-ember-with-jsonapi-part-2.html">Part 2</a> is now available!</p>
</div>
  
  


    </article>
  
  
    <article>
      
  <header>
    
      <h1 class="entry-title"><a href="/2016/11/16/rock-and-roll-with-ember-dot-js-2-dot-9-is-released.html">Rock and Roll With Ember.js 2.9 Is Released</a></h1>
    
    
      <p class="meta">
        








  


<time datetime="2016-11-16T14:17:00+01:00" pubdate data-updated="true">Nov 16<span>th</span>, 2016</time>
        
      </p>
    
  </header>


  <div class="entry-content"><p>I just published an updated version of the <a href="http://rockandrollwithemberjs.com">Rock and Roll with Ember.js book</a>. The app now runs on 2.9.1 and there are only
<a href="https://github.com/balinterdi/rarwe-issues/issues?q=is%3Aopen+is%3Aissue+milestone%3A2.9">a few really minor changes</a> this time.</p>

<p>If you&#8217;re looking to get started in Ember, I encourage you read a sample chapter below.</p>
</div>
  
  


    </article>
  
  
    <article>
      
  <header>
    
      <h1 class="entry-title"><a href="/2016/11/11/enable-fastboot-in-your-ember-app.html">Enable FastBoot in Your Ember App</a></h1>
    
    
      <p class="meta">
        








  


<time datetime="2016-11-11T11:20:00+01:00" pubdate data-updated="true">Nov 11<span>th</span>, 2016</time>
        
      </p>
    
  </header>


  <div class="entry-content"><h2>What is FastBoot and why should you use it?</h2>

<p><a href="https://ember-fastboot.com/">FastBoot</a> is the awesome add-on that adds
server-side rendering to your Ember app. This will make users of your
application see the content of your page before any of the javascript is
downloaded. In other words, the <a href="https://blog.alexmaccaw.com/time-to-first-tweet">&#8220;time to first tweet&#8221;</a>
of your app is greatly reduced, which is a big win where and when people have slow
or unstable network connections.</p>

<p>Another advantage is that search engine crawlers will have an easier job
indexing your site, which brings SEO benefits.</p>

<p>Furthermore, your site will be readable with Javascript disabled which is
convenient for screen readers.</p>

<p>I recently went through the process of enabling the demo version of the
<a href="http://rockandrollwithemberjs.com">Rock and Roll application</a> to run in Fastboot.
Below, I&#8217;m going to tell you about the challenges I encountered and how I
overcame them in the hope that my journey will prove valuable when you do the same for
your app.</p>

<h2>Installing the add-on</h2>

<p>FastBoot is a regular Ember add-on, so installing it is piece of cake:</p>

<pre><code>$ ember install ember-cli-fastboot
</code></pre>

<p>I could then run</p>

<pre><code>$ ember fastboot
</code></pre>

<p>from the project&#8217;s directory and had the node server serving my application at
port 3000. It&#8217;s important to note that you should refresh your browser tab each
time you make changes to your code as FastBoot doesn&#8217;t (yet) auto-refresh the
way <code>ember server</code> does.</p>

<p>I then disabled JavaScript in my browser and then directed my browser to <code>http://localhost:3000</code>.</p>

<p>Disabling JavaScript in Chrome is most easily done by expanding the context menu
of Developer Tools and then clicking on Settings:</p>

<p><img src="/images/posts/fastboot/disable-javascript-in-chrome.png" alt="Disable JavaScript" /></p>

<h2>Mirage is disabled in FastBoot mode</h2>

<p>My first obstacle turned out to be Mirage.</p>

<p>Mirage is a great tool for mocking server responses and even <a href="https://www.codeschool.com/blog/2016/07/07/building-an-ember-app-without-a-back-end/">prototyping your Ember app</a>.
I used it in development, too, and it turned out that since <a href="https://github.com/samselikoff/ember-cli-mirage/blob/24f994f4419f1b175c82331b00c3089e3f65c038/index.js#L106">it turns itself off</a>
when your app is running in FastBoot mode, the requests hitherto handled by
Mirage now went out and were thus unhandled.</p>

<p>The fix here was to disable Mirage in development (and, in my case, production,
too) and to make the requests against an actual API.</p>

<p>You also have to add the hosts that will serve your Ember app in FastBoot mode
to a list called hostWhitelist in your app&#8217;s configuration.</p>

<p>In my case, it contains the host I wanted to deploy it to and any localhost
port:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// config/environment.js</span>
</span><span class='line'><span class="nx">module</span><span class="p">.</span><span class="nx">exports</span> <span class="o">=</span> <span class="kd">function</span><span class="p">(</span><span class="nx">environment</span><span class="p">)</span> <span class="p">{</span>
</span><span class='line'>  <span class="kd">var</span> <span class="nx">ENV</span> <span class="o">=</span> <span class="p">{</span>
</span><span class='line'>    <span class="p">(...)</span>
</span><span class='line'>    <span class="nx">fastboot</span><span class="o">:</span> <span class="p">{</span>
</span><span class='line'>      <span class="nx">hostWhitelist</span><span class="o">:</span> <span class="p">[</span><span class="s1">&#39;demo.rockandrollwithemberjs.com&#39;</span><span class="p">,</span> <span class="sr">/^localhost:\d+$/</span><span class="p">]</span>
</span><span class='line'>    <span class="p">}</span>
</span><span class='line'>  <span class="p">};</span>
</span></code></pre></td></tr></table></div></figure>


<h2>Serving assets</h2>

<p>When I restarted the <code>ember fastboot</code> and looked at the server-rendered version
of my app, I saw that the dynamic data was now correctly rendered on the page.
However, it did not have any styling.</p>

<p>A quick glance at <a href="https://ember-fastboot.com/docs/user-guide">the documentation</a> made me realize I needed to pass the
<code>serve-assets</code> option to the command so that it serves the css (and other asset)
files:</p>

<pre><code>$ ember fastboot --serve-assets
</code></pre>

<h2>document is not defined</h2>

<p>So now the main page, with the list of bands rendered fine but when I selected
one of the bands to have their songs displayed, I got the following error:</p>

<pre><code>Error while processing route: bands.band.songs document is not defined
</code></pre>

<p>Since Fastboot runs your Ember app in a node environment, not in the browser,
<code>document</code> is not present. In my case, I accessed <code>document</code> (through jQuery)
to set the document title, which does not work in FastBoot mode.</p>

<p>The user guide suggested to use <a href="https://github.com/kimroen/ember-cli-document-title">ember-cli-document-title</a>, a FastBoot
compatible way to set document titles. So my next step was to install that
add-on:</p>

<pre><code>$ ember install ember-cli-document-title
</code></pre>

<p>Armed with this great add-on, I only had to define a title (method) in the
corresponding route:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
<span class='line-number'>9</span>
<span class='line-number'>10</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// app/routes/bands/band/songs.js</span>
</span><span class='line'><span class="kr">import</span> <span class="nx">Ember</span> <span class="nx">from</span> <span class="s1">&#39;ember&#39;</span><span class="p">;</span>
</span><span class='line'>
</span><span class='line'><span class="kr">export</span> <span class="k">default</span> <span class="nx">Ember</span><span class="p">.</span><span class="nx">Route</span><span class="p">.</span><span class="nx">extend</span><span class="p">({</span>
</span><span class='line'>  <span class="p">(...)</span>
</span><span class='line'>  <span class="nx">title</span><span class="p">()</span> <span class="p">{</span>
</span><span class='line'>    <span class="kd">let</span> <span class="nx">bandName</span> <span class="o">=</span> <span class="k">this</span><span class="p">.</span><span class="nx">modelFor</span><span class="p">(</span><span class="s1">&#39;bands.band&#39;</span><span class="p">).</span><span class="nx">get</span><span class="p">(</span><span class="s1">&#39;name&#39;</span><span class="p">);</span>
</span><span class='line'>    <span class="k">return</span> <span class="err">`</span><span class="nx">$</span><span class="p">{</span><span class="nx">bandName</span><span class="p">}</span> <span class="nx">songs</span> <span class="o">-</span> <span class="nx">Rock</span> <span class="nx">and</span> <span class="nx">Roll</span><span class="err">`</span><span class="p">;</span>
</span><span class='line'>  <span class="p">},</span>
</span><span class='line'><span class="p">});</span>
</span></code></pre></td></tr></table></div></figure>


<h2>Missing dynamic content</h2>

<p>The next thing that did not work was that the songs for a specific band did not
load in FastBoot mode, the list of songs was empty each time.</p>

<p>Adolfo Builes and Jonathan Jackson helped me out by pointing out that songs are
loaded asynchronously. The request to fetch the songs was only fired when the
template rendered each song belonging to the band. FastBoot does not
know when the page is fully rendered and thus relies on the <code>beforeModel</code>,
<code>model</code> and <code>afterModel</code> route hooks having finished their work. When that
happened, the songs were not yet fetched and rendered on the screen yet:</p>

<p><img src="/images/posts/fastboot/songs-missing.png" alt="Songs missing" /></p>

<p>The way to fix this was to block rendering in the <code>afterModel</code> hook, by
returning a promise that fetched the songs:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
<span class='line-number'>9</span>
<span class='line-number'>10</span>
<span class='line-number'>11</span>
<span class='line-number'>12</span>
<span class='line-number'>13</span>
<span class='line-number'>14</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// app/routes/bands/band/songs.js</span>
</span><span class='line'><span class="kr">import</span> <span class="nx">Ember</span> <span class="nx">from</span> <span class="s1">&#39;ember&#39;</span><span class="p">;</span>
</span><span class='line'>
</span><span class='line'><span class="kr">export</span> <span class="k">default</span> <span class="nx">Ember</span><span class="p">.</span><span class="nx">Route</span><span class="p">.</span><span class="nx">extend</span><span class="p">({</span>
</span><span class='line'>  <span class="nx">fastboot</span><span class="o">:</span> <span class="nx">Ember</span><span class="p">.</span><span class="nx">inject</span><span class="p">.</span><span class="nx">service</span><span class="p">(),</span>
</span><span class='line'>
</span><span class='line'>  <span class="nx">afterModel</span><span class="p">()</span> <span class="p">{</span>
</span><span class='line'>    <span class="k">if</span> <span class="p">(</span><span class="k">this</span><span class="p">.</span><span class="nx">get</span><span class="p">(</span><span class="s1">&#39;fastboot.isFastBoot&#39;</span><span class="p">))</span> <span class="p">{</span>
</span><span class='line'>      <span class="kd">let</span> <span class="nx">band</span> <span class="o">=</span> <span class="k">this</span><span class="p">.</span><span class="nx">modelFor</span><span class="p">(</span><span class="s1">&#39;bands.band&#39;</span><span class="p">);</span>
</span><span class='line'>      <span class="k">return</span> <span class="nx">band</span><span class="p">.</span><span class="nx">get</span><span class="p">(</span><span class="s1">&#39;songs&#39;</span><span class="p">);</span>
</span><span class='line'>    <span class="p">}</span>
</span><span class='line'>  <span class="p">},</span>
</span><span class='line'>  <span class="p">(...)</span>
</span><span class='line'><span class="p">});</span>
</span></code></pre></td></tr></table></div></figure>


<p>As you can see, I only pre-fetch the songs in FastBoot mode. In the browser, I
let rendering start earlier, with a &#8220;pop-in&#8221; effect (which can be remedied in
several ways in the browser, too).</p>

<p>The songs now appeared in the FastBoot &#8220;view&#8221; of the app, too:</p>

<p><img src="/images/posts/fastboot/songs-present.png" alt="Songs present" /></p>

<p>You can read more about this in the &#8220;Use Model Hooks to Defer Rendering&#8221; section
of <a href="https://ember-fastboot.com/docs/user-guide">the guide</a>.</p>

<h2>Fastboot-enabled hosting</h2>

<p>It&#8217;s fine to have FastBoot working in development but nobody actually needs
it to work in that environment. It has to work when deployed to a server.</p>

<p>The guide has <a href="https://ember-fastboot.com/docs/deploying">a whole page on deployment</a>, listing several deployment
options, from which I chose Heroku as it seemed the easiest option. And it really was.</p>

<p>All I had to do was to set the buildpack URL from my project:</p>

<pre><code>$ heroku buildpacks:set https://codon-buildpacks.s3.amazonaws.com/buildpacks/heroku/emberjs.tgz -a rarwe-demo
</code></pre>

<p>I then added a <code>static.json</code> file to the root of my project, to disable forcing
https requests, as the domain is not (yet) SSL-supported:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
<span class='line-number'>9</span>
<span class='line-number'>10</span>
<span class='line-number'>11</span>
<span class='line-number'>12</span>
<span class='line-number'>13</span>
<span class='line-number'>14</span>
<span class='line-number'>15</span>
<span class='line-number'>16</span>
<span class='line-number'>17</span>
<span class='line-number'>18</span>
<span class='line-number'>19</span>
<span class='line-number'>20</span>
<span class='line-number'>21</span>
<span class='line-number'>22</span>
<span class='line-number'>23</span>
<span class='line-number'>24</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// static.json</span>
</span><span class='line'><span class="p">{</span>
</span><span class='line'>  <span class="s2">&quot;root&quot;</span><span class="o">:</span> <span class="s2">&quot;dist/&quot;</span><span class="p">,</span>
</span><span class='line'>  <span class="s2">&quot;https_only&quot;</span><span class="o">:</span> <span class="kc">false</span><span class="p">,</span>
</span><span class='line'>  <span class="s2">&quot;clean_urls&quot;</span><span class="o">:</span> <span class="kc">true</span><span class="p">,</span>
</span><span class='line'>  <span class="s2">&quot;routes&quot;</span><span class="o">:</span> <span class="p">{</span>
</span><span class='line'>    <span class="s2">&quot;/**&quot;</span><span class="o">:</span> <span class="s2">&quot;index.html&quot;</span>
</span><span class='line'>  <span class="p">},</span>
</span><span class='line'>  <span class="s2">&quot;headers&quot;</span><span class="o">:</span> <span class="p">{</span>
</span><span class='line'>    <span class="s2">&quot;/**&quot;</span><span class="o">:</span> <span class="p">{</span>
</span><span class='line'>      <span class="s2">&quot;Cache-Control&quot;</span><span class="o">:</span> <span class="s2">&quot;private, no-store, no-cache, must-revalidate, proxy-revalidate&quot;</span><span class="p">,</span>
</span><span class='line'>      <span class="s2">&quot;Pragma&quot;</span><span class="o">:</span> <span class="s2">&quot;no-cache&quot;</span><span class="p">,</span>
</span><span class='line'>      <span class="s2">&quot;Expires&quot;</span><span class="o">:</span> <span class="s2">&quot;Sat, 05 Nov 1955 00:00:00 PST&quot;</span><span class="p">,</span>
</span><span class='line'>      <span class="s2">&quot;Strict-Transport-Security&quot;</span><span class="o">:</span> <span class="s2">&quot;max-age=31536000; includeSubDomains;&quot;</span><span class="p">,</span>
</span><span class='line'>      <span class="s2">&quot;X-Download-Options&quot;</span><span class="o">:</span> <span class="s2">&quot;noopen&quot;</span><span class="p">,</span>
</span><span class='line'>      <span class="s2">&quot;X-Content-Type-Options&quot;</span><span class="o">:</span> <span class="s2">&quot;nosniff&quot;</span><span class="p">,</span>
</span><span class='line'>      <span class="s2">&quot;X-Frame-Options&quot;</span><span class="o">:</span> <span class="s2">&quot;SAMEORIGIN&quot;</span><span class="p">,</span>
</span><span class='line'>      <span class="s2">&quot;X-XSS-Protection&quot;</span><span class="o">:</span> <span class="s2">&quot;1; mode=block&quot;</span>
</span><span class='line'>    <span class="p">},</span>
</span><span class='line'>    <span class="s2">&quot;/assets/**&quot;</span><span class="o">:</span> <span class="p">{</span> <span class="s2">&quot;Cache-Control&quot;</span><span class="o">:</span> <span class="s2">&quot;public, max-age=512000&quot;</span> <span class="p">},</span>
</span><span class='line'>    <span class="s2">&quot;/robots.txt&quot;</span><span class="o">:</span> <span class="p">{</span> <span class="s2">&quot;Cache-Control&quot;</span><span class="o">:</span> <span class="s2">&quot;public, max-age=512000&quot;</span> <span class="p">},</span>
</span><span class='line'>    <span class="s2">&quot;/crossdomain.xml&quot;</span><span class="o">:</span> <span class="p">{</span> <span class="s2">&quot;Cache-Control&quot;</span><span class="o">:</span> <span class="s2">&quot;public, max-age=512000&quot;</span> <span class="p">}</span>
</span><span class='line'>  <span class="p">}</span>
</span><span class='line'><span class="p">}</span>
</span></code></pre></td></tr></table></div></figure>


<p>This step is really only needed to change the default <code>https_only</code> setting. If
you have SSL set up for your domain, you don&#8217;t need the <code>static.json</code> file.</p>

<p>The next time I pushed to the remote set up by Heroku, it just worked, and my
app was now FastBoot enabled. Hooray!</p>

<h2>Acknowledgements and further resources</h2>

<p>I would like to thank <a href="https://twitter.com/abuiles">Adolfo</a> and <a href="https://twitter.com/rondale_sc">Jonathan</a> for their help in pointing
me at <a href="https://emberweekend.com/">Ember Weekend</a>, an Ember app that runs in FastBoot and <a href="https://github.com/ember-weekend/ember-weekend">whose source code is publicly available</a>,
and also for overcoming the above mentioned &#8220;missing dynamic content&#8221; problem.</p>

<p>My app does not use many of Fastboot&#8217;s features. If you&#8217;re looking to see a more
complex use case, check out the <a href="https://github.com/ember-weekend/ember-weekend">Ember Weekend source code</a>.</p>

<p>If you want to learn more about FastBoot&#8217;s architecture and rationale, I
recommend checking out <a href="https://vimeo.com/157688134">Tom Dale&#8217;s great presentation</a> he gave at Global
Ember Meetup.</p>

<p>Finally, the Rock and Roll demo app that this post describes is available on
Github at <a href="https://github.com/balinterdi/rarwe-demo">balinterdi/rarwe-demo</a> and deployed to <a href="http://demo.rockandrollwithemberjs.com">http://demo.rockandrollwithemberjs.com</a>.</p>
</div>
  
  


    </article>
  
  
    <article>
      
  <header>
    
      <h1 class="entry-title"><a href="/2016/10/17/continuous-visual-integration-for-ember-apps.html">Continuous Visual Integration for Ember Apps</a></h1>
    
    
      <p class="meta">
        








  


<time datetime="2016-10-17T19:15:00+02:00" pubdate data-updated="true">Oct 17<span>th</span>, 2016</time>
        
      </p>
    
  </header>


  <div class="entry-content"><p>I recently watched Mike Fotinakis&#8217;s presentation at the San Francisco Ember
meetup, <a href="https://youtu.be/iECnXK9EqA4">Continuous Visual Integration with Ember</a>,
and I&#8217;ve become really enthusiastic about visual diffs, and Percy.</p>

<p>It&#8217;s really worth the time and I highly recommend to watch it. I could say
&#8220;watch it now and then come back&#8221; but it&#8217;s a 50-minute long video while this
post takes 5 minutes to read, so I recommend to do it the other way around: read
this post first and then go and watch the presentation where he goes into more
details on what visual diffs and CI are, how Percy works and answers to
questions from the audience.</p>

<p>Ready? Cool. Start the timer and let&#8217;s go.</p>

<h3>So what is continuous visual integration?</h3>

<p>I will give you the high-level definition and rationale of visual diffs
and continuous visual integration as the post otherwise wouldn&#8217;t make sense.</p>

<p>When we change code, the intangible stuff apps are made of, we risk breaking it.
To prevent this, we write tests that guard against regression (a nice way of
saying breaking stuff) and do code reviews where someone goes over the code
diffs, and potentially after a series of edits, confirms it.</p>

<p>However, that&#8217;s just the code part. There are other ways to break a web
application, a major one among them is for the app to look differently than
before, in an unintended way. The background color of a button might change, a
link could have become hidden, or a css file could no longer be downloaded
which all lead to a degraded visual experience for visitors of the app.</p>

<p>Our (textual) tests could pass with flying colors and yet the users of the app
could be running away screaming from our site. Visual diffs guard against that
scenario by showing a visual diff, what certain scenarios looked before and
after the code changes under test.</p>

<h3>Visual diffs as part of the review process</h3>

<p>The idea is to have screenshots made at certain points in our user flows and
have a review process that approves the changes, just as we do for code.</p>

<p>To automate the process, we integrate the generation of visual diffing in the
automated testing process. This will produce the &#8220;before&#8221; and &#8220;after&#8221;
screenshots that will be used to generate the diffs. Let&#8217;s see how this is done
in practice.</p>

<h3>Making all this a breeze with Percy</h3>

<p>Percy is a visual diffing tool that automates all of this and integrates
smoothly into the Github pull request process. To get started with Percy,
install the Ember addon:</p>

<pre><code>$ ember install ember-percy
</code></pre>

<p>If you use Mirage for your tests, like I do, make sure to define a passthrough
rule for Percy on top of your Mirage config, before any other rules (see
<a href="https://percy.io/docs/clients/javascript/ember">the docs</a>):</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// mirage/config.js</span>
</span><span class='line'><span class="kr">export</span> <span class="k">default</span> <span class="kd">function</span><span class="p">()</span> <span class="p">{</span>
</span><span class='line'>  <span class="k">this</span><span class="p">.</span><span class="nx">passthrough</span><span class="p">(</span><span class="s1">&#39;/_percy/**&#39;</span><span class="p">);</span>
</span><span class='line'>  <span class="p">(...)</span>
</span><span class='line'><span class="p">})</span>
</span></code></pre></td></tr></table></div></figure>


<p><strong>NOTE</strong> Starting from ember-percy version 1.2.4, you no longer need to do the
above as ember-percy doesn&#8217;t use Mirage anymore.</p>

<p>To demo how the development flow changes to accommodate visual diffing, I prepared <a href="https://github.com/balinterdi/rarwe-demo/pull/10">a PR to make a dropdown</a>
in the <a href="https://github.com/balinterdi/rarwe-demo">Rock and Roll with Ember demo</a> nicer.</p>

<p>Before implementing the change, I wrote a test that verifies if the songs for a
particular band are listed correctly:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
<span class='line-number'>9</span>
<span class='line-number'>10</span>
<span class='line-number'>11</span>
<span class='line-number'>12</span>
<span class='line-number'>13</span>
<span class='line-number'>14</span>
<span class='line-number'>15</span>
<span class='line-number'>16</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// tests/acceptance/songs-test.js</span>
</span><span class='line'><span class="kr">import</span> <span class="nx">Ember</span> <span class="nx">from</span> <span class="s1">&#39;ember&#39;</span><span class="p">;</span>
</span><span class='line'><span class="kr">import</span> <span class="p">{</span> <span class="nx">test</span> <span class="p">}</span> <span class="nx">from</span> <span class="s1">&#39;qunit&#39;</span><span class="p">;</span>
</span><span class='line'>
</span><span class='line'><span class="p">(...)</span>
</span><span class='line'>
</span><span class='line'><span class="nx">test</span><span class="p">(</span><span class="s1">&#39;List songs for a band&#39;</span><span class="p">,</span> <span class="kd">function</span><span class="p">(</span><span class="nx">assert</span><span class="p">)</span> <span class="p">{</span>
</span><span class='line'>  <span class="nx">visit</span><span class="p">(</span><span class="s1">&#39;/bands&#39;</span><span class="p">);</span>
</span><span class='line'>  <span class="nx">click</span><span class="p">(</span><span class="s1">&#39;a:contains(&quot;Tool&quot;)&#39;</span><span class="p">);</span>
</span><span class='line'>  <span class="nx">percySnapshot</span><span class="p">(</span><span class="s1">&#39;list-songs-for-band&#39;</span><span class="p">);</span>
</span><span class='line'>
</span><span class='line'>  <span class="nx">andThen</span><span class="p">(</span><span class="kd">function</span><span class="p">()</span> <span class="p">{</span>
</span><span class='line'>    <span class="nx">assert</span><span class="p">.</span><span class="nx">equal</span><span class="p">(</span><span class="nx">Ember</span><span class="p">.</span><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;.song&#39;</span><span class="p">).</span><span class="nx">length</span><span class="p">,</span> <span class="mi">3</span><span class="p">,</span> <span class="s2">&quot;All songs for the selected band are displayed&quot;</span><span class="p">);</span>
</span><span class='line'>    <span class="nx">assert</span><span class="p">.</span><span class="nx">equal</span><span class="p">(</span><span class="nx">Ember</span><span class="p">.</span><span class="nx">$</span><span class="p">(</span><span class="s1">&#39;.song:contains(&quot;46 &amp; 2&quot;)&#39;</span><span class="p">).</span><span class="nx">length</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="s2">&quot;The first song is displayed&quot;</span><span class="p">);</span>
</span><span class='line'>  <span class="p">});</span>
</span><span class='line'><span class="p">});</span>
</span></code></pre></td></tr></table></div></figure>


<p>The thing to note here is <code>percySnapshot</code>. If Percy is set up in the environment
where the test runs, it generates a screenshot identified by the name we pass it
(or auto-generates one). To set up Percy, the <code>PERCY_TOKEN</code> and <code>PERCY_PROJECT</code>
env vars need to be set in the CI tool of your choice. <a href="https://percy.io/docs">The Percy
docs</a> explain how.</p>

<p>Once we have a percySnapshot, the next time we push and our CI builds the
project, Percy will have a new snapshot for us:</p>

<p><img src="/images/posts/visual-ci-with-percy/percy-first-screenshot.png" alt="First screenshot - No diff yet" /></p>

<p>We can now implement our feature on a branch and create a pull request for it on
Github. As you can see on the following screenshot, approving the visual diffs
is now part of the flow:</p>

<p><img src="/images/posts/visual-ci-with-percy/github-pr-before-percy-approval.png" alt="Github before Percy approval" /></p>

<p>Clicking &#8220;Details&#8221; takes us to the visual diffs where we must explicilty approve
the changes:</p>

<p><img src="/images/posts/visual-ci-with-percy/percy-visual-diff.png" alt="Percy visual diffs" /></p>

<p>Once the visual diffs are approved, the PR is all green and we can lean back in
our chairs and merge it, safe in the knowledge we did not visually break the
app.</p>

<p><img src="/images/posts/visual-ci-with-percy/github-pr-after-percy-approval.png" alt="Github after Percy approval" /></p>

<p>Just as with &#8220;normal&#8221; tests, the more snapshots we have, the higher the chance
we did not introduce any regressions with our latest changes. Mike recommends a
&#8220;breadth first&#8221; approach, making screenshots from tests that verify different
scenarios instead of a &#8220;depth first&#8221; approach, creating several screenshots for
the same scenario.</p>

<h3>Closing words</h3>

<p>I&#8217;m all sold on visual diffing and I think there is tremendous value in securing
our apps this way.</p>

<p>I encourage you to <a href="https://youtu.be/iECnXK9EqA4">watch Mike&#8217;s presentation</a>
and <a href="https://percy.io/">sign up for Percy</a> to become a better steward of your applications.</p>
</div>
  
  


    </article>
  
  
    <article>
      
  <header>
    
      <h1 class="entry-title"><a href="/2016/10/05/refactoring-promise-patterns.html">Refactoring Promise Patterns</a></h1>
    
    
      <p class="meta">
        








  


<time datetime="2016-10-05T09:22:00+02:00" pubdate data-updated="true">Oct 5<span>th</span>, 2016</time>
        
      </p>
    
  </header>


  <div class="entry-content"><p>I&#8217;m sure you have written a lot of code that looks something like this:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
<span class='line-number'>9</span>
<span class='line-number'>10</span>
<span class='line-number'>11</span>
<span class='line-number'>12</span>
<span class='line-number'>13</span>
<span class='line-number'>14</span>
<span class='line-number'>15</span>
<span class='line-number'>16</span>
<span class='line-number'>17</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// app/controllers/band.js</span>
</span><span class='line'><span class="nx">actions</span><span class="o">:</span> <span class="p">{</span>
</span><span class='line'>  <span class="nx">save</span><span class="p">()</span> <span class="p">{</span>
</span><span class='line'>    <span class="kd">let</span> <span class="nx">band</span> <span class="o">=</span> <span class="k">this</span><span class="p">.</span><span class="nx">get</span><span class="p">(</span><span class="s1">&#39;model&#39;</span><span class="p">);</span>
</span><span class='line'>    <span class="k">this</span><span class="p">.</span><span class="nx">set</span><span class="p">(</span><span class="s1">&#39;isLoading&#39;</span><span class="p">,</span> <span class="kc">true</span><span class="p">);</span>
</span><span class='line'>    <span class="k">return</span> <span class="nx">band</span><span class="p">.</span><span class="nx">save</span><span class="p">()</span>
</span><span class='line'>      <span class="p">.</span><span class="nx">then</span><span class="p">((</span><span class="nx">result</span><span class="p">)</span> <span class="o">=&gt;</span> <span class="p">{</span>
</span><span class='line'>        <span class="k">this</span><span class="p">.</span><span class="nx">set</span><span class="p">(</span><span class="s1">&#39;successMessage&#39;</span><span class="p">,</span> <span class="s1">&#39;Band has been saved.&#39;</span><span class="p">);</span>
</span><span class='line'>      <span class="p">})</span>
</span><span class='line'>      <span class="p">.</span><span class="k">catch</span><span class="p">(()</span> <span class="o">=&gt;</span> <span class="p">{</span>
</span><span class='line'>        <span class="k">this</span><span class="p">.</span><span class="nx">set</span><span class="p">(</span><span class="s1">&#39;error&#39;</span><span class="p">,</span> <span class="s1">&#39;Band is too unruly to be saved.&#39;</span><span class="p">);</span>
</span><span class='line'>      <span class="p">})</span>
</span><span class='line'>      <span class="p">.</span><span class="k">finally</span><span class="p">(()</span> <span class="o">=&gt;</span> <span class="p">{</span>
</span><span class='line'>        <span class="k">this</span><span class="p">.</span><span class="nx">set</span><span class="p">(</span><span class="s1">&#39;isLoading&#39;</span><span class="p">,</span> <span class="kc">false</span><span class="p">);</span>
</span><span class='line'>      <span class="p">});</span>
</span><span class='line'>  <span class="p">}</span>
</span><span class='line'><span class="p">}</span>
</span></code></pre></td></tr></table></div></figure>


<p>Setting back <code>isLoading</code> to false is conveniently placed in a <code>finally</code> handler
so that it happens both if the promise resolves successfully (the band is
saved) and if it is rejected (there is an error during the save).</p>

<p>The <code>isLoading</code> is then used in the corresponding template to show a spinner
and/or disable the save button while the save is in flight:</p>

<div>
  <pre><code class='html'>// app/templates/band.hbs
&lt;button type=&quot;button&quot; onclick=(action &quot;save&quot;) disabled={{isLoading}}&gt;Save band&lt;/button&gt;</code></pre>
</div>


<p>I know I have written this hundreds of times by now and it has increasingly
disturbed me that setting and unsetting the loading flag is boilerplate code,
something that could be refactored.</p>

<p>One nice thing about promises is that they are easy to compose. Here is how
we could define a function that adds the boilerplatey parts:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
<span class='line-number'>9</span>
<span class='line-number'>10</span>
<span class='line-number'>11</span>
<span class='line-number'>12</span>
<span class='line-number'>13</span>
<span class='line-number'>14</span>
<span class='line-number'>15</span>
<span class='line-number'>16</span>
<span class='line-number'>17</span>
<span class='line-number'>18</span>
<span class='line-number'>19</span>
<span class='line-number'>20</span>
<span class='line-number'>21</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// app/controllers/band.js</span>
</span><span class='line'>
</span><span class='line'><span class="kd">function</span> <span class="nx">saveWithLoadingFlag</span><span class="p">(</span><span class="nx">operation</span><span class="p">,</span> <span class="nx">loadingProperty</span><span class="p">)</span> <span class="p">{</span>
</span><span class='line'>  <span class="k">this</span><span class="p">.</span><span class="nx">set</span><span class="p">(</span><span class="nx">loadingProperty</span><span class="p">,</span> <span class="kc">true</span><span class="p">);</span>
</span><span class='line'>  <span class="k">return</span> <span class="nx">operation</span><span class="p">.</span><span class="k">finally</span><span class="p">(()</span> <span class="o">=&gt;</span> <span class="p">{</span>
</span><span class='line'>    <span class="k">this</span><span class="p">.</span><span class="nx">set</span><span class="p">(</span><span class="nx">loadingProperty</span><span class="p">,</span> <span class="kc">false</span><span class="p">);</span>
</span><span class='line'>  <span class="p">});</span>
</span><span class='line'><span class="p">}</span>
</span><span class='line'>
</span><span class='line'><span class="nx">actions</span><span class="o">:</span> <span class="p">{</span>
</span><span class='line'>  <span class="nx">save</span><span class="p">()</span> <span class="p">{</span>
</span><span class='line'>    <span class="kd">let</span> <span class="nx">band</span> <span class="o">=</span> <span class="k">this</span><span class="p">.</span><span class="nx">get</span><span class="p">(</span><span class="s1">&#39;model&#39;</span><span class="p">);</span>
</span><span class='line'>    <span class="k">return</span> <span class="nx">saveWithLoadingFlag</span><span class="p">.</span><span class="nx">call</span><span class="p">(</span><span class="k">this</span><span class="p">,</span> <span class="nx">band</span><span class="p">.</span><span class="nx">save</span><span class="p">(),</span> <span class="s1">&#39;isLoading&#39;</span><span class="p">)</span>
</span><span class='line'>      <span class="p">.</span><span class="nx">then</span><span class="p">((</span><span class="nx">result</span><span class="p">)</span> <span class="o">=&gt;</span> <span class="p">{</span>
</span><span class='line'>        <span class="k">this</span><span class="p">.</span><span class="nx">set</span><span class="p">(</span><span class="s1">&#39;successMessage&#39;</span><span class="p">,</span> <span class="s1">&#39;Band has been saved.&#39;</span><span class="p">);</span>
</span><span class='line'>      <span class="p">})</span>
</span><span class='line'>      <span class="p">.</span><span class="k">catch</span><span class="p">(()</span> <span class="o">=&gt;</span> <span class="p">{</span>
</span><span class='line'>        <span class="k">this</span><span class="p">.</span><span class="nx">set</span><span class="p">(</span><span class="s1">&#39;error&#39;</span><span class="p">,</span> <span class="s1">&#39;Band is too unruly to be saved.&#39;</span><span class="p">);</span>
</span><span class='line'>      <span class="p">});</span>
</span><span class='line'>  <span class="p">}</span>
</span><span class='line'><span class="p">}</span>
</span></code></pre></td></tr></table></div></figure>


<p>You might go a tiny step further and use a default value for the loading flag:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
<span class='line-number'>9</span>
<span class='line-number'>10</span>
<span class='line-number'>11</span>
<span class='line-number'>12</span>
<span class='line-number'>13</span>
<span class='line-number'>14</span>
<span class='line-number'>15</span>
<span class='line-number'>16</span>
<span class='line-number'>17</span>
<span class='line-number'>18</span>
<span class='line-number'>19</span>
<span class='line-number'>20</span>
<span class='line-number'>21</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// app/controllers/band.js</span>
</span><span class='line'>
</span><span class='line'><span class="kd">function</span> <span class="nx">saveWithLoadingFlag</span><span class="p">(</span><span class="nx">operation</span><span class="p">,</span> <span class="nx">loadingProperty</span><span class="o">=</span><span class="s1">&#39;isLoading&#39;</span><span class="p">)</span> <span class="p">{</span>
</span><span class='line'>  <span class="k">this</span><span class="p">.</span><span class="nx">set</span><span class="p">(</span><span class="nx">loadingProperty</span><span class="p">,</span> <span class="kc">true</span><span class="p">);</span>
</span><span class='line'>  <span class="k">return</span> <span class="nx">operation</span><span class="p">.</span><span class="k">finally</span><span class="p">(()</span> <span class="o">=&gt;</span> <span class="p">{</span>
</span><span class='line'>    <span class="k">this</span><span class="p">.</span><span class="nx">set</span><span class="p">(</span><span class="nx">loadingProperty</span><span class="p">,</span> <span class="kc">false</span><span class="p">);</span>
</span><span class='line'>  <span class="p">});</span>
</span><span class='line'><span class="p">}</span>
</span><span class='line'>
</span><span class='line'><span class="nx">actions</span><span class="o">:</span> <span class="p">{</span>
</span><span class='line'>  <span class="nx">save</span><span class="p">()</span> <span class="p">{</span>
</span><span class='line'>    <span class="kd">let</span> <span class="nx">band</span> <span class="o">=</span> <span class="k">this</span><span class="p">.</span><span class="nx">get</span><span class="p">(</span><span class="s1">&#39;model&#39;</span><span class="p">);</span>
</span><span class='line'>    <span class="k">return</span> <span class="nx">saveWithLoadingFlag</span><span class="p">.</span><span class="nx">call</span><span class="p">(</span><span class="k">this</span><span class="p">,</span> <span class="nx">band</span><span class="p">.</span><span class="nx">save</span><span class="p">())</span>
</span><span class='line'>      <span class="p">.</span><span class="nx">then</span><span class="p">((</span><span class="nx">result</span><span class="p">)</span> <span class="o">=&gt;</span> <span class="p">{</span>
</span><span class='line'>        <span class="k">this</span><span class="p">.</span><span class="nx">set</span><span class="p">(</span><span class="s1">&#39;successMessage&#39;</span><span class="p">,</span> <span class="s1">&#39;Band has been saved.&#39;</span><span class="p">);</span>
</span><span class='line'>      <span class="p">})</span>
</span><span class='line'>      <span class="p">.</span><span class="k">catch</span><span class="p">(()</span> <span class="o">=&gt;</span> <span class="p">{</span>
</span><span class='line'>        <span class="k">this</span><span class="p">.</span><span class="nx">set</span><span class="p">(</span><span class="s1">&#39;error&#39;</span><span class="p">,</span> <span class="s1">&#39;Band is too unruly to be saved.&#39;</span><span class="p">);</span>
</span><span class='line'>      <span class="p">});</span>
</span><span class='line'>  <span class="p">}</span>
</span><span class='line'><span class="p">}</span>
</span></code></pre></td></tr></table></div></figure>


<p>Since <code>saveWithLoadingFlag</code> returns a promise, we can add our own handlers to it,
including other <code>finally</code> handlers.</p>

<p>You can find a working example <a href="https://ember-twiddle.com/54db7a0a708afe3cf59bfa634f1c3a06?numColumns=2&amp;openFiles=controllers.application.js%2Ctemplates.application.hbs">here</a>,
where you can play around with it.</p>
</div>
  
  


    </article>
  
  
    <article>
      
  <header>
    
      <h1 class="entry-title"><a href="/2016/09/30/rock-and-roll-with-ember-dot-js-2-dot-8-is-released.html">Rock and Roll With Ember.js 2.8 Is Released</a></h1>
    
    
      <p class="meta">
        








  


<time datetime="2016-09-30T21:22:00+02:00" pubdate data-updated="true">Sep 30<span>th</span>, 2016</time>
        
      </p>
    
  </header>


  <div class="entry-content"><p>Yesterday I published an updated version of the <a href="http://rockandrollwithemberjs.com">Rock and Roll with Ember.js book</a>.
The app now runs on 2.8 (Ember CLI, Ember and Ember Data) and, as usual, there are a few other changes.</p>

<p>The biggest of these was updating the Deployment chapter.
<a href="https://www.pagefronthq.com/">PageFront</a> seems defunct so I replaced it with
<a href="https://surge.sh">Surge</a>. Above that I also updated the section on deploying
(to S3) with ember-cli-deploy as things have changed quite a bit.</p>

<p>You can check out the full list of changes <a href="https://github.com/balinterdi/rarwe-issues/milestone/16?closed=1">here</a>
or the book itself <a href="http://rockandrollwithemberjs.com">here.</a></p>

<hr />

<p><strong>PSA</strong>: Ember 2.9 will bring the long-awaited new rendering engine, <a href="http://emberjs.com/blog/2016/09/08/ember-2-8-and-2-9-beta-released.html">Glimmer 2</a>!</p>

<p>I already went ahead and updated the app to 2.9.beta to give it a whirl.</p>

<p>The results were pretty jaw-dropping:</p>

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">My app.js size after upgrading the Rock and Roll <a href="https://twitter.com/hashtag/Ember?src=hash">#Ember</a> app to use Glimmer 2 (so from 2.8.1 to 2.9.0-beta.2) went from 233K to 79K 😮</p>&mdash; Balint Erdi (@baaz) <a href="https://twitter.com/baaz/status/776872893577822208">September 16, 2016</a></blockquote>


<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>


<p>I encourage you to <a href="http://emberjs.com/builds/#/beta">try switching your app to Glimmer 2</a> and see if you encounter any problems.</p>
</div>
  
  


    </article>
  
  
    <article>
      
  <header>
    
      <h1 class="entry-title"><a href="/2016/08/24/rock-and-roll-with-ember-dot-js-2-dot-7-is-released.html">Rock and Roll With Ember.js 2.7 Is Released</a></h1>
    
    
      <p class="meta">
        








  


<time datetime="2016-08-24T20:50:00+02:00" pubdate data-updated="true">Aug 24<span>th</span>, 2016</time>
        
      </p>
    
  </header>


  <div class="entry-content"><p>Today marks the release of the <a href="http://rockandrollwithemberjs.com">Rock and Roll with Ember.js book</a>,
version 2.7, which means the app built in the book now runs on Ember 2.7 (and uses Ember CLI 2.7).</p>

<p>There is a number of other small fixes, the full list of which you can see
<a href="https://github.com/balinterdi/rarwe-issues/milestone/15?closed=1">here</a>.</p>
</div>
  
  


    </article>
  
  
    <article>
      
  <header>
    
      <h1 class="entry-title"><a href="/2016/08/11/using-dependency-injection-to-write-better-tests.html">Using Dependency Injection to Write Better Tests</a></h1>
    
    
      <p class="meta">
        








  


<time datetime="2016-08-11T09:13:00+02:00" pubdate data-updated="true">Aug 11<span>th</span>, 2016</time>
        
      </p>
    
  </header>


  <div class="entry-content"><p>Testing is given much emphasis in the Ember.js community, and testing tools have
showed steady progress to reduce the cost of writing tests of all types.</p>

<p>Lauren Tan wrote <a href="https://emberway.io/component-dependency-injection-in-ember-js-a46a39a5d30a#.45qfbv52x">a great post</a>
about how Dependency Injection (DI) can be used to decouple a parent component
from the internals of its child components. One of the gains of doing so is that
the parent component becomes more focused and thus easier to test.</p>

<p>In this post, I&#8217;m doing something similar, although much simpler. I want to show
you how to use DI in a simple helper function to make it easier to test.</p>

<h3>Just your ordinary, run-of-the-mill function</h3>

<p>Although the helper is an Ember (template) helper, the concepts could be very
easily transferred to other frameworks, libraries and even languages.</p>

<p>I recently had to modify a <code>normalizeText</code> helper function that looked
like this:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// tests/unit/helpers/normalize-text-test.js</span>
</span><span class='line'><span class="kr">import</span> <span class="nx">Ember</span> <span class="nx">from</span> <span class="s1">&#39;ember&#39;</span><span class="p">;</span>
</span><span class='line'>
</span><span class='line'><span class="kr">export</span> <span class="kd">function</span> <span class="nx">normalizeText</span><span class="p">([</span><span class="nx">text</span><span class="p">])</span> <span class="p">{</span>
</span><span class='line'>  <span class="kd">let</span> <span class="nx">normalizedEOLs</span> <span class="o">=</span> <span class="nx">text</span><span class="p">.</span><span class="nx">trim</span><span class="p">().</span><span class="nx">replace</span><span class="p">(</span><span class="sr">/(?:\r\n|\r|\n)/g</span><span class="p">,</span> <span class="s1">&#39;&lt;/p&gt;&lt;p&gt;&#39;</span><span class="p">);</span>
</span><span class='line'>  <span class="kd">let</span> <span class="nx">noEmptyParagraphs</span> <span class="o">=</span> <span class="nx">normalizedEOLs</span><span class="p">.</span><span class="nx">replace</span><span class="p">(</span><span class="sr">/(&lt;p&gt;&lt;\/p&gt;)/g</span><span class="p">,</span> <span class="s1">&#39;&#39;</span><span class="p">);</span>
</span><span class='line'>  <span class="k">return</span> <span class="nx">Ember</span><span class="p">.</span><span class="nb">String</span><span class="p">.</span><span class="nx">htmlSafe</span><span class="p">(</span><span class="s2">&quot;&lt;p&gt;&quot;</span> <span class="o">+</span> <span class="nx">noEmptyParagraphs</span> <span class="o">+</span> <span class="s2">&quot;&lt;/p&gt;&quot;</span><span class="p">);</span>
</span><span class='line'><span class="p">}</span>
</span></code></pre></td></tr></table></div></figure>


<p>(I realize the above code does not handle a text value of <code>undefined</code> or <code>null</code>.
The real code does but I want to keep the code examples to the minimum necessary
to get my point across.)</p>

<h3>Comparing objects to objects</h3>

<p>Its test was quite simple and straightforward:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
<span class='line-number'>9</span>
<span class='line-number'>10</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// tests/unit/helpers/normalize-text-test.js</span>
</span><span class='line'><span class="kr">import</span> <span class="p">{</span> <span class="nx">normalizeText</span> <span class="p">}</span> <span class="nx">from</span> <span class="s1">&#39;../../../helpers/normalize-text&#39;</span><span class="p">;</span>
</span><span class='line'><span class="kr">import</span> <span class="p">{</span> <span class="nx">module</span><span class="p">,</span> <span class="nx">test</span> <span class="p">}</span> <span class="nx">from</span> <span class="s1">&#39;qunit&#39;</span><span class="p">;</span>
</span><span class='line'>
</span><span class='line'><span class="nx">module</span><span class="p">(</span><span class="s1">&#39;Unit | Helper | normalize-text&#39;</span><span class="p">);</span>
</span><span class='line'>
</span><span class='line'><span class="nx">test</span><span class="p">(</span><span class="s1">&#39;it works&#39;</span><span class="p">,</span> <span class="kd">function</span><span class="p">(</span><span class="nx">assert</span><span class="p">)</span> <span class="p">{</span>
</span><span class='line'>  <span class="kd">let</span> <span class="nx">normalizedText</span> <span class="o">=</span> <span class="nx">normalizeText</span><span class="p">([</span><span class="s2">&quot;The brown fox\r\njumped over the quick rabbit.\n&quot;</span><span class="p">]);</span>
</span><span class='line'>  <span class="nx">assert</span><span class="p">.</span><span class="nx">equal</span><span class="p">(</span><span class="nx">normalizedText</span><span class="p">,</span> <span class="s2">&quot;&lt;p&gt;The brown fox&lt;/p&gt;&lt;p&gt;jumped over the quick rabbit.&lt;/p&gt;&quot;</span><span class="p">);</span>
</span><span class='line'><span class="p">});</span>
</span></code></pre></td></tr></table></div></figure>


<p>The problem with that test is that we compare two <code>Handlebars.SafeString</code>
instances (returned by <code>Ember.String.htmlSafe</code>) which are different even if
the strings they wrap, their value, is the same:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="kd">let</span> <span class="nx">s1</span> <span class="o">=</span> <span class="nx">Ember</span><span class="p">.</span><span class="nb">String</span><span class="p">.</span><span class="nx">htmlSafe</span><span class="p">(</span><span class="s2">&quot;sid transit gloria mundi&quot;</span><span class="p">);</span>
</span><span class='line'><span class="kd">let</span> <span class="nx">s2</span> <span class="o">=</span> <span class="nx">Ember</span><span class="p">.</span><span class="nb">String</span><span class="p">.</span><span class="nx">htmlSafe</span><span class="p">(</span><span class="s2">&quot;sid transit gloria mundi&quot;</span><span class="p">);</span>
</span><span class='line'><span class="nx">s1</span> <span class="o">===</span> <span class="nx">s2</span> <span class="c1">// =&gt; false</span>
</span></code></pre></td></tr></table></div></figure>


<p>We&#8217;re, however, interested in the equality of the strings. If only there was a
way to replace that pesky <code>Ember.String.htmlSafe</code> call from the call site&#8230;</p>

<h3>DI to the rescue</h3>

<p>This is exactly what Dependency Injection can help us do. Instead of hard-coding
that &#8220;sanitizer&#8221; function dependency, the function could take it as a parameter
so that callers could inject it. Usually DI examples use (and thus inject) class
names or object instances but it is important to realize that the injected param
could be very &#8220;primitive&#8221;, like a simple function.</p>

<p>So here is how I rewrote the function:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
<span class='line-number'>9</span>
<span class='line-number'>10</span>
<span class='line-number'>11</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// app/helpers/normalize-text.js</span>
</span><span class='line'><span class="kr">import</span> <span class="nx">Ember</span> <span class="nx">from</span> <span class="s1">&#39;ember&#39;</span><span class="p">;</span>
</span><span class='line'>
</span><span class='line'><span class="kr">export</span> <span class="kd">function</span> <span class="nx">normalizeText</span><span class="p">([</span><span class="nx">text</span><span class="p">],</span> <span class="nx">params</span><span class="o">=</span><span class="p">{})</span> <span class="p">{</span>
</span><span class='line'>  <span class="kd">let</span> <span class="p">{</span> <span class="nx">sanitizer</span><span class="o">=</span><span class="nx">Ember</span><span class="p">.</span><span class="nb">String</span><span class="p">.</span><span class="nx">htmlSafe</span> <span class="p">}</span> <span class="o">=</span> <span class="nx">params</span><span class="p">;</span>
</span><span class='line'>  <span class="kd">let</span> <span class="nx">normalizedEOLs</span> <span class="o">=</span> <span class="nx">text</span><span class="p">.</span><span class="nx">trim</span><span class="p">().</span><span class="nx">replace</span><span class="p">(</span><span class="sr">/(?:\r\n|\r|\n)/g</span><span class="p">,</span> <span class="s1">&#39;&lt;/p&gt;&lt;p&gt;&#39;</span><span class="p">);</span>
</span><span class='line'>  <span class="kd">let</span> <span class="nx">noEmptyParagraphs</span> <span class="o">=</span> <span class="nx">normalizedEOLs</span><span class="p">.</span><span class="nx">replace</span><span class="p">(</span><span class="sr">/(&lt;p&gt;&lt;\/p&gt;)/g</span><span class="p">,</span> <span class="s1">&#39;&#39;</span><span class="p">);</span>
</span><span class='line'>  <span class="k">return</span> <span class="nx">sanitizer</span><span class="p">(</span><span class="s2">&quot;&lt;p&gt;&quot;</span> <span class="o">+</span> <span class="nx">noEmptyParagraphs</span> <span class="o">+</span> <span class="s2">&quot;&lt;/p&gt;&quot;</span><span class="p">);</span>
</span><span class='line'><span class="p">}</span>
</span><span class='line'>
</span><span class='line'><span class="kr">export</span> <span class="k">default</span> <span class="nx">Ember</span><span class="p">.</span><span class="nx">Helper</span><span class="p">.</span><span class="nx">helper</span><span class="p">(</span><span class="nx">normalizeText</span><span class="p">);</span>
</span></code></pre></td></tr></table></div></figure>


<p>Notice how easy ES2015 destructuring makes the assignment of the sanitizer
function:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="kd">let</span> <span class="p">{</span> <span class="nx">sanitizer</span><span class="o">=</span><span class="nx">Ember</span><span class="p">.</span><span class="nb">String</span><span class="p">.</span><span class="nx">htmlSafe</span> <span class="p">}</span> <span class="o">=</span> <span class="nx">params</span><span class="p">;</span>
</span></code></pre></td></tr></table></div></figure>


<p>If no <code>sanitizer</code> key was present in <code>params</code>, then it will have a value of
<code>Ember.String.htmlSafe</code>, the default behavior.</p>

<p>The call from the test can now override the default behavior of sending the
normalized text through <code>Ember.String.htmlSafe</code> by passing in a &#8220;no-op&#8221;
sanitizer function:</p>

<figure class='code'><figcaption><span></span></figcaption><div class="highlight"><table><tr><td class="gutter"><pre class="line-numbers"><span class='line-number'>1</span>
<span class='line-number'>2</span>
<span class='line-number'>3</span>
<span class='line-number'>4</span>
<span class='line-number'>5</span>
<span class='line-number'>6</span>
<span class='line-number'>7</span>
<span class='line-number'>8</span>
<span class='line-number'>9</span>
<span class='line-number'>10</span>
<span class='line-number'>11</span>
<span class='line-number'>12</span>
<span class='line-number'>13</span>
<span class='line-number'>14</span>
</pre></td><td class='code'><pre><code class='js'><span class='line'><span class="c1">// tests/unit/helpers/normalize-text-test.js</span>
</span><span class='line'><span class="kr">import</span> <span class="p">{</span> <span class="nx">normalizeText</span> <span class="p">}</span> <span class="nx">from</span> <span class="s1">&#39;../../../helpers/normalize-text&#39;</span><span class="p">;</span>
</span><span class='line'><span class="kr">import</span> <span class="p">{</span> <span class="nx">module</span><span class="p">,</span> <span class="nx">test</span> <span class="p">}</span> <span class="nx">from</span> <span class="s1">&#39;qunit&#39;</span><span class="p">;</span>
</span><span class='line'>
</span><span class='line'><span class="kd">function</span> <span class="nx">leaveAsIs</span><span class="p">(</span><span class="nx">text</span><span class="p">)</span> <span class="p">{</span>
</span><span class='line'>  <span class="k">return</span> <span class="nx">text</span><span class="p">;</span>
</span><span class='line'><span class="p">}</span>
</span><span class='line'>
</span><span class='line'><span class="nx">module</span><span class="p">(</span><span class="s1">&#39;Unit | Helper | normalize-text&#39;</span><span class="p">);</span>
</span><span class='line'>
</span><span class='line'><span class="nx">test</span><span class="p">(</span><span class="s1">&#39;it works&#39;</span><span class="p">,</span> <span class="kd">function</span><span class="p">(</span><span class="nx">assert</span><span class="p">)</span> <span class="p">{</span>
</span><span class='line'>  <span class="kd">let</span> <span class="nx">normalizedText</span> <span class="o">=</span> <span class="nx">normalizeText</span><span class="p">([</span><span class="s2">&quot;The brown fox\r\njumped over the quick rabbit.\n&quot;</span><span class="p">],</span> <span class="p">{</span> <span class="nx">sanitizer</span><span class="o">:</span> <span class="nx">leaveAsIs</span> <span class="p">});</span>
</span><span class='line'>  <span class="nx">assert</span><span class="p">.</span><span class="nx">equal</span><span class="p">(</span><span class="nx">normalizedText</span><span class="p">,</span> <span class="s2">&quot;&lt;p&gt;The brown fox&lt;/p&gt;&lt;p&gt;jumped over the quick rabbit.&lt;/p&gt;&quot;</span><span class="p">);</span>
</span><span class='line'><span class="p">});</span>
</span></code></pre></td></tr></table></div></figure>


<p>We&#8217;re now comparing simple strings which place nicely with <code>assert.equal</code> (with
<code>===</code>), and our test now passes.</p>

<h3>Non-testing benefits</h3>

<p>Code modifications introduced for the sake of testing usually also improve the
non-testing aspect. Here, we made it possible to pass any function before we
return the normalized text. We could, for example, use this to replace the <code>&lt;p&gt;</code>
tags with <code>&lt;span&gt;</code>s, if we so wish.</p>
</div>
  
  


    </article>
  
  
    <article>
      
  <header>
    
      <h1 class="entry-title"><a href="/2016/07/07/rock-and-roll-with-ember-dot-js-2-dot-6-is-released.html">Rock and Roll With Ember.js 2.6 Is Released</a></h1>
    
    
      <p class="meta">
        








  


<time datetime="2016-07-07T22:21:00+02:00" pubdate data-updated="true">Jul 7<span>th</span>, 2016</time>
        
      </p>
    
  </header>


  <div class="entry-content"><p>With some delay, but I just sent an update to all of the Rock and Roll with
Ember.js customers. The book brings the app in sync with Ember, Ember Data and
Ember CLI 2.6. Among a few other improvments it:</p>

<ul>
<li>Makes sure the new Ember welcome page is removed before generating the
application template: <a href="https://github.com/balinterdi/rarwe-issues/issues/196">#196</a></li>
<li>Adds a version string to the book&#8217;s title and also in the Preface so that the
reader knows whether they are reading the latest version: <a href="https://github.com/balinterdi/rarwe-issues/issues/174">#174</a></li>
</ul>


<p>The list of all accomplished things can be seen <a href="https://github.com/balinterdi/rarwe-issues/milestone/14?closed=1">here</a></p>
</div>
  
  


    </article>
  
  <div class="pagination">
    
      <a class="prev" href="/blog/page/2/">&larr; Older</a>
    
    <a href="/blog/archives">Blog Archives</a>
    
  </div>
</div>
<aside class="sidebar">
  
    <section>
  <h1>Master Authentication in Ember</h1>
  <div>
    <a href="https://www.embermeetup.com/rock-and-roll-ember/?utm_source=balinterdi.com&utm_medium=sidebar&utm_campaign=rarwe-auth-workshop" style="text-decoration:none">
      <img src="/images/RARE-Gabby.svg" alt="GEM Authentication workshop" title="GEM Authentication workshop" />
    </a>
  </div>
</section>
<section>
  <h1>Learn Ember from the most up-to-date book</h1>
  <div>
    <a href="http://rockandrollwithemberjs.com/?utm_source=my-blog&utm_medium=sidebar&utm_campaign=rarwe-book" style="text-decoration:none">
      <img src="/images/rarwe-book.jpg" alt="Rock and Roll with Ember.js" title="Rock and Roll with Ember.js" />
    </a>
  </div>
</section>
<section>
  <h1>Contact</h1>
  <div style="margin-top:10px">
    I do Ember.js consulting. If you have a project that needs help, <a href="mailto:balint@balinterdi.com">contact me</a> and let&#8217;s start talking.
  </div>
</section>

<section>
  <h1>Recent Posts</h1>
  <ul id="recent_posts">
    
      <li class="post">
        <a href="/2016/11/29/two-way-symmetric-relationships-in-ember-with-jsonapi-part-2.html">Two-way symmetric relationships in Ember with JSON API - Part 2</a>
      </li>
    
      <li class="post">
        <a href="/2016/11/17/two-way-symmetric-relationships-in-ember-with-jsonapi-part-1.html">Two-way symmetric relationships in Ember with JSON API - Part 1</a>
      </li>
    
      <li class="post">
        <a href="/2016/11/16/rock-and-roll-with-ember-dot-js-2-dot-9-is-released.html">Rock and Roll with Ember.js 2.9 is released</a>
      </li>
    
      <li class="post">
        <a href="/2016/11/11/enable-fastboot-in-your-ember-app.html">Enable FastBoot in your Ember app</a>
      </li>
    
      <li class="post">
        <a href="/2016/10/17/continuous-visual-integration-for-ember-apps.html">Continuous Visual Integration for Ember apps</a>
      </li>
    
  </ul>
</section>
<section class="codementor">
  <script data-codementor="balint" data-style="button" data-theme="dark" src="https://cdn.codementor.io/d/badge.js"></script>
</section>


<section>
  
  <script src="/javascripts/twitter.js" type="text/javascript"> </script>
  
    <a href="http://twitter.com/baaz" class="twitter-follow-button" data-show-count="false">Follow @baaz</a>
  
</section>





  
</aside>

    </div>
  </div>
  <footer role="contentinfo"><p>
  Copyright &copy; 2017 - Balint Erdi -
  <span class="credit">Powered by <a href="http://octopress.org">Octopress</a></span>
</p>

</footer>
  

<script type="text/javascript">
      var disqus_shortname = 'codigoergosum';
      
        
        var disqus_script = 'count.js';
      
    (function () {
      var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
      dsq.src = '//' + disqus_shortname + '.disqus.com/' + disqus_script;
      (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    }());
</script>





  <script type="text/javascript">
    (function() {
      var script = document.createElement('script'); script.type = 'text/javascript'; script.async = true;
      script.src = 'https://apis.google.com/js/plusone.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(script, s);
    })();
  </script>



  <script type="text/javascript">
    (function(){
      var twitterWidgets = document.createElement('script');
      twitterWidgets.type = 'text/javascript';
      twitterWidgets.async = true;
      twitterWidgets.src = 'https://platform.twitter.com/widgets.js';
      document.getElementsByTagName('head')[0].appendChild(twitterWidgets);
    })();
  </script>




<script src="/javascripts/app.js"></script>




</body>
</html>
```