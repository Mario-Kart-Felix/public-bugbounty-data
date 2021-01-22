```

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />

  <title>2012 Year on Twitter</title>

  <!-- <meta name="apple-mobile-web-app-capable" content="yes" /> -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="css/yot.css" />

  <script src="//use.typekit.net/fpo6cpi.js"></script>
  <script>try{Typekit.load();}catch(e){}</script>

  <script src="js/modernizr.min.js"></script>

</head>

<body class="landing-page en">

<header id="top-bar">
  <div class="main-col">

    <div class="site-title">
      <a href="">
        <img class="logo" src="img/header-logo.png" alt="">
        <span class="site-title-text">2012 Year on Twitter</span>
      </a>
    </div>



    <div class="entry">
      <span class="sign-up"><a href="https://twitter.com/signup">Sign up today</a></span>
    </div>

    <a href="#menu" class="menu-button">Menu</a>

  </div>
</header>
<div id="splash-content">

<div class="splash-focus">

  <div class="splash-header">

    <div class="brand">

      <img src="img/splash-logo.png" width="148" height="148" alt="">
      <h1>2012</h1>
      <h2>Year on Twitter</h2>

 
        <div class="language-select">
          <a class="menu" href="#languages">Language: <b>English (US)</b></a>
          <ul class="language-dropdown">
            
                      <li><a href="index_en-gb.html">English (UK)</a></li>
                      <li><a href="index_ja.html">æ¥æ¬èª</a></li>
                      <li><a href="index_es.html">EspaÃ±ol</a></li>
                      <li><a href="index_pt.html">PortuguÃªs</a></li>
                      <li><a href="index_de.html">Deutsch</a></li>
                      <li><a href="index_fr.html">franÃ§ais</a></li>
                      <li><a href="index_it.html">Italiano</a></li>
                      <li><a href="index_sv.html">Svenska</a></li>
                      <li><a href="index_no.html">Norsk</a></li>
                      <li><a href="index_fi.html">suomi</a></li>
                      <li><a href="index_fil.html">Filipino</a></li>
                      <li><a href="index_msa.html">Bahasa Melayu</a></li>
                    </ul>
        </div>

    </div> 

    <div class="start">
      <a href="#menu">Start</a>
    </div>

  </div>

  <div id="menu">
    <ul class="site-nav clearfix">
      <li class="nav-golden"><a href="en/golden-tweets.html">Golden Tweets</a></li>
      <li class="nav-pulse"><a href="en/global-town-square.html">Global town square</a></li>
      <li class="nav-only"><a href="en/only-on-twitter.html">Only on Twitter</a></li>
      <li class="nav-trends"><a href="en/trends.html">Trends</a></li>
      <li class="nav-voices"><a href="en/new-voices.html">New voices</a></li>
      <li class="nav-my"><a href="en/your-year.html?section=index">Your year on Twitter</a></li>
    </ul>
  </div>

</div> 

</div> 



<footer id="site-footer">

  <div class="primary-footer">
    <div class="main-col">

      <div class="past-years-aligner">
        <div class="site-title">
          <a href="">
            <img class="logo" src="img/header-logo.png" alt="">
            <span class="site-title-text">2012 Year on Twitter</span>
          </a>
        </div>

        <p class="past-years">
          Past years:
          <a href="http://2011.twitter.com">2011</a>
          <a href="http://2010.twitter.com">2010</a>
        </p>
      </div>

      <div class="nav link-list">
        <ul class="site-nav clearfix">
          <li class="nav-golden"><a href="en/golden-tweets.html">Golden Tweets</a></li>
          <li class="nav-pulse"><a href="en/global-town-square.html">Global town square</a></li>
          <li class="nav-only"><a href="en/only-on-twitter.html">Only on Twitter</a></li>
          <li class="nav-trends"><a href="en/trends.html">Trends</a></li>
          <li class="nav-voices"><a href="en/new-voices.html">New voices</a></li>
          <li class="nav-my"><a href="en/your-year.html?section=index">Your year on Twitter</a></li>
        </ul>
      </div>

    </div>
  </div>

  <div class="secondary-footer">
    <div class="main-col">


      <p class="copyright">&copy; 2012 Twitter</p>


      <ul id="languages" class="link-list">
          <li>English (US)</li>
                    <li><a href="index_en-gb.html">English (UK)</a></li>
                    <li><a href="index_ja.html">æ¥æ¬èª</a></li>
                    <li><a href="index_es.html">EspaÃ±ol</a></li>
                    <li><a href="index_pt.html">PortuguÃªs</a></li>
                    <li><a href="index_de.html">Deutsch</a></li>
                    <li><a href="index_fr.html">franÃ§ais</a></li>
                    <li><a href="index_it.html">Italiano</a></li>
                    <li><a href="index_sv.html">Svenska</a></li>
                    <li><a href="index_no.html">Norsk</a></li>
                    <li><a href="index_fi.html">suomi</a></li>
                    <li><a href="index_fil.html">Filipino</a></li>
                    <li><a href="index_msa.html">Bahasa Melayu</a></li>
                  
      </ul>

    </div>
  </div>

</footer>

<script src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
<script src="js/jquery-1.8.3.min.js"></script>

  <script src="js/yot.min.js"></script>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-30775-41']);
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