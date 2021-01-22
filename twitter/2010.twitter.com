```
<!DOCTYPE html>

<html>
	<head>
    <!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame 
         Remove this if you use the .htaccess -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

		<title>Twitter: 2010, The Year in Review &middot; Twitter</title>
  
    <!--  Mobile viewport optimized: j.mp/bplateviewport -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <!-- Place favicon.ico & apple-touch-icon.png in the root of your domain and delete these references -->
    <link rel="shortcut icon" href="//www.twitter.com/phoenix/favicon.ico" />
    <link rel="apple-touch-icon" href="apple-touch-icon.png" />
  
    <!-- CSS : implied media="all" -->
		<link href="css/global.css" rel="stylesheet" type="text/css" />
    
    <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <script type="text/javascript" src="//use.typekit.com/wlw8yty.js"></script>
    <script type="text/javascript">try{Typekit.load();}catch(e){}</script> 

	</head>
	
	<body class="in_unknown" id="homePage">
    
    <div id="body">

  
  <link rel="stylesheet" href="css/homepage.css" type="text/css" />

  <div class="fixed-container">
  
    <div class="body">
      <div class="jumbotron">
        <h1 class="grunged">Twitter 2010: Year in Review</h1>
      </div>
      
      <ul class="pages clearfix">
        <li><a href="whosnew/" title="Highlights of who joined Twitter in 2010">
          <div style="background: url(img/home/whosnew.jpg) no-repeat 0 0;">
            <img src="img/home/whosnew.jpg" alt="Highlights of who joined Twitter in 2010" /><small></small>
          </div>
          <span>Who's New?</span>
        </a></li>
        <li><a href="trends/" title="Top Trends on Twitter in 2010">
          <div style="background: url(img/home/trends.jpg) no-repeat 0 0;">
            <img src="img/home/trends.jpg" alt="Top Trends on Twitter in 2010" /><small></small>
          </div>
          <span>Top Trending Topics</span>
        </a></li>
        <li><a href="powerful-tweets/" title="The 10 Most Powerful Tweets of 2010">
          <div style="background: url(img/home/powerful2.jpg) no-repeat 0 0;">
            <img src="img/home/powerful2.jpg" alt="The 10 Most Powerful Tweets of 2010" /><small></small>
            </div>
          <span>Most<br /> Powerful</span>
        </a></li>
        <li><a href="retweets/" title="Most Retweeted Tweets on Twitter in 2010">
          <div style="background: url(img/home/most-retweeted.jpg) no-repeat 0 0;">
            <img src="img/home/most-retweeted.jpg" alt="Most Retweeted Tweets on Twitter in 2010" /><small></small>
          </div>
          <span>Most Retweeted</span>
        </a></li>
        <li><a href="hindsight2010/" title="#hindsight2010 - Looking back on Twitter">
            <div style="background: url(img/home/hindsight.png) no-repeat 0 0;">
              <img src="img/home/most-retweeted.jpg" alt="#hindsight2010 - Looking back on Twitter" /><small></small>
            </div>
            <span>#hindsight 2010</span>
        </a></li>
      </ul>
    </div>
  
    <div id="tbutton">
  <a href="//twitter.com/share" class="twitter-share-button" data-count="horizontal" data-via="twitter" data-related="jointheflock">Tweet</a><script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
</div>  </div> 
      <div id="sun"></div>
      <div id="clouds">
        <span id="cloud1"></span>
        <span id="cloud2"></span>
        <span id="cloud3"></span>
        <span id="cloud4"></span>
        <span id="cloud5"></span>
        <span id="cloud6"></span>
        <span id="cloud7"></span>
        <span id="cloud8"></span>
        <span id="cloud9"></span>   
      </div>
      
      <div id="waves"><div></div></div>
    </div> 
    <div id="footer">
      <div class="fixed-container">
        <p>&copy; 2010 Twitter, Inc.</p>
      </div>
    </div> 
    
    
    <!-- jQuery -->
		<script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>
		
    <!-- @anywhere -->
		<script src="//platform.twitter.com/anywhere.js?id=Ol7dHlO1gvJ4XEKQVRGemA&v=1"></script>
    <script type="text/javascript">
      twttr.anywhere(function(twitter) {
        twitter.hovercards();
      });
    </script>
    
    <!-- Google Analytics -->
    <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-30775-25']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script>

	</body>
</html>
```