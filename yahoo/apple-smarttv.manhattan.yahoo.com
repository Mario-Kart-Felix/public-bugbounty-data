```<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="cache-control" content="max-age=0"/>
    <meta http-equiv="cache-control" content="no-cache"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT"/>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=1280,height=720,user-scalable=no,initial-scale=1,maximum-scale=1.5">
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,700' rel='stylesheet' type='text/css'>
    <script>
        var query = window.location.search.substring(1);
        window.startTime = Date.now();

        var getParameterByName = function(name) {
            var match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search);
            return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
        };

        var manVal = getParameterByName('man');
        var manufacturerVal = getParameterByName('manufacturer');
        if (manVal) {
            window.man = manVal;
        } else if (manufacturerVal) {
            window.man = manufacturerVal;
        }

        var isVizio = (window.man == 'vizio');
        if (isVizio && (getParameterByName('soc') == 'mtk')) {
            window.appid = "vizio-mtk";
        }

        if(query.indexOf("noHLS=true") > -1){
            window.noHLS = true;
        }
        if(query.indexOf("hls=true") > -1 || isVizio){
            window.hls = true;
        }
        if(query.indexOf("forceDisableFFRW=true") > -1){
            window.forceDisableFFRW = true;
        }

        var loadingImage = new Image();
        loadingImage.src = 'assets/img/loading-yahoo.png';

    </script>
    <title>Yahoo</title>
</head>
<body style="background-color:#000000;overflow:hidden;margin:0;padding:0">
    <div id="screen-tts-hidden" tabindex="1" role="alert" aria-live="assertive" style="display:none;visibility:hidden;z-index:0;position:absolute;height:0;width:0;padding:0;margin:0;border:0;opacity:0">Loading Yahoo</div>
    <div id="screen-container">
        <div id="loading-image" style="position:absolute;top:0px;left:0px;"></div>
        <script>
            document.getElementById("loading-image").style.background = "center center url('assets/img/loading-yahoo.png') no-repeat";
            if (window.innerHeight > 720) {
                document.body.style.width = '1920px';
                document.body.style.height = '1080px';
                document.getElementById("loading-image").style.width = '1920px';
                document.getElementById("loading-image").style.height = '1080px';
                document.getElementById("loading-image").style.backgroundSize = '1920px 1080px';
            } else {
                document.body.style.width = '1280px';
                document.body.style.height = '720px';
                document.getElementById("loading-image").style.width = '1280px';
                document.getElementById("loading-image").style.height = '720px';
                document.getElementById("loading-image").style.backgroundSize = '1280px 720px';
            }
        </script>
    </div>

    <script src="assets/screen.js"></script>
    <script src="https://s.yimg.com/ss/rapid3.js"></script>
    <div style="font-family: 'Source Sans Pro'">&nbsp;</div>
</body>

</html>
```