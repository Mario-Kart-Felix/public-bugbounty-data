```
<!DOCTYPE html>
<!--[if IEMobile 7 ]><html class="no-js iem7"><![endif]-->
<!--[if lt IE 9]><html class="no-js lte-ie8"><![endif]-->
<!--[if (gt IE 8)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->
<head>
  <meta charset="utf-8">
  <title>Artsy Engineering</title>
  <meta name="author" content="">

  
  <meta name="description" content="
  
  
    
      
        



  
    
      
        
          
        
        
          Introducing Artsy Engineering Radio
        
        ...">
  

  <!-- http://t.co/dKP3o1e -->
  <meta name="HandheldFriendly" content="True">
  <meta name="MobileOptimized" content="320">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <meta property="og:image" content="http://artsy.github.io/images/artsy_oss_image.png" />
  <meta property="og:image:type" content="image/png" />

  
  <link rel="canonical" href="https://artsy.github.io/">
  <link rel="alternate" type="application/rss+xml" title="Artsy Engineering Blog" href="/feed">
  <link rel="alternate" type="application/atom+xml" title="Podcast Feed" href="/podcast.xml" />

  <link href="/favicon.ico" rel="icon">
  <link href="/css/screen.css" media="screen, projection" rel="stylesheet" type="text/css">

  <script src="/javascripts/jquery-1.11.3.min.js"> </script>
  <script src="/javascripts/gradient-fade.js"></script>
  <script src="/javascripts/noframework.waypoints.min.js"></script>
  <script src="/javascripts/sticky.min.js"></script>
  <script src="/javascripts/search.min.js"></script>
  <script src="/javascripts/custom-element.min.js"></script>
  <script src="/javascripts/g-emoji-element.js"></script>

  

  <script type="text/javascript" src="https://fast.fonts.net/jsapi/f7f47a40-b25b-44ee-9f9c-cfdfc8bb2741.js"></script>


  <link href="/feed.xml" rel="alternate" title="Artsy Engineering" type="application/atom+xml">
  
  <script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-12450662-3']);
    _gaq.push(['_trackPageview']);

    (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
  </script>


  <!--[if IE 8]><link href="/stylesheets/custom/ie_font.css" type="text/css"><![endif]-->

</head>


<body>
  <div id="logo-container">
    <a id="lrg-mark" href="https://www.artsy.net/">
      <svg viewBox="0 0 510 510" width="40" height="40" xmlns="http://www.w3.org/2000/svg">
        <path transform="scale(1, -1) translate(0, -480)" d="M0 -32h512v512h-512v-512v0zM464 16h-80v80h-48v-80h-288v416h416v-416v0zM194 384h-40l-74 -186h38l20 52h72l19 -52h39l-74 186v0zM149 282l25 66l24 -66h-49v0z"/>
      </svg>
    </a>
  </div>
  <header id="banner"><div id="header">
  <div class="header-navigation">
    <ul>
      <li><a href="https://developers.artsy.net/">API</a></li>
      <li><a href="https://www.artsy.net/jobs">Careers</a></li>
      <li><a href="http://twitter.com/artsyopensource">@artsyopensource</a></li>
      <li><a href="http://www.artsy.net/">Artsy.net</a></li>
    </ul>
    <span class="header-section-title">
      
        <a href="/open-source">Open Source</a>
      
    </span>
  </div>

  <div class="header-sticky-container">
    <div class="header-logo">
      <h2><a href="https://artsy.github.io">Artsy</a></h2>
    </div>
    <div class="header-search">
      
        <h2><a href="/">Engineering Blog</a></h2>
        <span>
  <form action="/search" method="get">
    <input class="search" id="search-query" type="text" name="q" results="0" placeholder="Search"/>
  </form>

</span>
      
    </div>
  </div>
</div>
</header>
  <div class="header-hamburger">
    <button class="cmn-toggle-switch cmn-toggle-switch__htx">
      <span>toggle menu</span>
    </button>
  </div>
  <div id="main">
    <div id="content">

      <div class="blog-index">
  
  
    
      <article>
        
<div class="article-container">


  
    <div class="meta-container">
      <header>
        
          <a href="/blog/2021/01/06/introducing-artsy-engineering-radio/">
        
        
          <h2 class="entry-title">Introducing Artsy Engineering Radio</h2>
        
        <time datetime=""></time>
          <p class="meta-author">
  



  

  
    <div class="meta">
      <span class="byline author vcard"><a href ="/author/steve-hicks">Steve Hicks<a/></span>
      
      <p class="fn">
        <a href="https://twitter.com/pepopowitz">@pepopowitz</a>
      </p>
      

    </div>
  

  

  
    <div class="meta">
      <span class="byline author vcard"><a href ="/author/jonallured">Jon Allured<a/></span>
      
      <p class="fn">
        <a href="https://twitter.com/jonallured">@jonallured</a>
      </p>
      

    </div>
  

</p>
          </a>
      </header>
    </div>
  

  <div class="content-container">
    
    
        <p>Available now on <a href="https://podcasts.apple.com/us/podcast/artsy-engineering-radio/id1545870104">Apple Podcasts</a>, <a href="https://open.spotify.com/show/0gJYxpqN6P11dbjNw8VT2a?si=L4TWDrQETwuVO6JR1SOZTQ">Spotify</a>, and coming soon elsewhere, is Artsy
Engineering Radio!</p>

<p>Solving problems in the world of software engineering can mean a lot of different things, and this podcast will
explore what that looks like at Artsy. If you've followed our blog, you can expect a podcast that sounds like it.
There are a ton of amazing engineers here at Artsy and we're excited for you to hear their voices and stories. Our
hope is that this podcast will make it easy for more engineers at Artsy to contribute to the public persona of
Artsy Engineering.</p>


        <p><a href="/blog/2021/01/06/introducing-artsy-engineering-radio/">Read on →</a></p>
    

    

    
  </div>


  <footer>
  </footer>

</div>

      </article>
  
    
      <article>
        
<div class="article-container">


  
    <div class="meta-container">
      <header>
        
          <a href="/blog/2020/12/31/echo-supporting-old-app-versions/">
        
        
          <h2 class="entry-title">Echoes From the Past: Supporting Old App Versions</h2>
        
        <time datetime=""></time>
          <p class="meta-author">
  



  

  
    <div class="meta">
      <span class="byline author vcard"><a href ="/author/ash">Ash Furrow<a/></span>
      
      <p class="fn">
        <a href="https://twitter.com/ashfurrow">@ashfurrow</a>
      </p>
      

    </div>
  

</p>
          </a>
      </header>
    </div>
  

  <div class="content-container">
    
    
        <p><a href="https://artsy.github.io/blog/2020/03/02/ios-deploys-super-weird-totally-normal/">In, a recent blog post</a>, I discussed a fundamental difference between web and iOS deployments. Web software is deployed to servers that are under your control, while iOS software is deployed to users' devices that you have <em>no</em> control over. This distinction really changes how you think about the code that you ship, because that code could be running indefinitely on devices that never get updated.</p>

<p>The previous post focused on this distinction through the lens of accidentally shipping (and then fixing) a bug. This focus on bugs is important, but focusing <em>only</em> on bugs left me unable to articulate an important, nuanced distinction between hosting code and shipping app binaries. So let's dive in.</p>


        <p><a href="/blog/2020/12/31/echo-supporting-old-app-versions/">Read on →</a></p>
    

    

    
  </div>


  <footer>
  </footer>

</div>

      </article>
  
    
      <article>
        
<div class="article-container">


  
    <div class="meta-container">
      <header>
        
          <a href="/blog/2020/12/09/share-your-knowledge/">
        
        
          <h2 class="entry-title">Knowledge Shares For Great Good</h2>
        
        <time datetime=""></time>
          <p class="meta-author">
  



  

  
    <div class="meta">
      <span class="byline author vcard"><a href ="/author/ash">Ash Furrow<a/></span>
      
      <p class="fn">
        <a href="https://twitter.com/ashfurrow">@ashfurrow</a>
      </p>
      

    </div>
  

</p>
          </a>
      </header>
    </div>
  

  <div class="content-container">
    
    
        <p>Sharing knowledge! What a concept! <a href="/blog/becoming-mobile-first-at-artsy">In my recent blog post</a>, I discussed "Knowledge Share" meetings (also known simply as "Knowledge Shares", or abbreviated "KS") and I want to dive deeper into them today. Last time, I described them as follows:</p>

<blockquote><p>Knowledge Shares are a <u>structured</u> time to facilitate <u>unstructured learning</u>. Anyone can bring a topic to Knowledge Share, from a ticket that they're stuck on to an idea they have to a neat trick they recently learned.</p></blockquote>

<p>These meetings were really instrumental in ramping up the Mobile Experience team, but their history goes back a bit further. Today, we're going to discuss the origins of Knowledge Shares at Artsy, how they've evolved, the value they provide us as engineers, and how I'd recommend you adopt them on your team.</p>

<p>Let's go!</p>


        <p><a href="/blog/2020/12/09/share-your-knowledge/">Read on →</a></p>
    

    

    
  </div>


  <footer>
  </footer>

</div>

      </article>
  
    
      <article>
        
<div class="article-container">


  
    <div class="meta-container">
      <header>
        
          <a href="/blog/2020/09/29/becoming-mobile-first-at-artsy/">
        
        
          <h2 class="entry-title">Becoming Mobile First</h2>
        
        <time datetime=""></time>
          <p class="meta-author">
  



  

  
    <div class="meta">
      <span class="byline author vcard"><a href ="/author/ash">Ash Furrow<a/></span>
      
      <p class="fn">
        <a href="https://twitter.com/ashfurrow">@ashfurrow</a>
      </p>
      

    </div>
  

</p>
          </a>
      </header>
    </div>
  

  <div class="content-container">
    
    
        <p>It was a Wednesday, mid-summer 2019. I don't know which Wednesday specifically, but I know that it was <em>a</em>
Wednesday because I was attending Artsy's weekly all-hands meeting. Two hundred colleagues were also there (many
dialing in remotely) and we were all listening to
<a href="https://files.artsy.net/documents/artsy-names-new-ceo.pdf">Artsy's new CEO</a> talk about the company's direction.
Mike Steib had only been around for a few months at that point, getting to know the business. He was talking about
the product direction, and I was listening intently.</p>

<p>With Artsy's iOS app, I knew there were only really two directions we could go. As I listened, I reflected on how
we had gotten here.</p>


        <p><a href="/blog/2020/09/29/becoming-mobile-first-at-artsy/">Read on →</a></p>
    

    

    
  </div>


  <footer>
  </footer>

</div>

      </article>
  
    
      <article>
        
<div class="article-container">


  
    <div class="meta-container">
      <header>
        
          <a href="/blog/2020/08/31/relay-pagination-containers-demystified/">
        
        
          <h2 class="entry-title">Relay Pagination Containers Demystified</h2>
        
        <time datetime=""></time>
          <p class="meta-author">
  



  

  
    <div class="meta">
      <span class="byline author vcard"><a href ="/author/ash">Ash Furrow<a/></span>
      
      <p class="fn">
        <a href="https://twitter.com/ashfurrow">@ashfurrow</a>
      </p>
      

    </div>
  

</p>
          </a>
      </header>
    </div>
  

  <div class="content-container">
    
    
        <p>In 2017, Artsy adopted <a href="https://relay.dev/en/">Relay</a> in both its front-end web and iOS codebases (using React and
React Native, respectively). Generally speaking, this investment has turned out very well for us! Relay empowers
product teams to quickly iterate on new features and to share common infrastructure across web and iOS codebases.
However, most of the original engineers who pioneered using Relay at Artsy have since moved on to their next role;
this has left a knowledge gap where Artsy engineers are comfortable <em>using</em> Relay, but they don't totally
understand how it works.</p>

<p>This is a problem as old as software engineering itself, and it has a simple solution: learn and then teach others.
We'll be driving a peer learning group centering around Relay, but today we are going to dive into the part of
Relay that comes up the most in requests for pairing: getting Relay pagination to work. (Note: we're going to use
plain old Relay and not <a href="https://github.com/relay-tools/relay-hooks">relay-hooks</a>.)</p>


        <p><a href="/blog/2020/08/31/relay-pagination-containers-demystified/">Read on →</a></p>
    

    

    
  </div>


  <footer>
  </footer>

</div>

      </article>
  
    
      <article>
        
<div class="article-container">


  
    <div class="meta-container">
      <header>
        
          <a href="/blog/2020/08/21/review-apps-post/">
        
        
          <h2 class="entry-title">Servers for Everyone: Review Apps @ Artsy</h2>
        
        <time datetime=""></time>
          <p class="meta-author">
  



  

  
    <div class="meta">
      <span class="byline author vcard"><a href ="/author/daniel">Daniel Levenson<a/></span>
      

    </div>
  

</p>
          </a>
      </header>
    </div>
  

  <div class="content-container">
    
    
        <p>This blog post is going to motivate and describe Artsy's adoption and evolution
of the usage of review apps.</p>

<p>This first part of this post covers a couple of common problems where
topic-specific servers (i.e. review apps) are useful.</p>

<p>The rest of the post describes Artsy's history with review app automation via
incremental problem solving and the composition of a few well-known technologies.</p>


        <p><a href="/blog/2020/08/21/review-apps-post/">Read on →</a></p>
    

    

    
  </div>


  <footer>
  </footer>

</div>

      </article>
  
    
      <article>
        
<div class="article-container">


  
    <div class="meta-container">
      <header>
        
          <a href="/blog/2020/08/11/improve-pull-requests-by-including-valuable-context/">
        
        
          <h2 class="entry-title">Improve Pull Requests By Including Valuable Context</h2>
        
        <time datetime=""></time>
          <p class="meta-author">
  



  

  
    <div class="meta">
      <span class="byline author vcard"><a href ="/author/steve-hicks">Steve Hicks<a/></span>
      
      <p class="fn">
        <a href="https://twitter.com/pepopowitz">@pepopowitz</a>
      </p>
      

    </div>
  

</p>
          </a>
      </header>
    </div>
  

  <div class="content-container">
    
    
        <p>Code review is an engineering process that has benefited greatly from a move toward asynchronous communication.
Long ago, engineering teams would sit in a room with code on a projector to review changes together. 😱 For many
teams this led to batching code reviews or even skipping them altogether. 😱😱</p>

<p>Today, most engineering teams use incredible tools like GitHub or GitLab to review changes through Pull Requests
(PRs). The greatest advantage of PRs is that the review can happen when it's convenient for the reviewer:
asynchronously. Asynchronous communication isn't all sunshine and unicorns, though. Notably, it lacks the ability
to course-correct when context is misunderstood.</p>


        <p><a href="/blog/2020/08/11/improve-pull-requests-by-including-valuable-context/">Read on →</a></p>
    

    

    
  </div>


  <footer>
  </footer>

</div>

      </article>
  
    
      <article>
        
<div class="article-container">


  
    <div class="meta-container">
      <header>
        
          <a href="/blog/2020/07/23/from-engineering-to-product-management-and-back-again/">
        
        
          <h2 class="entry-title">From engineering to product management, and back again</h2>
        
        <time datetime=""></time>
          <p class="meta-author">
  



  

  
    <div class="meta">
      <span class="byline author vcard"><a href ="/author/will">Will Doenlen<a/></span>
      
      <p class="fn">
        <a href="https://twitter.com/willdoenlen">@willdoenlen</a>
      </p>
      

    </div>
  

</p>
          </a>
      </header>
    </div>
  

  <div class="content-container">
    
    
        <p>A year and a half ago I decided to become a product manager after 5 years as a software engineer. This past June,
however, I decided to switch back into engineering.</p>

<p>What happened, and what did I learn?</p>


        <p><a href="/blog/2020/07/23/from-engineering-to-product-management-and-back-again/">Read on →</a></p>
    

    

    
  </div>


  <footer>
  </footer>

</div>

      </article>
  
    
      <article>
        
<div class="article-container">


  
    <div class="meta-container">
      <header>
        
          <a href="/blog/2020/04/01/team-working-agreements/">
        
        
          <h2 class="entry-title">Team Working Agreements</h2>
        
        <time datetime=""></time>
          <p class="meta-author">
  



  

  
    <div class="meta">
      <span class="byline author vcard"><a href ="/author/steve-hicks">Steve Hicks<a/></span>
      
      <p class="fn">
        <a href="https://twitter.com/pepopowitz">@pepopowitz</a>
      </p>
      

    </div>
  

  

  
    <div class="meta">
      <span class="byline author vcard"><a href ="/author/adam">Adam Iskounen<a/></span>
      

    </div>
  

</p>
          </a>
      </header>
    </div>
  

  <div class="content-container">
    
    
        <p>Good team culture strives for cohesion. Once organizations get large enough, a tension emerges between the culture
of individual teams and the culture of the larger organization. How do you achieve team cohesion across small teams
<em>and</em> the larger organizations they comprise?</p>

<p>The culture at Artsy is driven by every team member, not mandated or handed down from above. This adds another
level of tension, between individuals and their smaller teams. Team working agreements embrace that tension to
provide a framework for converting tension into healthy culture.</p>


        <p><a href="/blog/2020/04/01/team-working-agreements/">Read on →</a></p>
    

    

    
  </div>


  <footer>
  </footer>

</div>

      </article>
  
    
      <article>
        
<div class="article-container">


  
    <div class="meta-container">
      <header>
        
          <a href="/blog/2020/03/02/ios-deploys-super-weird-totally-normal/">
        
        
          <h2 class="entry-title">iOS Deploys: Super Weird And Totally Normal</h2>
        
        <time datetime=""></time>
          <p class="meta-author">
  



  

  
    <div class="meta">
      <span class="byline author vcard"><a href ="/author/ash">Ash Furrow<a/></span>
      
      <p class="fn">
        <a href="https://twitter.com/ashfurrow">@ashfurrow</a>
      </p>
      

    </div>
  

</p>
          </a>
      </header>
    </div>
  

  <div class="content-container">
    
    
        <p>Software deploys! What a concept. You have some code running somewhere, and you need to get it running somewhere
else. What could possibly go wrong? While web developers have become accustom to some <em>really slick</em> deploy
processes, iOS developers have to work within some very different constraints.</p>

<p>Today I want to explore the differences between deploying iOS software and front-end/back-end web software. Some of
these differences are inherent to how the code gets executed, and some of the differences are incidental to choices
that Apple has made. These are constraints that iOS developers need to work within. As Artsy has adopted React
Native over the past four years, we have had more and more of our web engineering colleagues contributing to our
iOS app. For these web engineers, getting familiar with the iOS deploy constraints is as important as getting to
know Xcode and CocoaPods.</p>


        <p><a href="/blog/2020/03/02/ios-deploys-super-weird-totally-normal/">Read on →</a></p>
    

    

    
  </div>


  <footer>
  </footer>

</div>

      </article>
  

  <div class="pagination">
    <a href="/blog/archives">Blog Archives</a>
    <a href="/blog/categories">Categories</a>

    
    <span class="page_number ">Page: 1 of 26</span>

    
      <a href="/blog/2/" class="next">Older</a>
    
  </div>
</div>


    </div>
  </div>
  <footer id="main_footer"> <div class="footer-navigation">
  <ul>
    <li><a href="https://developers.artsy.net/">API</a></li>
    <li><a href="https://www.artsy.net/jobs">Careers</a></li>
    <li><a href="http://twitter.com/artsyopensource">@artsyopensource</a></li>
    <li><a href="http://www.artsy.net/">Artsy.net</a></li>
  </ul>
</div>



<script type="text/javascript">
      var disqus_shortname = 'artsy';
      
        
        var disqus_script = 'count.js';
      
    (function () {
      var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
      dsq.src = 'https://' + disqus_shortname + '.disqus.com/' + disqus_script;
      (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    }());
</script>


</footer>
  <script type="text/javascript">
  $(function() {
    // TODO: Move this whole file to a javascript file that is included in the footer

    // Main sticky header
    if ($(window).width() >= 700) {
      var sticky = new Waypoint.Sticky({
        element: $("#banner"),
        offset: -100
      });
    }

    // Toggle hamburger menu
    $('.header-hamburger').click(function() {
      $('#banner, .cmn-toggle-switch').toggleClass('active');
      if (location.pathname == '/open-source') {
        $('.header-search span').hide();
        $('#page-sidebar').toggle();
      }
    });

    // Toggle search focus on mobile
    $('input.search').focus(function() {
      $('#header').addClass('search-focused');
    }).blur(function() {
      $('#header').removeClass('search-focused');
    });
  });
</script>

</body>
</html>
```