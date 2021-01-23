```ï»¿<!DOCTYPE html><html><head> <meta name="viewport" content="width=device-width, initial-scale=1"> <meta http-equiv="Content-Type" content="text/html; charset=UTF-8;IE=edge"> <title>Microsoft Azure App Service - Welcome</title> <link rel="shortcut icon" href="https://appservice.azureedge.net/images/favicon.ico" type="image/x-icon"><style type="text/css"> @font-face{font-family: 'SegoeLight'; src: url(//:) format('no404'), url(https://appservice.azureedge.net/fonts/segoe-ui-light-latest.woff2); font-weight: normal; font-style: normal;}html{height: 100%; width: 100%}.holder{width: 100vw; height: 100vh; position: relative}.frame{width: 100vw; height: 100vh; border: none; overflow: hidden;}body{background-color: #0078d7; color: #fff; font-family: 'SegoeLight', helvetica, sans-serif; font-size: 2.7vmin; margin: 0; padding: 0; overflow: hidden;}.content{position: absolute; left: 3.8vw; top: 5.5vh; height: 30vh;}.content .azureLogo{height: 2.7vmin; width: 2.7vmin; position: relative; top: 0.3vmin;}.content .azureBrand{margin: 0 0 6.5vh .2vh; font-family: 'Segoe UI', helvetica, sans-serif; font-size: 2.7vmin;}.content .bodyHeadline{margin: 3.5vh 0 1vh 0; font-size: 5.1vmin;}.content .bodyContent{margin: 1.5vh 0 3.5vh 0; font-family: 'Segoe UI', helvetica, sans-serif; font-size: 2.7vmin;}.content .bodyContent a{color: #fff; text-decoration: underline;}.content .bodyContent a:hover{opacity: .7;}</style> <script type="text/javascript">window.onload=function(){try{var a=window.location.hostname; if (a.includes(".azurewebsites.net")){a=a.replace(".azurewebsites.net", "")}var b=document.getElementById("quickStartLink"); b.setAttribute("href", b.getAttribute("href") + "&sitename=" + a);}catch (d){}}</script> <link rel="stylesheet" type="text/css" href="https://appservice.azureedge.net/css/main.min.css"></head><body> <iframe src="https://appservicelandingpage.trafficmanager.net/V2" scrolling="no" frameborder="0" width="100vh" allowfullscreen="" class="frame"></iframe> <div class="content"> <img class="azureLogo" src="https://appservice.azureedge.net/images/azureLogo.svg"> <span class="azureBrand">Microsoft Azure</span> <div class="bodyHeadline">Your App Service app is up and running</div><div class="bodyContent">Go to your app's <a id='quickStartLink' href='https://go.microsoft.com/fwlink/?linkid=838467'>Quick Start</a> guide in the Azure portal to get started or read our <a id='docsLink' href='https://go.microsoft.com/fwlink/?linkid=837503'>deployment documentation</a>.</div></div></body></html>```