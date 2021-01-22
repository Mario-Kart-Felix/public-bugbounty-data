```<!doctype html>
<html lang=en>
<head>
  <meta charset="utf-8">
  <title>Twitter's 2011 Year in review</title>
  <script type="text/javascript" src="//use.typekit.com/tth1rsd.js"></script>
  <script type="text/javascript">try{Typekit.load();}catch(e){}</script>
  
  <script type="text/javascript">
    function changeLang() {
      var pickLang = document.langPicker.language.value;
      window.location.href = "index_" + pickLang + ".html";
    }
  </script>
  <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" /> 
  <link rel="stylesheet" href="/stylesheets/yearinreview2011.css">
  
  <!--[if lt IE 9]>
  <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
  
</head>
<body class="home">
  <div class="container" id="header">
    <img class="larry" src="/images/twitter_large.png" />
    <h1 class=en><span>Year in review</span></h1>
  </div>
  <div class="container">
    <div class="content">
      <a class="third index-third clearfix" href="//stories.twitter.com/index_en.html">
        <img src="/images/corner_stories.png" />
        <p class="date">December 1</p>
        <h2>The year in stories</h2>
      </a>
      <a class="third index-third push" href="/en/whojoined.html">
        <img src="/images/whojoined.png" />        
        <p class="date">December 2</p>
        <h2>Who joined?</h2>
      </a>         
    </div>
    <div class="content">
      <a class="third index-third push" href="/en/hottopics.html">
        <img src="/images/corner_hottopics.png" />        
        <p class="date">December 5</p>
        <h2>Hot topics</h2>
      </a>
       <a class="third index-third" href="/en/tps.html">
        <img src="/images/tps.png" />        
        <p class="date">December 6</p>
        <h2>Tweets per second</h2>
       </a>            
    </div>
    <div class="content">
       <a class="third index-third" href="/en/golden.html">
        <img src="/images/corner_golden.png" />        
         <p class="date">December 8</p>         
        <h2>Golden Tweet award</h2>
      </a>

      <div class="third footer push">
        <p><a href="//2010.twitter.com">Visit the 2010 Year in review site</a></p>
        <form name="langPicker">
          <select onChange="changeLang();" name="language">
            <option>Language</option>
            <option value="en">English</option>
            <option value="pt">PortuguÃªs</option>
            <option value="es">EspaÃ±ol</option>  
            <option value="ja">æ¥æ¬èª</option>
            <option value="tr">TÃ¼rkÃ§e</option>
            <option value="de">Deutsch</option>
            <option value="ru">PÑÑÑÐºÐ¸Ð¹</option>
            <option value="fr">FranÃ§ais</option>                                               
          </select>  
        </form> 
        <a href="https://twitter.com/share" class="twitter-share-button" data-text="Send off 2011 with Twitter's Year in Review" data-count="horizontal" data-via="twitter" data-related="TwitterStories:Discover more stories all year long.">Tweet</a><script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>  
        <p class="copyright">2011 &copy; Twitter</p>              
      </div>            
    </divs>          
  </div>
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