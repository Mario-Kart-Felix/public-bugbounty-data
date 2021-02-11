```
<!DOCTYPE html>
<html lang="en" data-figures="">
  <head>
<title>Beng Tan</title>
<meta charset="utf-8">
<meta name="generator" content="Hugo 0.80.0" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<script async src="https://www.googletagmanager.com/gtag/js?id=G-VTEK0C8GRX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-VTEK0C8GRX');
</script>
<meta property="og:locale" content="en" />

<meta property="og:type" content="website">
<meta name="description" content="Beng Tan&#39;s personal blog where I write about software, tech, startups and random things.">
<meta name="twitter:card" content="summary" />
<meta name="twitter:creator" content="">
<meta name="twitter:title" content="Beng Tan" />
<meta property="og:url" content="https://bengtan.com/" />
<meta property="og:title" content="Beng Tan" />
<meta property="og:description" content="Beng Tan&#39;s personal blog where I write about software, tech, startups and random things." />
<meta property="og:image" content="https://bengtan.com/images/logo.png" />
<link rel="apple-touch-icon" href='https://bengtan.com/apple-touch-icon.png'>
<link rel="icon" type="image/png" href='https://bengtan.com/favicon.ico'>

<link rel="canonical" href="https://bengtan.com/">
<link rel="alternate" type="application/rss+xml" href="https://bengtan.com/index.xml" title="Beng Tan" />

    

    
    
    <link rel="preload" href="https://bengtan.com/css/styles.070d64b8bbfcda38c23c4558a95b4ea9b93f68a8db9899bfec894e3073fac0fa1e70c803e6807f77b3b8bda4d027e9c4b0d5da3bdc402d9eb70e89e588823848.css" integrity = "sha512-Bw1kuLv82jjCPEVYqVtOqbk/aKjbmJm/7IlOMHP6wPoecMgD5oB/d7O4vaTQJ&#43;nEsNXaO9xALZ63DonliII4SA==" as="style" crossorigin="anonymous">
    <link rel="preload" href="https://bengtan.com/js/bundle.min.48fa905ac5f708cd2dceac23a468b062d6c96282a530545826072e265b7cdd156320cbd7e56ba938d8476da637c260b713b2f7dae8b7ce8d8647055082418dcc.js" as="script" integrity=
    "sha512-SPqQWsX3CM0tzqwjpGiwYtbJYoKlMFRYJgcuJlt83RVjIMvX5WupONhHbaY3wmC3E7L32ui3zo2GRwVQgkGNzA==" crossorigin="anonymous">

    
    <link rel="stylesheet" type="text/css" href="https://bengtan.com/css/styles.070d64b8bbfcda38c23c4558a95b4ea9b93f68a8db9899bfec894e3073fac0fa1e70c803e6807f77b3b8bda4d027e9c4b0d5da3bdc402d9eb70e89e588823848.css" integrity="sha512-Bw1kuLv82jjCPEVYqVtOqbk/aKjbmJm/7IlOMHP6wPoecMgD5oB/d7O4vaTQJ&#43;nEsNXaO9xALZ63DonliII4SA==" crossorigin="anonymous">
    
  </head>
  
  
    
  
  <body data-code="100" data-lines="false" id="documentTop">

<header class="nav_header" >
  <nav class="nav">
    <a href='https://bengtan.com/' class="nav_brand nav_item">
      <img src="https://bengtan.com/images/logo.png" class="logo">
      <div class="nav_close">
        <div>
          <svg class="icon">
  <use xlink:href="#open-menu"></use>
</svg>
          <svg class="icon">
  <use xlink:href="#closeme"></use>
</svg>
        </div>
      </div>
    </a>
    <div class='nav_body nav_body_right'>
      
      
      
        

  <div class="nav_parent nav_active">
    <a href="https://bengtan.com/" class="nav_item">Home </a>
  </div>
  <div class="nav_parent">
    <a href="https://bengtan.com/resume/" class="nav_item">Resume </a>
  </div>
      
<div class='follow'>
  <a href="https://github.com/bengtan">
    <svg class="icon">
  <use xlink:href="#github"></use>
</svg>
  </a>
  <a href="https://twitter.com/bengtanAU">
    <svg class="icon">
  <use xlink:href="#twitter"></use>
</svg>
  </a>
    
  <a href="https://bengtan.com/index.xml">
    <svg class="icon">
  <use xlink:href="#rss"></use>
</svg>
  </a>
<div class="color_mode">
  <input type="checkbox" class="color_choice" id="mode">
</div>

</div>

    </div>
  </nav>
</header>

    <main>

  

<div class="grid-inverse wrap content">
  <ul class="posts" id="posts">
      <li class="post_item">
  <div class="excerpt">
    <div class="excerpt_header">
      <h3 class="post_link">
        <a href="https://bengtan.com/blog/reading-long-json-snippets/">My go-to tool for reading long JSON snippets</a>
      </h3>
      <div class="post_meta">
  
    <svg class="icon">
  <use xlink:href="#calendar"></use>
</svg>
    <span class="post_date">
      10 Feb 2021</span>
</div>

    </div>
    <div class="excerpt_footer partition">
      <div class="excerpt_thumbnail">
        <img src='https://bengtan.com/blog/reading-long-json-snippets/json.png'>
      </div>
      
        <div>
          <p class="pale">
            
              JSON is ubiquitous and I often run into it whilst developing or debugging.
When it&rsquo;s in raw form like this &hellip;
it&rsquo;s hard for a human to interpret.
For small snippets, I could copy-and-paste it into a text file and hand-prettify it. For long snippets, that&rsquo;s obviously not scalable.
I stumbled upon …
            
          </p>
          <a href="https://bengtan.com/blog/reading-long-json-snippets/" class="excerpt_more button">Read More</a>
        </div>
      </div>
    </div>
  </li>

      <li class="post_item">
  <div class="excerpt">
    <div class="excerpt_header">
      <h3 class="post_link">
        <a href="https://bengtan.com/blog/recipe-for-websql/">A recipe for recreating the functionality of Web SQL</a>
      </h3>
      <div class="post_meta">
  
    <svg class="icon">
  <use xlink:href="#calendar"></use>
</svg>
    <span class="post_date">
      9 Feb 2021</span>
</div>

    </div>
      <div class="excerpt_footer">
        <div>
          <p class="pale">
            
              Firstly, let&rsquo;s step back briefly in history.
Web SQL was a way for javascript (and web apps) to use a relational database (specifically, sqlite) that was stored in the web browser (ie. client side). It was popular amongst front-end developers for a while as it was a convenient and powerful method for storing and …
            
          </p>
          <a href="https://bengtan.com/blog/recipe-for-websql/" class="excerpt_more button">Read More</a>
        </div>
      </div>
    </div>
  </li>

      <li class="post_item">
  <div class="excerpt">
    <div class="excerpt_header">
      <h3 class="post_link">
        <a href="https://bengtan.com/blog/app-startup-vs-content-startup/">App Startup vs Content Startup</a>
      </h3>
      <div class="post_meta">
  
    <svg class="icon">
  <use xlink:href="#calendar"></use>
</svg>
    <span class="post_date">
      7 Feb 2021</span>
</div>

    </div>
      <div class="excerpt_footer">
        <div>
          <p class="pale">
            
              Here is something that occurred to me recently. It&rsquo;s not a law or anything, but just a thought-provoking observation. I find it interesting, and maybe it&rsquo;s useful as a tool in thinking about startups.
Most startups are either an app startup or a content startup.
What do I mean? Let&rsquo;s back up a bit and …
            
          </p>
          <a href="https://bengtan.com/blog/app-startup-vs-content-startup/" class="excerpt_more button">Read More</a>
        </div>
      </div>
    </div>
  </li>

      <li class="post_item">
  <div class="excerpt">
    <div class="excerpt_header">
      <h3 class="post_link">
        <a href="https://bengtan.com/blog/a-new-beginning/">A New Beginning</a>
      </h3>
      <div class="post_meta">
  
    <svg class="icon">
  <use xlink:href="#calendar"></use>
</svg>
    <span class="post_date">
      2 Feb 2021</span>
</div>

    </div>
      <div class="excerpt_footer">
        <div>
          <p class="pale">
            
              This blog represents a new beginning and I&rsquo;m both excited and trepidatious.
You see, I&rsquo;ve considered blogging at one time or another over the last 15-20 years, but I&rsquo;ve always been too busy with more important or fun &lsquo;stuff&rsquo;. Everytime I think about it, it sounds like a great idea &hellip; …
            
          </p>
          <a href="https://bengtan.com/blog/a-new-beginning/" class="excerpt_more button">Read More</a>
        </div>
      </div>
    </div>
  </li>

    <li>


    </li>
  </ul>
<aside class="sidebar">
  <section class="sidebar_inner">
    
      <h2>Beng Tan</h2>
      <div class="sidebar_description">
        Hi! I&rsquo;m a freelance <a href="/resume">software engineer</a>. I write about software, tech, startups and random things.
      </div>
    <h2 class="mt-4">Featured Posts</h2>
    <ul>
      <li>
        <a href="https://bengtan.com/css-named-colours-picker/" class="nav-link">CSS Named Colours Picker</a>
      </li>
    </ul>
    <h2 class="mt-4">Recent Posts</h2>
    <ul class="flex-column">
      <li>
        <a href="https://bengtan.com/blog/reading-long-json-snippets/" class="nav-link">My go-to tool for reading long JSON snippets</a>
      </li>
      <li>
        <a href="https://bengtan.com/blog/recipe-for-websql/" class="nav-link">A recipe for recreating the functionality of Web SQL</a>
      </li>
      <li>
        <a href="https://bengtan.com/blog/app-startup-vs-content-startup/" class="nav-link">App Startup vs Content Startup</a>
      </li>
      <li>
        <a href="https://bengtan.com/blog/a-new-beginning/" class="nav-link">A New Beginning</a>
      </li>
    </ul>
  </section>
</aside>

</div>


    </main><svg width="0" height="0" class="hidden">
  <symbol viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg" id="facebook">
    <path d="M437 0H75C33.648 0 0 33.648 0 75v362c0 41.352 33.648 75 75 75h151V331h-60v-90h60v-61c0-49.629 40.371-90 90-90h91v90h-91v61h91l-15 90h-76v181h121c41.352 0 75-33.648 75-75V75c0-41.352-33.648-75-75-75zm0 0"></path>
  </symbol>
  <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18.001 18.001" id="twitter">
    <path d="M15.891 4.013c.808-.496 1.343-1.173 1.605-2.034a8.68 8.68 0 0 1-2.351.861c-.703-.756-1.593-1.14-2.66-1.14-1.043 0-1.924.366-2.643 1.078a3.56 3.56 0 0 0-1.076 2.605c0 .309.039.585.117.819-3.076-.105-5.622-1.381-7.628-3.837-.34.601-.51 1.213-.51 1.846 0 1.301.549 2.332 1.645 3.089-.625-.053-1.176-.211-1.645-.47 0 .929.273 1.705.82 2.388a3.623 3.623 0 0 0 2.115 1.291c-.312.08-.641.118-.979.118-.312 0-.533-.026-.664-.083.23.757.664 1.371 1.291 1.841a3.652 3.652 0 0 0 2.152.743C4.148 14.173 2.625 14.69.902 14.69c-.422 0-.721-.006-.902-.038 1.697 1.102 3.586 1.649 5.676 1.649 2.139 0 4.029-.542 5.674-1.626 1.645-1.078 2.859-2.408 3.639-3.974a10.77 10.77 0 0 0 1.172-4.892v-.468a7.788 7.788 0 0 0 1.84-1.921 8.142 8.142 0 0 1-2.11.593z"
      ></path>
  </symbol>
  <symbol aria-hidden="true" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" id="mail">
    <path  d="M502.3 190.8c3.9-3.1 9.7-.2 9.7 4.7V400c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V195.6c0-5 5.7-7.8 9.7-4.7 22.4 17.4 52.1 39.5 154.1 113.6 21.1 15.4 56.7 47.8 92.2 47.6 35.7.3 72-32.8 92.3-47.6 102-74.1 131.6-96.3 154-113.7zM256 320c23.2.4 56.6-29.2 73.4-41.4 132.7-96.3 142.8-104.7 173.4-128.7 5.8-4.5 9.2-11.5 9.2-18.9v-19c0-26.5-21.5-48-48-48H48C21.5 64 0 85.5 0 112v19c0 7.4 3.4 14.3 9.2 18.9 30.6 23.9 40.7 32.4 173.4 128.7 16.8 12.2 50.2 41.8 73.4 41.4z"></path>
  </symbol>
  <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" id="calendar">
    <path d="M452 40h-24V0h-40v40H124V0H84v40H60C26.916 40 0 66.916 0 100v352c0 33.084 26.916 60 60 60h392c33.084 0 60-26.916 60-60V100c0-33.084-26.916-60-60-60zm20 412c0 11.028-8.972 20-20 20H60c-11.028 0-20-8.972-20-20V188h432v264zm0-304H40v-48c0-11.028 8.972-20 20-20h24v40h40V80h264v40h40V80h24c11.028 0 20 8.972 20 20v48z"></path>
    <path d="M76 230h40v40H76zm80 0h40v40h-40zm80 0h40v40h-40zm80 0h40v40h-40zm80 0h40v40h-40zM76 310h40v40H76zm80 0h40v40h-40zm80 0h40v40h-40zm80 0h40v40h-40zM76 390h40v40H76zm80 0h40v40h-40zm80 0h40v40h-40zm80 0h40v40h-40zm80-80h40v40h-40z"></path>
  </symbol>
  <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" id="github">
    <path d="M255.968 5.329C114.624 5.329 0 120.401 0 262.353c0 113.536 73.344 209.856 175.104 243.872 12.8 2.368 17.472-5.568 17.472-12.384 0-6.112-.224-22.272-.352-43.712-71.2 15.52-86.24-34.464-86.24-34.464-11.616-29.696-28.416-37.6-28.416-37.6-23.264-15.936 1.728-15.616 1.728-15.616 25.696 1.824 39.2 26.496 39.2 26.496 22.848 39.264 59.936 27.936 74.528 21.344 2.304-16.608 8.928-27.936 16.256-34.368-56.832-6.496-116.608-28.544-116.608-127.008 0-28.064 9.984-51.008 26.368-68.992-2.656-6.496-11.424-32.64 2.496-68 0 0 21.504-6.912 70.4 26.336 20.416-5.696 42.304-8.544 64.096-8.64 21.728.128 43.648 2.944 64.096 8.672 48.864-33.248 70.336-26.336 70.336-26.336 13.952 35.392 5.184 61.504 2.56 68 16.416 17.984 26.304 40.928 26.304 68.992 0 98.72-59.84 120.448-116.864 126.816 9.184 7.936 17.376 23.616 17.376 47.584 0 34.368-.32 62.08-.32 70.496 0 6.88 4.608 14.88 17.6 12.352C438.72 472.145 512 375.857 512 262.353 512 120.401 397.376 5.329 255.968 5.329z"></path>
  </symbol>
  <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 212 212" id="gitlab">
    <path d="M12.3 74.7h54L43.3 3c-1-3.6-6.4-3.6-7.6 0L12.3 74.8z" />
    <path d="M12.3 74.7L.5 111c-1 3.2 0 6.8 3 8.8l101.6 74-92.5-119z"/>
    <path d="M105 193.7l-38.6-119h-54l92.7 119z"/>
    <path d="M105 193.7l38.7-119H66.4l38.7 119z"/>
    <path d="M105 193.7l38.7-119H198l-93 119z"/>
    <path d="M198 74.7l11.6 36.2c1 3 0 6.6-3 8.6l-101.5 74 93-119z"/>
    <path d="M198 74.7h-54.3L167 3c1.2-3.6 6.4-3.6 7.6 0L198 74.8z"/> 
  </symbol>
  <symbol viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" id="rss">
    <circle cx="3.429" cy="20.571" r="3.429"></circle>
    <path d="M11.429 24h4.57C15.999 15.179 8.821 8.001 0 8v4.572c6.302.001 11.429 5.126 11.429 11.428z"></path>
    <path d="M24 24C24 10.766 13.234 0 0 0v4.571c10.714 0 19.43 8.714 19.43 19.429z"></path>
  </symbol>
  <symbol viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg" id="linkedin">
    <path d="M437 0H75C33.648 0 0 33.648 0 75v362c0 41.352 33.648 75 75 75h362c41.352 0 75-33.648 75-75V75c0-41.352-33.648-75-75-75zM181 406h-60V196h60zm0-240h-60v-60h60zm210 240h-60V286c0-16.54-13.46-30-30-30s-30 13.46-30 30v120h-60V196h60v11.309C286.719 202.422 296.93 196 316 196c40.691.043 75 36.547 75 79.688zm0 0"></path>
  </symbol>
  <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 612 612" id="arrow">
    <path d="M604.501 440.509L325.398 134.956c-5.331-5.357-12.423-7.627-19.386-7.27-6.989-.357-14.056 1.913-19.387 7.27L7.499 440.509c-9.999 10.024-9.999 26.298 0 36.323s26.223 10.024 36.222 0l262.293-287.164L568.28 476.832c9.999 10.024 26.222 10.024 36.221 0 9.999-10.023 9.999-26.298 0-36.323z"></path>
  </symbol>
  <symbol viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg" id="carly">
    <path d="M504.971 239.029L448 182.059V84c0-46.317-37.682-84-84-84h-44c-13.255 0-24 10.745-24 24s10.745 24 24 24h44c19.851 0 36 16.149 36 36v108c0 6.365 2.529 12.47 7.029 16.971L454.059 256l-47.029 47.029A24.002 24.002 0 0 0 400 320v108c0 19.851-16.149 36-36 36h-44c-13.255 0-24 10.745-24 24s10.745 24 24 24h44c46.318 0 84-37.683 84-84v-98.059l56.971-56.971c9.372-9.372 9.372-24.568 0-33.941zM112 192V84c0-19.851 16.149-36 36-36h44c13.255 0 24-10.745 24-24S205.255 0 192 0h-44c-46.318 0-84 37.683-84 84v98.059l-56.971 56.97c-9.373 9.373-9.373 24.568 0 33.941L64 329.941V428c0 46.317 37.682 84 84 84h44c13.255 0 24-10.745 24-24s-10.745-24-24-24h-44c-19.851 0-36-16.149-36-36V320c0-6.365-2.529-12.47-7.029-16.971L57.941 256l47.029-47.029A24.002 24.002 0 0 0 112 192z"></path>
  </symbol>
  <symbol viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" id="copy">
    <path d="M23 2.75A2.75 2.75 0 0 0 20.25 0H8.75A2.75 2.75 0 0 0 6 2.75v13.5A2.75 2.75 0 0 0 8.75 19h11.5A2.75 2.75 0 0 0 23 16.25zM18.25 14.5h-7.5a.75.75 0 0 1 0-1.5h7.5a.75.75 0 0 1 0 1.5zm0-3h-7.5a.75.75 0 0 1 0-1.5h7.5a.75.75 0 0 1 0 1.5zm0-3h-7.5a.75.75 0 0 1 0-1.5h7.5a.75.75 0 0 1 0 1.5z"></path>
    <path d="M8.75 20.5a4.255 4.255 0 0 1-4.25-4.25V2.75c0-.086.02-.166.025-.25H3.75A2.752 2.752 0 0 0 1 5.25v16A2.752 2.752 0 0 0 3.75 24h12a2.752 2.752 0 0 0 2.75-2.75v-.75z"></path>
  </symbol>
  <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512.001 512.001" id="closeme">
    <path d="M284.286 256.002L506.143 34.144c7.811-7.811 7.811-20.475 0-28.285-7.811-7.81-20.475-7.811-28.285 0L256 227.717 34.143 5.859c-7.811-7.811-20.475-7.811-28.285 0-7.81 7.811-7.811 20.475 0 28.285l221.857 221.857L5.858 477.859c-7.811 7.811-7.811 20.475 0 28.285a19.938 19.938 0 0 0 14.143 5.857 19.94 19.94 0 0 0 14.143-5.857L256 284.287l221.857 221.857c3.905 3.905 9.024 5.857 14.143 5.857s10.237-1.952 14.143-5.857c7.811-7.811 7.811-20.475 0-28.285L284.286 256.002z"></path>
  </symbol>
  <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" id="open-menu">
    <path d="M492 236H20c-11.046 0-20 8.954-20 20s8.954 20 20 20h472c11.046 0 20-8.954 20-20s-8.954-20-20-20zm0-160H20C8.954 76 0 84.954 0 96s8.954 20 20 20h472c11.046 0 20-8.954 20-20s-8.954-20-20-20zm0 320H20c-11.046 0-20 8.954-20 20s8.954 20 20 20h472c11.046 0 20-8.954 20-20s-8.954-20-20-20z"></path>
  </symbol>
  <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id="instagram">
    <path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z"/>
  </symbol>
  <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id=youtube>
    <path d="M19.615 3.184c-3.604-.246-11.631-.245-15.23 0-3.897.266-4.356 2.62-4.385 8.816.029 6.185.484 8.549 4.385 8.816 3.6.245 11.626.246 15.23 0 3.897-.266 4.356-2.62 4.385-8.816-.029-6.185-.484-8.549-4.385-8.816zm-10.615 12.816v-8l8 3.993-8 4.007z"/>
  </symbol>
  <symbol xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id="stackoverflow">
    <path d="M21 27v-8h3v11H0V19h3v8h18z"></path><path d="M17.1.2L15 1.8l7.9 10.6 2.1-1.6L17.1.2zm3.7 14.7L10.6 6.4l1.7-2 10.2 8.5-1.7 2zM7.2 12.3l12 5.6 1.1-2.4-12-5.6-1.1 2.4zm-1.8 6.8l13.56 1.96.17-2.38-13.26-2.55-.47 2.97zM19 25H5v-3h14v3z"></path>
  </symbol>
</svg>

<footer class="footer">
  <div class="footer_inner wrap pale">
    <img src='https://bengtan.com/images/logo.png' class="icon icon_2 transparent">
    <p>Copyright 2021-<span class="year"></span> BENG TAN. All Rights Reserved</p><a class="to_top" href="#documentTop">
  <svg class="icon">
  <use xlink:href="#arrow"></use>
</svg>
</a>

  </div>
</footer>

    <script type="text/javascript" src="https://bengtan.com/js/bundle.min.48fa905ac5f708cd2dceac23a468b062d6c96282a530545826072e265b7cdd156320cbd7e56ba938d8476da637c260b713b2f7dae8b7ce8d8647055082418dcc.js" integrity="sha512-SPqQWsX3CM0tzqwjpGiwYtbJYoKlMFRYJgcuJlt83RVjIMvX5WupONhHbaY3wmC3E7L32ui3zo2GRwVQgkGNzA==" crossorigin="anonymous"></script>
    
  </body>
</html>
```