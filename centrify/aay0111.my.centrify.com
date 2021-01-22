```
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content="text/html; charset=UTF-8" http-equiv="content-type" />
    <link href='/vfslow/lib/ui/../uibuild/compiled/jsutil/production/resources/fonts/open-sans.css?_ver=1607829860' rel='stylesheet' type='text/css'>

    <script src="/vfslow/lib/ui/jsutil/external/jquery-1.11.1.min.js" type="text/javascript"></script>

    <style type="text/css">

        html, body {
            height: 100%;
            margin: 0px;
        }
        body {
            color: black;
            font-size: 12px;
			background-color: #F4F4F4;
        }

        body {
    background-color: #f4f6f8 !important;
}
.loading-idaptive {
    height: 100%;
    width: 100%;
    display: table;
    position: absolute;
}
.loading-text {
    font-family: Open Sans;
    font-size: 24px;
    color: #333333;
}
.loading-ellipsis {
    display: inline-block;
    width: 0px;
}
.loading-ellipsis:after {
    overflow: hidden;
    display: inline-block;
    vertical-align: bottom;
    -webkit-animation: ellipsis steps(4,end) 2000ms infinite;
    animation: ellipsis steps(4,end) 2000ms infinite;
    content: "\2026"; /* ascii code for the ellipsis character */
    width: 0px;
}
@keyframes ellipsis {
    to {
        width: 1em;
    }
}
@-webkit-keyframes ellipsis {
    to {
        width: 1em;
    }
};

    </style>

    <script type="text/javascript">

            // The following is just an inline of
            // jsutil/external/jsuri-1.3.1.min.js
            // note the @ are escaped
            (function(e){var d={starts_with_slashes:/^\/+/,ends_with_slashes:/\/+$/,pluses:/\+/g,query_separator:/[&;]/,uri_parser:/^(?:(?![^:@]+:[^:@\/]*@)([^:\/?#.]+):)?(?:\/\/)?((?:(([^:@\/]*)(?::([^:@\/]*))?)?@)?(\[[0-9a-fA-F:.]+\]|[^:\/?#]*)(?::(\d+|(?=:)))?(:)?)((((?:[^?#](?![^?#\/]*\.[^?#\/.]+(?:[?#]|$)))*\/?)?([^?#\/]*))(?:\?([^#]*))?(?:#(.*))?)/};if(!Array.prototype.forEach){Array.prototype.forEach=function(n,h){var j,i;if(this==null){throw new TypeError(" this is null or not defined")}var m=Object(this);var g=m.length>>>0;if(typeof n!=="function"){throw new TypeError(n+" is not a function")}if(arguments.length>1){j=h}i=0;while(i<g){var l;if(i in m){l=m[i];n.call(j,l,i,m)}i++}}}function f(g){if(g){g=g.toString().replace(d.pluses,"%20");g=decodeURIComponent(g)}return g}function c(j){var k=d.uri_parser;var h=["source","protocol","authority","userInfo","user","password","host","port","isColonUri","relative","path","directory","file","query","anchor"];var g=k.exec(j||"");var i={};h.forEach(function(m,l){i[m]=g[l]||""});return i}function a(s){var r,g,j,m,q,t,o;var h=[];if(typeof(s)==="undefined"||s===null||s===""){return h}if(s.indexOf("?")===0){s=s.substring(1)}g=s.toString().split(d.query_separator);for(r=0,o=g.length;r<o;r++){j=g[r];m=j.indexOf("=");if(m!==0){q=f(j.substring(0,m));t=f(j.substring(m+1));h.push(m===-1?[j,null]:[q,t])}}return h}function b(g){this.uriParts=c(g);this.queryPairs=a(this.uriParts.query);this.hasAuthorityPrefixUserPref=null}["protocol","userInfo","host","port","path","anchor"].forEach(function(g){b.prototype[g]=function(h){if(typeof h!=="undefined"){this.uriParts[g]=h}return this.uriParts[g]}});b.prototype.hasAuthorityPrefix=function(g){if(typeof g!=="undefined"){this.hasAuthorityPrefixUserPref=g}if(this.hasAuthorityPrefixUserPref===null){return(this.uriParts.source.indexOf("//")!==-1)}else{return this.hasAuthorityPrefixUserPref}};b.prototype.isColonUri=function(g){if(typeof g!=="undefined"){this.uriParts.isColonUri=!!g}else{return !!this.uriParts.isColonUri}};b.prototype.query=function(m){var j="",h,k,g;if(typeof m!=="undefined"){this.queryPairs=a(m)}for(h=0,g=this.queryPairs.length;h<g;h++){k=this.queryPairs[h];if(j.length>0){j+="&"}if(k[1]===null){j+=k[0]}else{j+=k[0];j+="=";if(typeof k[1]!=="undefined"){j+=encodeURIComponent(k[1])}}}return j.length>0?"?"+j:j};b.prototype.getQueryParamValue=function(j){var k,h,g;for(h=0,g=this.queryPairs.length;h<g;h++){k=this.queryPairs[h];if(j===k[0]){return k[1]}}};b.prototype.getQueryParamValues=function(k){var g=[],j,m,h;for(j=0,h=this.queryPairs.length;j<h;j++){m=this.queryPairs[j];if(k===m[0]){g.push(m[1])}}return g};b.prototype.deleteQueryParam=function(m,p){var g=[],k,o,j,n,h;for(k=0,h=this.queryPairs.length;k<h;k++){o=this.queryPairs[k];j=f(o[0])===f(m);n=o[1]===p;if((arguments.length===1&&!j)||(arguments.length===2&&(!j||!n))){g.push(o)}}this.queryPairs=g;return this};b.prototype.addQueryParam=function(h,i,g){if(arguments.length===3&&g!==-1){g=Math.min(g,this.queryPairs.length);this.queryPairs.splice(g,0,[h,i])}else{if(arguments.length>0){this.queryPairs.push([h,i])}}return this};b.prototype.hasQueryParam=function(j){var h,g=this.queryPairs.length;for(h=0;h<g;h++){if(this.queryPairs[h][0]==j){return true}}return false};b.prototype.replaceQueryParam=function(m,k,h){var j=-1,g=this.queryPairs.length,l,n;if(arguments.length===3){for(l=0;l<g;l++){n=this.queryPairs[l];if(f(n[0])===f(m)&&decodeURIComponent(n[1])===f(h)){j=l;break}}if(j>=0){this.deleteQueryParam(m,f(h)).addQueryParam(m,k,j)}}else{for(l=0;l<g;l++){n=this.queryPairs[l];if(f(n[0])===f(m)){j=l;break}}this.deleteQueryParam(m);this.addQueryParam(m,k,j)}return this};["protocol","hasAuthorityPrefix","isColonUri","userInfo","host","port","path","query","anchor"].forEach(function(g){var h="set"+g.charAt(0).toUpperCase()+g.slice(1);b.prototype[h]=function(i){this[g](i);return this}});b.prototype.scheme=function(){var g="";if(this.protocol()){g+=this.protocol();if(this.protocol().indexOf(":")!==this.protocol().length-1){g+=":"}g+="//"}else{if(this.hasAuthorityPrefix()&&this.host()){g+="//"}}return g};b.prototype.origin=function(){var g=this.scheme();if(this.userInfo()&&this.host()){g+=this.userInfo();if(this.userInfo().indexOf("@")!==this.userInfo().length-1){g+="@"}}if(this.host()){g+=this.host();if(this.port()||(this.path()&&this.path().substr(0,1).match(/[0-9]/))){g+=":"+this.port()}}return g};b.prototype.addTrailingSlash=function(){var g=this.path()||"";if(g.substr(-1)!=="/"){this.path(g+"/")}return this};b.prototype.toString=function(){var h,g=this.origin();if(this.isColonUri()){if(this.path()){g+=":"+this.path()}}else{if(this.path()){h=this.path();if(!(d.ends_with_slashes.test(g)||d.starts_with_slashes.test(h))){g+="/"}else{if(g){g.replace(d.ends_with_slashes,"/")}h=h.replace(d.starts_with_slashes,"/")}g+=h}else{if(this.host()&&(this.query().toString()||this.anchor())){g+="/"}}}if(this.query().toString()){g+=this.query().toString()}if(this.anchor()){if(this.anchor().indexOf("#")!==0){g+="#"}g+=this.anchor()}return g};b.prototype.clone=function(){return new b(this.toString())};if(typeof define==="function"&&define.amd){define(function(){return b})}else{if(typeof module!=="undefined"&&typeof module.exports!=="undefined"){e.Uri=module.exports=b}else{e.Uri=b}}}(this));

            var createCookie = function (name, value, days) {
                var expires;
                if (days) {
                    var date = new Date();
                    date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
                    expires = "; expires=" + date.toGMTString();
                }
                else expires = "";
                document.cookie = name + "=" + value + expires + "; path=/";
            };

            var readCookie = function (name) {
                var nameEQ = name + "=";
                var ca = document.cookie.split(';');
                for (var i = 0; i < ca.length; i++) {
                    var c = ca[i];
                    while (c.charAt(0) == ' ') c = c.substring(1, c.length);
                    if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
                }
                return null;
            };

            var eraseCookie = function (name) {
                createCookie(name, "", -1);
            };

            function areCookiesEnabled () {
                var r = false;
                createCookie("testing", "Hello", 1);
                if (readCookie("testing") != null) {
                    r = true;
                    eraseCookie("testing");
                }
                return r;
            }

            var encode64 = function(input, escapeInput) {
                var keyStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
                 if (escapeInput) {
                     input = escape(input);
                 }

                 var output = "";
                 var chr1, chr2, chr3 = "";
                 var enc1, enc2, enc3, enc4 = "";
                 var i = 0;

                 do {
                     chr1 = input.charCodeAt(i++);
                     chr2 = input.charCodeAt(i++);
                     chr3 = input.charCodeAt(i++);

                     enc1 = chr1 >> 2;
                     enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
                     enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
                     enc4 = chr3 & 63;

                     if (isNaN(chr2)) {
                         enc3 = enc4 = 64;
                     } else if (isNaN(chr3)) {
                         enc4 = 64;
                     }

                     output = output + keyStr.charAt(enc1) + keyStr.charAt(enc2) + keyStr.charAt(enc3) + keyStr.charAt(enc4);
                     chr1 = chr2 = chr3 = "";
                     enc1 = enc2 = enc3 = enc4 = "";
                 } while (i < input.length);

                 return output;
            };

            var urlEncode64 = function(input) {

                // base 64 encoded strings can have unfriendly url chars +, /, =
                // So reencode these chars to so they can be transported as part of URLs safely
                // Replace + with -
                // Replace / with _
                // Trim =
                var base64Encoded = encode64(input, false);
                return base64Encoded.replace(/\+/g, '-').replace(/\//g, '_').replace(/\=+$/, '');
            };

            window.onload = function() {
                var formatRefUrl = function(inputUrl) {
                    // appkey=@ is bad, change it, then change it back
                    var hasAt = inputUrl.indexOf("appkey=@") > -1;
                    if(hasAt) {
                        inputUrl = inputUrl.replace("appkey=@", "appkey=");
                    }

                    var refurl = new Uri(inputUrl);
                    refurl.setProtocol('https'); // Change http -> https
                    refurl.deleteQueryParam('iwa');   // Remove iwa query arg
                    refurl.deleteQueryParam('iwaSsl');   // Remove iwa query arg
                    refurl.deleteQueryParam('OneTimePass'); // Remove 'OneTimePass' query arg

                    var resUrl = refurl.toString();
                    if(hasAt) {
                        resUrl = resUrl.replace("appkey=", "appkey=@");
                    }
                    return new Uri(resUrl);
                };

                var formatWithAddedArg = function(inputUrl, addedArg, addedArgValue) {
                    var hasAt = inputUrl.indexOf("appkey=@") > -1;
                    if(hasAt) {
                        inputUrl = inputUrl.replace("appkey=@", "appkey=");
                    }
                    var refurl = new Uri(inputUrl);
                    refurl.addQueryParam(addedArg, addedArgValue);
                    var resUrl = refurl.toString();  //returning uri as string
                    if(hasAt) {
                        resUrl = resUrl.replace("appkey=", "appkey=@");
                    }
                    return resUrl;
                }


                if (areCookiesEnabled()) {

                    var iwaInfos = JSON.parse('[{"CheckServiceTimeout":10000,"InternalCheckURL":"https://W5DVAP1099:8444/iwa/GetOneTimePass","InternalProxyURL":"https://W5DVAP1099:8444/iwa/","IwaVersion":"3.0","UseAjaxCors":true}]');
                    var index = 0;

                    var statusFailure = function () {
                        index ++;

                        if(index >= iwaInfos.length){
                            var moveOnUrlFormat = formatRefUrl;
                            document.location.href = moveOnUrlFormat(document.location.href).toString();
                        }
                        else {
                            //try next iwa
                            callIwa();
                        }
                    };

                    //define the callback function
                    var statusSuccess = function (status) {
                        var refurlObj = formatRefUrl(document.location.href),
                            refurl = refurlObj.toString();

                        if (iwaInfos[index].IwaVersion == "3.0" || iwaInfos[index].IwaVersion == "2.0") {
                            if (iwaInfos[index].IwaVersion == "3.0") {
                                status = JSON.parse(status);

                                if(status.result === "success" && status.otc !== null) {
                                    // For now, we just tack on OneTimePass= and go!
                                    var successUrl = formatWithAddedArg(refurlObj.toString(), 'OneTimePass', status.otc);
                                    document.location.href = successUrl;
                                } else {
                                    // success == false || otc == null for some reason
                                    statusFailure();
                                }
                            } else {
                                // fallback on old method of redir to proxy
                                document.location.href = iwaInfos[index].InternalProxyURL + '?refUrl=' + urlEncode64(refurl);
                            }
                        } else {
                            //alert("IWA version is " + "");
                            document.location.href = iwaInfos[index].InternalProxyURL + '?refUrl=' + encode64(refurl, true);
                        }
                    };

                    var callIwa = function () {
                        callIwaCors();
                    }

                    var callIwaCors = function () {
                        $.ajax({
                            url: iwaInfos[index].InternalCheckURL + "?g=" + Math.random(),
                            type: "GET",
                            beforeSend: function (xhr) {
                                xhr.setRequestHeader('Content-Type', 'text/plain');
                            },
                            timeout: iwaInfos[index].CheckServiceTimeout,
                            success: statusSuccess,
                            error: statusFailure,
                            xhrFields: {
                                withCredentials: true
                            }
                        });
                    }

                    if (iwaInfos.length > 0) {
                        callIwa();
                    } else {
                        document.location.href = formatRefUrl(document.location.href).toString();
                    }

                } else {
                    document.getElementById('noCookieWarning').style.display = '';
                }
            }
    </script>

</head>
<body>
<div id="loading-idaptive" class="loading-indicator loading-idaptive">
    <div style="display: table-cell; vertical-align: middle; text-align: center;">
        <div class="loading-text">Authenticating to Active Directory, please wait<span class="loading-ellipsis"></span></div>
        <img src="/vfslow/lib/ui/../uibuild/compiled/idaptive/production/resources/images/shared/loading_dots.gif" style="margin: 26px auto 78px;">
    </div>
</div>    <noscript>
        <h4>You appear to have javascript disabled.  Javascript support is required, please enable before continuing</h4>
    </noscript>
    <div id="noCookieWarning" style="display:none">
        <h4>You appear to have cookies disabled.  Cookie support is required, please enable before continuing</h4>
    </div>
</body>
</html>

```