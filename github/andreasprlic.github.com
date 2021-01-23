```<!DOCTYPE html>
<!--
  Original Design: Spectral by HTML5 UP
    html5up.net | @n33co
    Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
  Jekyll build mod
-->
<html>

  <head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>BioJava</title>
  <meta name="description" content="Another fine responsive  
site template freebie  
crafted by [HTML5 UP](http://html5up.net)
">
  <!--[if lte IE 8]><script src="/js/ie/html5shiv.js"></script><![endif]-->
  <link rel="canonical" href="http://biojava.org/">
  <link rel="stylesheet" href="/css/main.css" />
  <!--[if lte IE 8]><link rel="stylesheet" href="/css/ie8.css" /><![endif]-->
  <!--[if lte IE 9]><link rel="stylesheet" href="/css/ie9.css" /><![endif]-->
  <link rel="alternate" type="application/rss+xml" title="BioJava" href="http://yourdomain.com/feed.xml">
</head>


  <body class="landing">

    <!-- Page Wrapper -->
    <div id="page-wrapper">

      <!-- Header -->
<header id="header" class="alt">
  <h1><a href="/index.html">BioJava</a></h1>
  <nav id="nav">
    <ul>
      <li class="special">
        <a href="#menu" class="menuToggle"><span>Menu</span></a>
        <div id="menu">
          <ul>
            <li><a href="index.html">Home</a></li>
            
            
            <li><a href="/elements.html">Elements</a></li>
            
            
            
            
            
            <li><a href="/generic.html">Generic</a></li>
            
            
            
            
            
            
            
            
            
            
            <li><a href="#">Sign Up</a></li>
            <li><a href="#">Log In</a></li>
            <li><a href="/feed.xml"
                   class="icon fa-feed"> RSS Feed</a></li>
          </ul>
        </div>
      </li>
    </ul>
  </nav>
</header>


      				<!-- Banner -->
					<section id="banner">
						<div class="inner">
							<h2>BioJava</h2>
							<p><p>Another fine responsive<br />
site template freebie<br />
crafted by <a href="http://html5up.net">HTML5 UP</a></p>
</p>
							<ul class="actions">
								<li><a href="#" class="button special">Activate</a></li>
							</ul>
						</div>
						<a href="#one" class="more scrolly">Learn More</a>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style1 special">
						<div class="inner">
							<header class="major">
								<h2>Arcu aliquet vel lobortis ata nisl<br />
								eget augue amet aliquet nisl cep donec</h2>
								<p>Aliquam ut ex ut augue consectetur interdum. Donec amet imperdiet eleifend<br />
								fringilla tincidunt. Nullam dui leo Aenean mi ligula, rhoncus ullamcorper.</p>
							</header>
							<ul class="icons major">
								<li><span class="icon fa-diamond major style1"><span class="label">Lorem</span></span></li>
								<li><span class="icon fa-heart-o major style2"><span class="label">Ipsum</span></span></li>
								<li><span class="icon fa-code major style3"><span class="label">Dolor</span></span></li>
							</ul>
						</div>
					</section>

				<!-- Two -->
					<section id="two" class="wrapper alt style2">
						<section class="spotlight">
							<div class="image"><img src="images/4hhb.png" alt="" /></div><div class="content">
								<h2>Magna primis lobortis<br />
								sed ullamcorper</h2>
								<p>Aliquam ut ex ut augue consectetur interdum. Donec hendrerit imperdiet. Mauris eleifend fringilla nullam aenean mi ligula.</p>
							</div>
						</section>
						<section class="spotlight">
							<div class="image"><img src="images/pic02.jpg" alt="" /></div><div class="content">
								<h2>Tortor dolore feugiat<br />
								elementum magna</h2>
								<p>Aliquam ut ex ut augue consectetur interdum. Donec hendrerit imperdiet. Mauris eleifend fringilla nullam aenean mi ligula.</p>
							</div>
						</section>
						<section class="spotlight">
							<div class="image"><img src="images/pic03.jpg" alt="" /></div><div class="content">
								<h2>Augue eleifend aliquet<br />
								sed condimentum</h2>
								<p>Aliquam ut ex ut augue consectetur interdum. Donec hendrerit imperdiet. Mauris eleifend fringilla nullam aenean mi ligula.</p>
							</div>
						</section>
					</section>

				<!-- Three -->
					<section id="three" class="wrapper style3 special">
						<div class="inner">
							<header class="major">
								<h2>Accumsan mus tortor nunc aliquet</h2>
								<p>Aliquam ut ex ut augue consectetur interdum. Donec amet imperdiet eleifend<br />
								fringilla tincidunt. Nullam dui leo Aenean mi ligula, rhoncus ullamcorper.</p>
							</header>
							<ul class="features">
								<li class="icon fa-paper-plane-o">
									<h3>Arcu accumsan</h3>
									<p>Augue consectetur sed interdum imperdiet et ipsum. Mauris lorem tincidunt nullam amet leo Aenean ligula consequat consequat.</p>
								</li>
								<li class="icon fa-laptop">
									<h3>Ac Augue Eget</h3>
									<p>Augue consectetur sed interdum imperdiet et ipsum. Mauris lorem tincidunt nullam amet leo Aenean ligula consequat consequat.</p>
								</li>
								<li class="icon fa-code">
									<h3>Mus Scelerisque</h3>
									<p>Augue consectetur sed interdum imperdiet et ipsum. Mauris lorem tincidunt nullam amet leo Aenean ligula consequat consequat.</p>
								</li>
								<li class="icon fa-headphones">
									<h3>Mauris Imperdiet</h3>
									<p>Augue consectetur sed interdum imperdiet et ipsum. Mauris lorem tincidunt nullam amet leo Aenean ligula consequat consequat.</p>
								</li>
								<li class="icon fa-heart-o">
									<h3>Aenean Primis</h3>
									<p>Augue consectetur sed interdum imperdiet et ipsum. Mauris lorem tincidunt nullam amet leo Aenean ligula consequat consequat.</p>
								</li>
								<li class="icon fa-flag-o">
									<h3>Tortor Ut</h3>
									<p>Augue consectetur sed interdum imperdiet et ipsum. Mauris lorem tincidunt nullam amet leo Aenean ligula consequat consequat.</p>
								</li>
							</ul>
						</div>
					</section>

				<!-- CTA -->
					<section id="cta" class="wrapper style4">
						<div class="inner">
							<header>
								<h2>Arcue ut vel commodo</h2>
								<p>Aliquam ut ex ut augue consectetur interdum endrerit imperdiet amet eleifend fringilla.</p>
							</header>
							<ul class="actions vertical">
								<li><a href="#" class="button fit special">Activate</a></li>
								<li><a href="#" class="button fit">Learn More</a></li>
							</ul>
						</div>
					</section>


      <!-- Footer -->
<footer id="footer">
  <ul class="icons">
    
    
    
    <li><a target="_blank" href="https://twitter.com/<username>" class="icon fa-twitter"
           ><span class="label">twitter</span></a></li>
    
    
    
    
    
    <li><a target="_blank" href="https://github.com/<username>" class="icon fa-github"
           ><span class="label">github</span></a></li>
    
    
    
    
    
    <li><a target="_blank" href="https://linkedin.com/in/<username>" class="icon fa-linkedin-square"
           ><span class="label">linkedin-square</span></a></li>
    
    
    
    
    
    <li><a target="_blank" href="https://facebook.com/<username>" class="icon fa-facebook-official"
           ><span class="label">facebook-official</span></a></li>
    
    
    
    
    
    <li><a target="_blank" href="https://plus.google.com/u/0/+<username>" class="icon fa-google-plus-square"
           ><span class="label">google-plus-square</span></a></li>
    
    
    
  </ul>
  <ul class="copyright">
    <li>&copy; 
    
      
      
    
    2016
    Your Name</li>
    <li>Design: <a href="http://html5up.net" target="_blank">HTML5 UP</a></li>
    <li>Built with: <a href="http://jekyllrb.com" target="_blank">Jekyll</a></li>
  </ul>
</footer>


      <!-- Scripts -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.scrollex.min.js"></script>
<script src="js/jquery.scrolly.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/util.js"></script>
<!--[if lte IE 8]><script src="js/ie/respond.min.js"></script><![endif]-->
<script src="js/main.js"></script>


    </div>

  </body>

</html>
```