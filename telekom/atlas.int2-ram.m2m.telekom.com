```<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <style type="text/css">
      [ng:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak {display: none !important;}
      body {
        background: #F2F3F2;
      }

      .init-load{
        max-width: 320px;
        height: 100vh;
        margin: 0 auto;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-orient: vertical;
        -webkit-box-direction: normal;
            -ms-flex-direction: column;
                flex-direction: column;
        -webkit-box-pack: center;
            -ms-flex-pack: center;
                justify-content: center;
      }

      .spinner-snake {
        color: #d9d9d9;
        text-indent: -99999em;
        margin: 16px auto;
        position: relative;
        width: 4em;
        height: 4em;
        border-radius: 50%;
        -webkit-box-shadow: inset 0 0 0 .6em;
                box-shadow: inset 0 0 0 .6em;
        -webkit-transform: translateZ(0) rotate(180deg);
                transform: translateZ(0) rotate(180deg);
        -webkit-animation: rotator 1.95s infinite linear;
                animation: rotator 1.95s infinite linear;
      }

      .spinner-snake:before {
        width: 2.2em;
        height: 4.2em;
        border-radius: 2.2em 0 0em 2.2em;
        top: -0.1em;
        left: -0.1em;
        -webkit-transform-origin: 2.2em 2.1em;
                transform-origin: 2.2em 2.1em;
        -webkit-animation: rotator 1s infinite ease 0.75s;
                animation: rotator 1s infinite ease 0.75s;
      }

      .spinner-snake:before, .spinner-snake:after {
        position: absolute;
        content: '';
        background: #F2F3F2;
      }

      .spinner-snake:after {
        width: 2.2em;
        height: 4.2em;
        border-radius: 0 2.2em 2.2em 0;
        top: -0.1em;
        left: 2.1em;
        -webkit-transform-origin: 0 2.1em;
                transform-origin: 0 2.1em;
        -webkit-animation: rotator 1s infinite ease;
                animation: rotator 1s infinite ease;
      }

      @-webkit-keyframes rotator {
        0% { -webkit-transform: rotate(0deg); transform: rotate(0deg); }
      100% { -webkit-transform: rotate(360deg); transform: rotate(360deg); }
      }

      @keyframes rotator {
        0% { -webkit-transform: rotate(0deg); transform: rotate(0deg); }
      100% { -webkit-transform: rotate(360deg); transform: rotate(360deg); }
      }
    </style>
  <title>Cockpit</title><meta http-equiv="Content-Security-Policy" content="base-uri 'none'; default-src 'self' 'unsafe-inline' http: https: ws: wss:; connect-src 'self' *.billwerk.com http: https: ws: wss:;  script-src 'self' open.mapquestapi.com *.twitter.com *.twimg.com 'unsafe-inline' 'unsafe-eval' data:; style-src * 'unsafe-inline' blob:; img-src * data:; font-src * data:; frame-src *;"><link rel="preload" href="app.b07a4a6ad05ce978a2ab.css" as="style"><link rel="preload" href="app.b07a4a6ad05ce978a2ab.js" as="script"><link rel="preload" href="vendors~app.b07a4a6ad05ce978a2ab.css" as="style"><link rel="preload" href="vendors~app.b07a4a6ad05ce978a2ab.js" as="script"><link rel="preload" href="vendors~branding.b07a4a6ad05ce978a2ab.css" as="style"><link rel="preload" href="vendors~branding.b07a4a6ad05ce978a2ab.js" as="script"></head>
  <body>

    <div class="init-load">
      <div class="spinner-snake"></div>
      <img class="mainlogo">
    </div>
  <c8y-ui-root class="ng-cloak" id="app"></c8y-ui-root><script type="data" id="static-options">{"modules":[],"languages":{"de":{"name":"German","nativeName":"Deutsch","url":"./de.json"},"en":{"name":"English","nativeName":"English","url":"./en.json"},"es":{"name":"Spanish","nativeName":"EspaÃ±ol","url":"./es.json"},"fr":{"name":"French","nativeName":"FranÃ§ais","url":"./fr.json"},"ja_JP":{"name":"Japanese","nativeName":"æ¥æ¬èª","url":"./ja_JP.json"},"ko":{"name":"Korean","nativeName":"íêµ­ì´ (éåèª)","url":"./ko.json"},"pl":{"name":"Polish","nativeName":"polski","url":"./pl.json"},"pt_BR":{"name":"Portuguese (Brazil)","nativeName":"PortuguÃªs (Brasil)","url":"./pt_BR.json"},"zh_CN":{"name":"Chinese (simplified)","nativeName":"æ±è¯­","url":"./zh_CN.json"}},"core_path":"assets/","data_path":"c8ydata","name":"cockpit","contextPath":"cockpit","key":"cockpit-application-key","dynamicOptionsUrl":"/apps/public/public-options/options.json","tabsHorizontal":true,"upgrade":true,"rightDrawer":true,"sensorAppOneLink":"http://onelink.to/pca6qe","contentSecurityPolicy":"base-uri 'none'; default-src 'self' 'unsafe-inline' http: https: ws: wss:; connect-src 'self' *.billwerk.com http: https: ws: wss:;  script-src 'self' open.mapquestapi.com *.twitter.com *.twimg.com 'unsafe-inline' 'unsafe-eval' data:; style-src * 'unsafe-inline' blob:; img-src * data:; font-src * data:; frame-src *;","globalTitle":"Cumulocity","legacy":false}</script><script type="text/javascript" src="bootstrap.b07a4a6ad05ce978a2ab.js"></script></body>
</html>```