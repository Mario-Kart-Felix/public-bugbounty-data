```ï»¿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">         <head>        <title>Logitech Alert Login</title>                 <meta name="description" content="Login to your Logitech Alert account to access your security cameras." />        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />        <meta http-equiv="cache-control" content="no-cache">        <meta http-equiv="pragma" content="no-cache">        <meta http-equiv="expires" content="-1">        <meta http-equiv="X-UA-Compatible" content="requiresActiveX=true" />        <script type="text/javascript">                        // Localized strings:            var strings = {                "title": {                    "en": "You need Adobe Flash Player!",                    "de": "Sie benÃ¶tigen Adobe Flash Player!",                    "es": "Necesita Adobe Flash Player.",                    "fr": "Vous avez besoin d'Adobe Flash Player!",                    "it": "Ã necessario Adobe Flash Player.",                    "nl": "U heeft Adobe Flash Player nodig!"                },                "message": {                    "en": "To use Logitech Alert Online you must install or enable Adobe Flash Player version 10.2 or greater.",                    "de": "Zur Verwendung von Logitech Alert-Online mÃ¼ssen Sie Adobe Flash Player Version 10.2 oder hÃ¶her installieren oder aktivieren.",                    "es": "Para usar Logitech Alert Online debe instalar o activar Adobe Flash Player $'''{'''version_major}.$'''{'''version_minor} o una versiÃ³n posterior.",                    "fr": "Pour utiliser Logitech Alert en ligne, vous devez installer ou activer Adobe Flash Player version 10.2 ou version ultÃ©rieure.",                    "it": "Per utilizzare Logitech Alert Online Ã¨ necessario installare o attivare Adobe Flash Player versione $'{'version_major}.$'{'version_minor} o superiore.",                    "nl": "Als u Logitech Alert Online wilt gebruiken, moet u Adobe Flash Player versie $'{'version_major}.$'{'version_minor} of hoger installeren of inschakelen."                },                                "button": {                    "en": "Get it!",                    "de": "Jetzt installieren!",                    "es": "Â¡ConsÃ­galo!",                    "fr": "L'obtenir maintenant!",                    "it": "Scaricalo!",                    "nl": "Downloaden!"                }            };            function getString(id) {                var languageInfo = navigator.userLanguage || navigator.language;                var language = languageInfo.substr(0, 2);                if (strings[id][language]) {                    return strings[id][language];                }                return strings[id]["en"];            }        </script>        <!-- Include CSS to eliminate any default margins/padding and set the height of the html element and              the body element to 100%, because Firefox, or any Gecko based browser, interprets percentage as              the percentage of the height of its parent container, which has to be set explicitly.  Initially,              don't display flashContent div so it won't show if JavaScript disabled.        -->        <style type="text/css" media="screen">             html, body            {                height:100%;                width:100%;            }            body             {                 margin: 0px;                 padding: 0px;                 overflow: auto;                 text-align: center;                 background-color: white;             }               #flashContent            {                display: none;            }            #noFlashMessageRegion            {                position: relative;                width: 785px;                height: 485px;                margin-top: 60px;                margin-left: auto;                margin-right: auto;            }            #noFlashMessageGreyBox             {                position: absolute;                left: 0;                top: 0;                                width: 775px;                height: 475px;                                border: 5px solid;                border-width: medium;                                background-image:url('image/gradient.png');                background-repeat:repeat-x;                                     min-height: 475px;                display: table-cell;                vertical-align: middle;            }            #noFlashMessageGreyBox .bg             {                position:absolute;                height: 9px;                width: 9px;                background: url(image/OuterBoxCorners.png) no-repeat;            }            #noFlashMessageGreyBox .topLeft             {                top:-3px;                left:-3px;                background-position:top left;            }            #noFlashMessageGreyBox .topRight             {                top:-3px;                right:-3px;                background-position:top right;            }            #noFlashMessageGreyBox .bottomLeft             {                bottom:-3px;                left:-3px;                background-position:bottom left;            }            #noFlashMessageGreyBox .bottomRight             {                bottom:-3px;                right:-3px;                background-position:bottom right;            }            #noFlashMessageGreyBox .content {            }                        #noFlashLogitechBadge            {                position: absolute;                left: 35px;                top: 35px;                width: 229px;                height: 58px;            }            #noFlashLogitechLogo            {                position: absolute;                left: 35px;                bottom: 35px;                width: 72px;                height: 62px;            }            #noFlashLogitechBackground            {                position: absolute;                right: 0px;                bottom: 0px;                width: 181px;                height: 371px;            }            #noFlashMessageTitle            {                font-size: 24px;                font-color: black;            }            #noFlashMessageWhiteBox            {                position: absolute;                left: 175px;                top: 90px;                                height: 252px;                width: 360px;                                border: 5px solid;                border-width: medium;                border-color: #b3b3b3;                background-color: white;                                text-align: left;                padding: 30px;                font-family: arial, san-serif;                font-size: 11px;                font-color: #666666;            }            #noFlashMessageWhiteBox .bg            {                position:absolute;                height: 9px;                width: 9px;                background: url(image/InnerBoxCorners.png) no-repeat;            }            #noFlashMessageWhiteBox .topLeft             {                top:-3px;                left:-3px;                background-position:top left;            }            #noFlashMessageWhiteBox .topRight             {                top:-3px;                right:-3px;                background-position:top right;            }            #noFlashMessageWhiteBox .bottomLeft             {                bottom:-3px;                left:-3px;                background-position:bottom left;            }            #noFlashMessageWhiteBox .bottomRight             {                bottom:-3px;                right:-3px;                background-position:bottom right;            }            #noFlashMessageWhiteBox .content {                position: relative            }            #noFlashMessageWhiteBox .TealGetItButton            {                width: 122px;                height: 52px;                bottom: 20px;                right: 20px;            }            #noFlashButton            {                position: absolute;                bottom: 30px;                right: 30px;            }            #noFlashButton a            {                color: #ffffff;                text-decoration: none;            }            #noFlashButtonText            {                font-size: 14px;                font-weight: bold;                left: 0;                position:absolute;                text-align:center;                top: 11px;                width: 100%;            }        </style>                <script type="text/javascript" src="js/dvs.js"></script>        <script type="text/javascript" src="swfobject.js"></script>                <script type="text/javascript">            var webClient = "FlexClient.swf?v=1.7.13";            var revueClient = "RevueClient.swf?v=1.7.13";            function redirectIfMobile() {                if (navigator.userAgent.match(/iphone/i)) {                        window.location = "/m?target=iphone";                }                else if (navigator.userAgent.match(/ipod/i)) {                        window.location = "/m?target=iphone";                }                else if (navigator.userAgent.match(/ipad/i)) {                        window.location = "/m?target=iphone";                }                else if (navigator.userAgent.match(/blackberry/i)) {                        window.location = "/m?target=blackberry";                }            }            function embedFlashClient(client) {                // For version detection, set to min. required Flash Player version, or 0 (or 0.0.0), for no version detection.                 var swfVersionStr = "10.2.0";                // To use express install, set to playerProductInstall.swf, otherwise the empty string.                var xiSwfUrlStr = "playerProductInstall.swf";                var flashvars = {};                var params = {};                params.quality = "high";                params.bgcolor = client == revueClient ? "#000000" : "white";                params.allowscriptaccess = "sameDomain";                params.allowfullscreen = "true";                var attributes = {};                attributes.id = "flashClient";                attributes.name = "flashClient";                attributes.align = "middle";                //attributes.tabIndex = "0";  //Was this causing issues in Chrome for keypresses?                swfobject.embedSWF(                    client, "flashContent",                     "100%", "100%",                     swfVersionStr, xiSwfUrlStr,                     flashvars, params, attributes);                            // JavaScript enabled so display the flashContent div in case it is not replaced with a swf object.                            swfobject.createCSS("#flashContent", "display:block;text-align:left;");            }                            function getClient() {                var client = webClient;                // Default client based on user agent.                var client = (navigator.userAgent.match(/GoogleTV/i)) ? revueClient : webClient;                                // Overridable by query parameter                var queryClient = Logitech.Dvs.getQueryParam("client");                if (queryClient == "web") {                    client = webClient;                }                else if (queryClient == "revue") {                    client = revueClient;                }                return client;            }                function setFocusToFlash() {                var flashObj = document.getElementById("flashClient");                if (flashObj) {                    flashObj.focus();                }            }               </script>                        <!-- Enable Browser History by replacing useBrowserHistory tokens with two hyphens -->        <!-- BEGIN Browser History required section -->        <link rel="stylesheet" type="text/css" href="history/history.css" />        <script type="text/javascript" src="history/history.js"></script>        <!-- END Browser History required section -->                              <script type="text/javascript">            redirectIfMobile();            embedFlashClient(getClient());        </script>    </head>    <body onLoad="setFocusToFlash()">        <!-- SWFObject's dynamic embed method replaces this alternative HTML content with Flash content when enough              JavaScript and Flash plug-in support is available. The div is initially hidden so that it doesn't show             when JavaScript is disabled.                -->        <div id="flashContent">            <div id="noFlashMessageRegion">                <div id="noFlashMessageGreyBox">                    <span class="topLeft bg"><!--for IE6--></span>                    <span class="topRight bg"><!--for IE6--></span>                    <span class="bottomLeft bg"><!--for IE6--></span>                    <span class="bottomRight bg"><!--for IE6--></span>                    <div class="content">                         <div id="noFlashMessageWhiteBox">                            <span class="topLeft bg"><!--for IE6--></span>                            <span class="topRight bg"><!--for IE6--></span>                            <span class="bottomLeft bg"><!--for IE6--></span>                            <span class="bottomRight bg"><!--for IE6--></span>                            <div id="noFlashMessageTitle">                                <script type="text/javascript">                                    document.write(getString("title"));                                </script>                            </div>                            <p></p>                            <p>                                <script type="text/javascript">                                    document.write(getString("message"));                                </script>                            </p>                            <p></p>                            <a href='http://get.adobe.com/flashplayer/'>                                <script type="text/javascript">                                    document.write("<img src='" + document.location.protocol + "//www.adobe.com/images/shared/download_buttons/get_flash_player.gif' style='border-style: none; margin: 10px 120px' alt='Get Adobe Flash player' />" );                                </script>                            </a>                            <p></p>                            <div id="noFlashButton">                                <a href='http://get.adobe.com/flashplayer/'>                                    <img src="image/BlankGetItButton.png"/>                                    <div id="noFlashButtonText">                                        <script type="text/javascript">                                            document.write(getString("button"));                                        </script>                                    </div>                                </a>                            </div>                        </div>                        <div id="noFlashLogitechBadge"><img src="image/LogitechAlertBadge.png"/></div>                        <div id="noFlashLogitechLogo"><img src="image/Logo.png"/></div>                        <div id="noFlashLogitechBackground"><img src="image/LoginBackground.png"/></div>                    </div>                </div>            </div>        </div>                        <noscript>            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="100%" height="100%" id="FlexClient">                <param name="movie" value="FlexClient.swf" />                <param name="quality" value="high" />                <param name="bgcolor" value="white" />                <param name="allowScriptAccess" value="sameDomain" />                <param name="allowFullScreen" value="true" />                <!--[if !IE]>-->                <object type="application/x-shockwave-flash" data="FlexClient.swf" width="100%" height="100%">                    <param name="quality" value="high" />                    <param name="bgcolor" value="white" />                    <param name="allowScriptAccess" value="sameDomain" />                    <param name="allowFullScreen" value="true" />                <!--<![endif]-->                <!--[if gte IE 6]>-->                    <p>                        <!-- Can't localize since scripting isn't working -->                        Either scripts and active content are not permitted to run or Adobe Flash Player version                        10.2.0 or greater is not installed.                    </p>                <!--<![endif]-->                    <a href="http://get.adobe.com/flashplayer/">                        <img src="//www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash Player" />                    </a>                <!--[if !IE]>-->                </object>                <!--<![endif]-->            </object>        </noscript>   </body></html>```