``` <!doctype html> <html> <head> <meta charset="utf-8"> <meta name="viewport" content="width=device-width"> <link rel="icon" type="image/png" href="https://adtester.dailymotion.com/lab/static/images/favicon.png?v=1"> <title>Dailymotion ad tester</title> <link rel="stylesheet" href="https://adtester.dailymotion.com/lab/static/styles.css"> </head> <body class=""> <div class="playerlab-topbar"> <svg style="position: absolute; width: 1px; height: 1px"> <defs> <linearGradient x1="100%" y1="0%" x2="0%" y2="100%" id="blue-gradient"> <stop stop-color="#24d2f0" offset="0%"></stop> <stop stop-color="#1dabfc" offset="100%"></stop> </linearGradient> </defs> </svg> <span class="playerlab-topbar-tagline"> dailymotion <span class="playerlab-topbar-tagline-italic">| Ad Tester</span> </span> </div> <div class="playerlab-video-area"> <div class="playerlab-video"> <iframe class="playerlab-iframe" src="https://www.dailymotion.com/embed/video/x3rdtfy?api=postMessage&apimode=json&origin=https%3A%2F%2Fadtester.dailymotion.com&vmap-url=https%3A%2F%2Fadtester.dailymotion.com%2Fvmap%3Fpreroll%3Dcustomvast%26midroll%3D%26postroll%3D%26liveads%3D%26lab-ads-stack%3Ddm%26lab-customadtype%3Dlinear%26lab-midroll-time%3D15%26lab-midroll-interval%3D30%26ima-enable%3D0" frameborder="0"></iframe> </div> </div> <form class="playerlab-sidebar" method="post" action="/lab/updatesettings"> <input type="submit" class="playerlab-sidebar-apply" value="Apply"> <h2 class="playerlab-sidebar-title"> Integration </h2> <div class="playerlab-sidebar-section player-autoplay-section"> <h3 class="playerlab-sidebar-subtitle">Autoplay</h3> <label class="playerlab-sidebar-radio"> <input type="radio" name="autoplay" value="1"> On </label> <label class="playerlab-sidebar-radio"> <input type="radio" name="autoplay" value="0" checked="checked"> Off </label> </div> <h2 class="playerlab-sidebar-title"> Advertising </h2> <div class="playerlab-sidebar-section playerlab-local-vast-section"> <label style="margin-bottom: 20px; display: block;"> Test your ad tags with the Dailymotion player. Simply paste your VAST URL or VAST XML response directly below, then press the Apply button. <br><br>VAST over 10 000 characters will be truncaded. If your VAST is too big, please host it and past the URL here. You can host it for free on https://designer.mocky.io/design, set the content type to application/xml. </label> <textarea name="lab-local-vast" class="playerlab-sidebar-textarea" cols="70" rows="20" maxlength="10000" placeholder="Input can be a VAST URL or VAST XML response"></textarea> <div class="playerlab-local-vast-count"><div class="playerlab-local-vast-char-count-current">0</div> / 10000</div> </div> <div class="playerlab-sidebar-section"> <h3 class="playerlab-sidebar-subtitle">Ad positions</h3> <label class="playerlab-sidebar-checkbox"> <input type="checkbox" name="lab-ads-preroll" value="1" checked="checked"> Preroll </label> <label class="playerlab-sidebar-checkbox"> <input type="checkbox" name="lab-ads-midroll" value="1"> Midroll (15 seconds) </label> <label class="playerlab-sidebar-checkbox"> <input type="checkbox" name="lab-ads-postroll" value="1"> Postroll </label> <label class="playerlab-sidebar-checkbox"> <input type="checkbox" name="lab-ads-liveads" value="1"> Liveads </label> </div> <div class="playerlab-sidebar-section"> <h3 class="playerlab-sidebar-subtitle">Player Events</h3> <div class="playerlab-sidebar-div playerlab-api-events"></div> </div> <div class="playerlab-sidebar-section gu-hide"> <h3 class="playerlab-sidebar-subtitle">VPAID Events and methods calls</h3> <div class="playerlab-sidebar-div playerlab-api-events-vpaid"></div> </div> <div class="playerlab-sidebar-section"> <h3 class="playerlab-sidebar-subtitle" style="display:flex"> Ads through IMA SDK <div tooltip="This feature only works with VAST URLs or Dailymotion IMA VASTs">!</div> </h3> <label class="playerlab-sidebar-radio"> <input type="radio" name="ima-enable" value="1"> On </label> <label class="playerlab-sidebar-radio"> <input type="radio" name="ima-enable" value="0" checked="checked"> Off </label> </div> </form> <script src="https://adtester.dailymotion.com/lab/client/polyfills.f185be81e0b3f5a72beb.js"></script> <script src="https://adtester.dailymotion.com/lab/client/ui.4392bce73b5435453fce.js"></script> <script> Lab.ui.initSidebarFields()
      Lab.ui.initPlayerResize()
      Lab.ui.initPlayerLogs('ads', false)
      Lab.ui.characterCount('.playerlab-sidebar-textarea', '.playerlab-local-vast-char-count-current') </script> </body> </html> ```