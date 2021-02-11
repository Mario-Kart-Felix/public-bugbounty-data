```<!DOCTYPE html>
<html class='controller-contents'>
<head>
<script>window.NREUM||(NREUM={});NREUM.info={"beacon":"bam-cell.nr-data.net","errorBeacon":"bam-cell.nr-data.net","licenseKey":"def25c5cff","applicationID":"282811705,282811706","transactionName":"cwtcFxRXXF4ERBhSWV4QVw0SF1NdD0JSX0JDS1sNAl1I","queueTime":0,"applicationTime":295,"agent":""}</script>
<script>(window.NREUM||(NREUM={})).loader_config={licenseKey:"def25c5cff",applicationID:"282811705"};window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var i=t[n]={exports:{}};e[n][0].call(i.exports,function(t){var i=e[n][1][t];return r(i||t)},i,i.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var i=0;i<n.length;i++)r(n[i]);return r}({1:[function(e,t,n){function r(){}function i(e,t,n){return function(){return o(e,[u.now()].concat(c(arguments)),t?null:this,n),t?void 0:this}}var o=e("handle"),a=e(6),c=e(7),f=e("ee").get("tracer"),u=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],p="api-",l=p+"ixn-";a(d,function(e,t){s[t]=i(p+t,!0,"api")}),s.addPageAction=i(p+"addPageAction",!0),s.setCurrentRouteName=i(p+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,i="function"==typeof t;return o(l+"tracer",[u.now(),e,n],r),function(){if(f.emit((i?"":"no-")+"fn-start",[u.now(),r,i],n),i)try{return t.apply(this,arguments)}catch(e){throw f.emit("fn-err",[arguments,this,e],n),e}finally{f.emit("fn-end",[u.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=i(l+t)}),newrelic.noticeError=function(e,t){"string"==typeof e&&(e=new Error(e)),o("err",[e,u.now(),!1,t])}},{}],2:[function(e,t,n){function r(){return c.exists&&performance.now?Math.round(performance.now()):(o=Math.max((new Date).getTime(),o))-a}function i(){return o}var o=(new Date).getTime(),a=o,c=e(8);t.exports=r,t.exports.offset=a,t.exports.getLastTimestamp=i},{}],3:[function(e,t,n){function r(e,t){var n=e.getEntries();n.forEach(function(e){"first-paint"===e.name?d("timing",["fp",Math.floor(e.startTime)]):"first-contentful-paint"===e.name&&d("timing",["fcp",Math.floor(e.startTime)])})}function i(e,t){var n=e.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function o(e){e.getEntries().forEach(function(e){e.hadRecentInput||d("cls",[e])})}function a(e){if(e instanceof m&&!g){var t=Math.round(e.timeStamp),n={type:e.type};t<=p.now()?n.fid=p.now()-t:t>p.offset&&t<=Date.now()?(t-=p.offset,n.fid=p.now()-t):t=p.now(),g=!0,d("timing",["fi",t,n])}}function c(e){d("pageHide",[p.now(),e])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var f,u,s,d=e("handle"),p=e("loader"),l=e(5),m=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){f=new PerformanceObserver(r);try{f.observe({entryTypes:["paint"]})}catch(v){}u=new PerformanceObserver(i);try{u.observe({entryTypes:["largest-contentful-paint"]})}catch(v){}s=new PerformanceObserver(o);try{s.observe({type:"layout-shift",buffered:!0})}catch(v){}}if("addEventListener"in document){var g=!1,w=["click","keydown","mousedown","pointerdown","touchstart"];w.forEach(function(e){document.addEventListener(e,a,!1)})}l(c)}},{}],4:[function(e,t,n){function r(e,t){if(!i)return!1;if(e!==i)return!1;if(!t)return!0;if(!o)return!1;for(var n=o.split("."),r=t.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var i=null,o=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var c=navigator.userAgent,f=c.match(a);f&&c.indexOf("Chrome")===-1&&c.indexOf("Chromium")===-1&&(i="Safari",o=f[1])}t.exports={agent:i,version:o,match:r}},{}],5:[function(e,t,n){function r(e){function t(){e(a&&document[a]?document[a]:document[i]?"hidden":"visible")}"addEventListener"in document&&o&&document.addEventListener(o,t,!1)}t.exports=r;var i,o,a;"undefined"!=typeof document.hidden?(i="hidden",o="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(i="msHidden",o="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(i="webkitHidden",o="webkitvisibilitychange",a="webkitVisibilityState")},{}],6:[function(e,t,n){function r(e,t){var n=[],r="",o=0;for(r in e)i.call(e,r)&&(n[o]=t(r,e[r]),o+=1);return n}var i=Object.prototype.hasOwnProperty;t.exports=r},{}],7:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,i=n-t||0,o=Array(i<0?0:i);++r<i;)o[r]=e[t+r];return o}t.exports=r},{}],8:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function i(e){function t(e){return e&&e instanceof r?e:e?u(e,f,a):a()}function n(n,r,i,o,a){if(a!==!1&&(a=!0),!l.aborted||o){e&&a&&e(n,r,i);for(var c=t(i),f=v(n),u=f.length,s=0;s<u;s++)f[s].apply(c,r);var p=d[h[n]];return p&&p.push([b,n,r,c]),c}}function o(e,t){y[e]=v(e).concat(t)}function m(e,t){var n=y[e];if(n)for(var r=0;r<n.length;r++)n[r]===t&&n.splice(r,1)}function v(e){return y[e]||[]}function g(e){return p[e]=p[e]||i(n)}function w(e,t){s(e,function(e,n){t=t||"feature",h[n]=t,t in d||(d[t]=[])})}var y={},h={},b={on:o,addEventListener:o,removeEventListener:m,emit:n,get:g,listeners:v,context:t,buffer:w,abort:c,aborted:!1};return b}function o(e){return u(e,f,a)}function a(){return new r}function c(){(d.api||d.feature)&&(l.aborted=!0,d=l.backlog={})}var f="nr@context",u=e("gos"),s=e(6),d={},p={},l=t.exports=i();t.exports.getOrSetContext=o,l.backlog=d},{}],gos:[function(e,t,n){function r(e,t,n){if(i.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(o){}return e[t]=r,r}var i=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){i.buffer([e],r),i.emit(e,t,n)}var i=e("ee").get("handle");t.exports=r,r.ee=i},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,o,function(){return i++})}var i=1,o="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!x++){var e=b.info=NREUM.info,t=p.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return u.abort();f(y,function(t,n){e[t]||(e[t]=n)});var n=a();c("mark",["onload",n+b.offset],null,"api"),c("timing",["load",n]);var r=p.createElement("script");r.src="https://"+e.agent,t.parentNode.insertBefore(r,t)}}function i(){"complete"===p.readyState&&o()}function o(){c("mark",["domContent",a()+b.offset],null,"api")}var a=e(2),c=e("handle"),f=e(6),u=e("ee"),s=e(4),d=window,p=d.document,l="addEventListener",m="attachEvent",v=d.XMLHttpRequest,g=v&&v.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:v,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var w=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1198.min.js"},h=v&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),b=t.exports={offset:a.getLastTimestamp(),now:a,origin:w,features:{},xhrWrappable:h,userAgent:s};e(1),e(3),p[l]?(p[l]("DOMContentLoaded",o,!1),d[l]("load",r,!1)):(p[m]("onreadystatechange",i),d[m]("onload",r)),c("mark",["firstbyte",a.getLastTimestamp()],null,"api");var x=0},{}],"wrap-function":[function(e,t,n){function r(e,t){function n(t,n,r,f,u){function nrWrapper(){var o,a,s,p;try{a=this,o=d(arguments),s="function"==typeof r?r(o,a):r||{}}catch(l){i([l,"",[o,a,f],s],e)}c(n+"start",[o,a,f],s,u);try{return p=t.apply(a,o)}catch(m){throw c(n+"err",[o,a,m],s,u),m}finally{c(n+"end",[o,a,p],s,u)}}return a(t)?t:(n||(n=""),nrWrapper[p]=t,o(t,nrWrapper,e),nrWrapper)}function r(e,t,r,i,o){r||(r="");var c,f,u,s="-"===r.charAt(0);for(u=0;u<t.length;u++)f=t[u],c=e[f],a(c)||(e[f]=n(c,s?f+r:r,i,f,o))}function c(n,r,o,a){if(!m||t){var c=m;m=!0;try{e.emit(n,r,o,t,a)}catch(f){i([f,n,r,o],e)}m=c}}return e||(e=s),n.inPlace=r,n.flag=p,n}function i(e,t){t||(t=s);try{t.emit("internal-error",e)}catch(n){}}function o(e,t,n){if(Object.defineProperty&&Object.keys)try{var r=Object.keys(e);return r.forEach(function(n){Object.defineProperty(t,n,{get:function(){return e[n]},set:function(t){return e[n]=t,t}})}),t}catch(o){i([o],n)}for(var a in e)l.call(e,a)&&(t[a]=e[a]);return t}function a(e){return!(e&&e instanceof Function&&e.apply&&!e[p])}function c(e,t){var n=t(e);return n[p]=e,o(e,n,s),n}function f(e,t,n){var r=e[t];e[t]=c(r,n)}function u(){for(var e=arguments.length,t=new Array(e),n=0;n<e;++n)t[n]=arguments[n];return t}var s=e("ee"),d=e(7),p="nr@original",l=Object.prototype.hasOwnProperty,m=!1;t.exports=r,t.exports.wrapFunction=c,t.exports.wrapInPlace=f,t.exports.argsToArray=u},{}]},{},["loader"]);</script>
<script src='https://cdn.rivals.com/production/assets/window_name-426a8929f8d33048988258b1fc9ba7fa371d790b3661496339ffb6f2b1141c3f.js'></script>
<!-- GUCE -->
<meta content='false' name='oath:guce:product-eu'>
<meta content='stage.guce.rivals.com' name='oath:guce:consent-host'>
<meta content='true' name='oath:guce:report-only'>
<script src="https://s.yimg.com/oa/guce.js" async="async"></script>
<rv-google-analytics google-analytics-id='UA-81704850-1' ng-hide></rv-google-analytics>

<link href='https://fonts.googleapis.com/css?family=Roboto:400,500,700|Merriweather:400,700,italic' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,500,700|Merriweather:400,700,italic' rel='stylesheet'>
<link href='https://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.8.5/css/selectize.default.css' rel='stylesheet'>
<link href='https://cdn.rivals.com/production/assets/YahooSansFonts-17665c085dfaf620c961e1c0ddea354a20565cd5002add288461398e9f21d1eb.css' rel='stylesheet'>
<link href='https://cdn.rivals.com/production/assets/YahooSansCondFonts-74c0340099b3ec93e18951b2b059a74493c5db2e72ef7acd1cf1c42a6e4a523d.css' rel='stylesheet'>
<title>Basketball Recruiting</title>
<meta content='Basketball Recruiting' property='og:title'>
<meta content='The definitive source for all Rivals Basketball Recruiting news.' name='description'>

<link rel="stylesheet" media="all" href="https://cdn.rivals.com/production/assets/application-218e41258ee18a40f5345df930e873d31d877c0356339993bdbdc548c034196c.css" />


<script src="https://cdn.rivals.com/production/assets/lib-6c022b93a90b8980b59dc8365df99c024fc31b928721a316b58736a1fa13e26e.js"></script>
<script src='/javascript/config.js'></script>
<script src="https://cdn.rivals.com/production/assets/application-06f28590aea85dfffdaf49d43c4b17b494bf7ac111a2691dd0eeb86a296d5ffc.js"></script>

<script src='/javascript/url_factory.js'></script>
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="C5kbeQUIeHRHFLTdSAOs11TFUscxVzg2RW/3wpaTm7Kk3WCIoV29aYKLb/Yv3qIoQg+VO3YcGZ82NNuMPFY8LQ==" />
<meta content='initial-scale=1.0, width=device-width, maximum-scale=1.0' name='viewport'>
<meta content='https://cdn.rivals.com/production/assets/favicons/browserconfig-fdff72b91f19d75cf51d8bdb22cf7f1c7435213329db92847ab8cd17911cc566.xml' name='msapplication-config'>
<meta content='#0a4ea3' name='msapplication-TileColor'>
<meta content='https://cdn.rivals.com/production/assets/favicons/mstile-144x144-171b5725637bfa4769cee9b7c9352a74b2ba24d525be5b720e267e8adf48012c.png' name='msapplication-TileImage'>
<meta content='#ffffff' name='theme-color'>
<meta content='https://basketballrecruiting.n.rivals.com/' property='og:url'>
<meta content='https://images.rivals.com/image/upload/b_rgb:0A4EA3,c_lpad,f_auto,h_110,q_auto,w_300/s4jez45xsgcmqzjksabl' property='og:image'>
<meta content='website' property='og:type'>
<link href='https://cdn.rivals.com/production/assets/favicons/apple-touch-icon-57x57-79d2adbade85e1e68905ea1a26278770384c72769e302a0dae0424b3991cb8c0.png' rel='apple-touch-icon' sizes='57x57'>
<link href='https://cdn.rivals.com/production/assets/favicons/apple-touch-icon-60x60-fad0448de054b018c1fb496c82e4d147e36e025324f6097d939a6223773c6408.png' rel='apple-touch-icon' sizes='60x60'>
<link href='https://cdn.rivals.com/production/assets/favicons/apple-touch-icon-72x72-d83a481672df92fa565a3c3e4490fe8538a8cca8f2f6c8bc04b4e003da9c1f95.png' rel='apple-touch-icon' sizes='72x72'>
<link href='https://cdn.rivals.com/production/assets/favicons/apple-touch-icon-76x76-dde27fd6889cda35c548e8f311394eb5ad38fd060061150fb984469c56db0a8d.png' rel='apple-touch-icon' sizes='76x76'>
<link href='https://cdn.rivals.com/production/assets/favicons/apple-touch-icon-114x114-1b293697db4809dca023fcaee39f7266c5278095067b8f6c8edb1bcc1cf9029a.png' rel='apple-touch-icon' sizes='114x114'>
<link href='https://cdn.rivals.com/production/assets/favicons/apple-touch-icon-120x120-160b06011cecdf794bd4037752e257bf4272d38e105b58b8b63ff4e510d25a7a.png' rel='apple-touch-icon' sizes='120x120'>
<link href='https://cdn.rivals.com/production/assets/favicons/apple-touch-icon-144x144-b53ef0fb1afaa6ee435ba26728402dd43f9f2853b6a2932fa7d9fb70fc5e35ce.png' rel='apple-touch-icon' sizes='144x144'>
<link href='https://cdn.rivals.com/production/assets/favicons/apple-touch-icon-152x152-95c2973fbaef93d4c790667ba039b95898451bb04f5b2b399071e6483347812d.png' rel='apple-touch-icon' sizes='152x152'>
<link href='https://cdn.rivals.com/production/assets/favicons/apple-touch-icon-180x180-a223232b426f12e2f04f4a3aecf49f46b9e0a79cd886e7a210e0cdf5ad5bd024.png' rel='apple-touch-icon' sizes='180x180'>
<link href='https://cdn.rivals.com/production/assets/favicons/favicon-16x16-a217ac85d423e19cbde56dcf9b01630789a023d0509d6fa0880bd5da15cc22d1.png' rel='icon' sizes='16x16' type='image/png'>
<link href='https://cdn.rivals.com/production/assets/favicons/favicon-32x32-894aa91cf9d624f18d121145468a0bb30395f01d70de0dbf67742b95de46cfd2.png' rel='icon' sizes='32x32' type='image/png'>
<link href='https://cdn.rivals.com/production/assets/favicons/favicon-96x96-b0f9dfc4ee4c3780ac01665cf518b0b20ec78f58b81349f7cbcf715820137ac3.png' rel='icon' sizes='96x96' type='image/png'>
<link href='https://cdn.rivals.com/production/assets/favicons/favicon-194x194-8ab5e15036ae6a8e5c073b018e034b9e1d8b57c0445d930c005e3bbd54bdf23e.png' rel='icon' sizes='194x194' type='image/png'>
<link href='https://cdn.rivals.com/production/assets/favicons/android-chrome-192x192-c5cfe3c55f53109b71f4a7ed03d0ff07134dc883a367e64241c5c595468da9bb.png' rel='icon' sizes='192x192' type='image/png'>
<link href='https://cdn.rivals.com/production/assets/favicons/production-0e1d4801a92a4feee97ecae9ec64f5af784165a723e8fa49b12047d75b5aba98.ico' rel='shortcut icon'>
<link href='https://cdn.rivals.com/production/assets/favicons/production-0e1d4801a92a4feee97ecae9ec64f5af784165a723e8fa49b12047d75b5aba98.ico' rel='apple-touch-icon'>
<link href='https://cdn.rivals.com/production/assets/favicons/manifest-4bf9998442db4c04360a1612c42ca4e1aeff88b16510ab66fc9275af3e694668.json' rel='manifest'>
<rv-chartbeat-config-header ng-hide subdomain='basketballrecruiting.rivals.com'></rv-chartbeat-config-header>

</head>
<body class='basketballrecruiting contents-index' ng-app='rivals'>
<rv-google-analytics google-analytics-id='UA-81704850-1' ng-hide></rv-google-analytics>

<!--[if lte IE 9]><div class='browser-unsupported'>
<div class='browser-unsupported-text'>
You are using an
<strong>outdated</strong>
browser. Please
<a href='http://browsehappy.com/'>upgrade your browser</a>
to use Rivals.com
</div>
</div><![endif]-->

<style>
  /*doc
     ---
     title: Yahoo Heading & Body
     category: typography
     ---
   ```haml_example
  .font-yahoo-h2 Font Yahoo H2
  .font-yahoo-h3 Font Yahoo H3
  .font-yahoo-h4 Font Yahoo H4
  
  .font-yahoo-b4 Font Yahoo B4
  .font-yahoo-b5 Font Yahoo B5
   ```
  */
  @media screen and (max-width: 1023px) {
    .basketballrecruiting #programming > h1 {
      background-color: #0A4EA3 !important; } }
  
  .basketballrecruiting .wrapper-container .team-colors-line {
    background-color: #464646; }
  
  .basketballrecruiting .team-colors-line {
    width: 100%;
    height: 8px;
    display: flex;
    background-color: #0A4EA3; }
    .basketballrecruiting .team-colors-line .color {
      width: 33.33%; }
    .basketballrecruiting .team-colors-line .first-opacity {
      background-color: white;
      opacity: 0.2; }
    .basketballrecruiting .team-colors-line .second-opacity {
      background-color: white;
      opacity: 0.4; }
    .basketballrecruiting .team-colors-line.vertical {
      flex-direction: column;
      height: auto;
      width: 8px; }
      .basketballrecruiting .team-colors-line.vertical .color {
        width: 100%;
        height: 33.33%; }
    .basketballrecruiting .team-colors-line.header {
      height: 6px; }
  
  .basketballrecruiting > header .notification-link .count-container {
    background-color: #0A4EA3 !important; }
  
  .basketballrecruiting > header .wrapper-container {
    background-color: #0A4EA3 !important;
    display: block;
    position: fixed;
    top: 0px;
    width: 100%;
    z-index: 999; }
    @media screen and (min-width: 768px) {
      .basketballrecruiting > header .wrapper-container {
        border-bottom: 6px solid #464646 !important; } }
  
  .basketballrecruiting > header .invalid-email-banner {
    background-color: #0A4EA3;
    height: 40px;
    line-height: 40px;
    position: relative;
    text-align: center;
    width: 100%;
    z-index: 998; }
    .basketballrecruiting > header .invalid-email-banner a {
      color: #fff;
      vertical-align: middle; }
    .basketballrecruiting > header .invalid-email-banner a:hover {
      color: #464646; }
  
  @media screen and (max-width: 767px) {
    .basketballrecruiting > header .mobile-header {
      background-color: #464646 !important;
      height: 5px;
      position: fixed;
      width: 100%;
      z-index: 50; } }
  
  .basketballrecruiting > header hr {
    background-color: rgba(255, 255, 255, 0.55) !important; }
  
  .basketballrecruiting > header .home {
    border-right: 1px solid rgba(255, 255, 255, 0.55) !important; }
  
  .basketballrecruiting > header .second-nav {
    background-color: white !important; }
  
  @media screen and (max-width: 1023px) {
    .basketballrecruiting > header .nav-row > ul,
    .basketballrecruiting > header .third-nav {
      background-color: white !important; }
    .basketballrecruiting > header .dropdown-toggle > i.fa {
      color: #0A4EA3 !important; } }
  
  .basketballrecruiting > header .active {
    font-family: "Roboto", "Helvetica Neue", arial, sans-serif;
    font-weight: 500;
    color: #0A4EA3; }
  
  .site-primary-font-color {
    color: #0A4EA3; }
  
  .site-primary-background-color {
    background-color: #0A4EA3; }
  
  .site-secondary-font-color {
    color: #464646; }
  
  .site-secondary-background-color {
    background-color: #464646; }
  
  :root {
    --primary-color: #0A4EA3;
    --primary-color-overlay: rgba(10, 78, 163, .4);
    --secondary-color: #464646;
    --accent-color: #6BC027;
    --button-color: #0A4EA3;
    --subscription-button-color: #0A4EA3; }
</style>

<header><nav ng-class='ctrl.currentUser ? "signed-in" : "signed-out"' ng-cloak ng-controller='NavController as ctrl' ng-init='ctrl.init("basketballrecruiting")' role='navigation'>
<div class='wrapper-container'>
<div class='wrapper logo-row'>
<a alt="Rivals" href="https://rivals.com"><div class='rivals-logo-navbar-white'></div>
</a><a class='nav-menu-mobile' ng-click='ctrl.toggleContentNav($event)'></a>
<a alt="Rivals Basketball Recruiting" class="site-header logo-image-wrapper" href="https://basketballrecruiting.rivals.com/"><img src="https://images.rivals.com/image/upload/f_auto,q_auto/s4jez45xsgcmqzjksabl" />
</a><div class='nav-right-controls'>
<div class='subscribe-section' ng-cloak ng-if='ctrl.showSubscribe()'>
<span class='upsell-text'>
Join the team!
</span>
<div class='subscribe-button' ng-click='ctrl.subscribeEvent()'>
Subscribe
</div>
</div>
<rv-universal-search></rv-universal-search>
<rv-user-dropdown current_user='ctrl.currentUser'></rv-user-dropdown>
<rv-forums-info current_user='ctrl.currentUser' ng-if='ctrl.currentUser && !ctrl.isMobile'></rv-forums-info>
</div>
</div>
</div>
<div class='mobile-header'></div>
<rv-header-alert class='alert-nav'></rv-header-alert>
<hr>
<div class='nav-row-container'>
<div class='wrapper nav-row navbar-full' ng-cloak ng-if='!ctrl.isTablet'>
<ul><li class="home top-nav"><a href="https://basketballrecruiting.rivals.com/">Home</a></li>
<rv-forum-navigation site-identifier="&#39;basketballrecruiting&#39;" limit="8"></rv-forum-navigation>
<li class="search top-nav"><a href="/search">Prospect Search</a></li>
<li class="futurecast top-nav"><a href="/futurecast">FutureCast</a></li>
<rv-navigation navigation="ctrl.schoolByGroupDivision"></rv-navigation>
<rv-user-menu-items current-user="ctrl.currentUser" ng-if="!ctrl.isTablet &amp;&amp; !ctrl.isDesktop" class="user-menu"></rv-user-menu-items></ul>
</div>
<div class='wrapper nav-row navbar-ellipsed' ng-cloak ng-if='ctrl.isTablet'>
<ul><li class="home top-nav"><a href="https://basketballrecruiting.rivals.com/">Home</a></li>
<rv-forum-navigation site-identifier="&#39;basketballrecruiting&#39;" limit="4"></rv-forum-navigation>
<li class="search top-nav"><a href="/search">Prospect Search</a></li>
<li class="futurecast top-nav"><a href="/futurecast">FutureCast</a></li>
<rv-navigation navigation="ctrl.schoolByGroupDivision"></rv-navigation>
<rv-user-menu-items current-user="ctrl.currentUser" ng-if="!ctrl.isTablet &amp;&amp; !ctrl.isDesktop" class="user-menu"></rv-user-menu-items></ul>
</div>
<div class='nav-row invalid-email-banner' ng-cloak ng-if='ctrl.showEmailUpdateBanner'>
<a ng-href='{{ctrl.userProfileEditPath}}'>
Your account has an invalid email address. Please update it here.
</a>
</div>
</div>
</nav>
</header>
<main class='wrapper'><script src="https://s.yimg.com/ss/rapid-3.24.js"></script>
<script src='/javascript/ad_beacon.js?path=homepages&space_id=2022745676' type='text/javascript'></script>

<meta content='The definitive source for all Rivals Basketball Recruiting news.' name='description'>
<div class='homepage-content' ng-controller='ContentController' ng-init='init([], {&quot;id&quot;:174,&quot;legacy_id&quot;:910,&quot;name&quot;:&quot;Basketball Recruiting&quot;,&quot;friendly_name&quot;:&quot;Rivals Basketball Recruiting&quot;,&quot;annual_discount&quot;:null,&quot;subdomain&quot;:&quot;basketballrecruiting&quot;,&quot;primary_color&quot;:&quot;0A4EA3&quot;,&quot;secondary_color&quot;:&quot;464646&quot;,&quot;font_color&quot;:&quot;ffffff&quot;,&quot;short_name&quot;:&quot;basketballrecruiting&quot;,&quot;maple_ncaaf_team_id&quot;:null,&quot;maple_ncaaf_endpoint&quot;:null,&quot;maple_ncaab_team_id&quot;:null,&quot;maple_ncaab_endpoint&quot;:null,&quot;maple_college_id&quot;:null,&quot;google_analytics_id&quot;:&quot;UA-81704850-1&quot;}, false, 248, [],
{&quot;id&quot;:6,&quot;primary_color&quot;:&quot;0A4EA3&quot;,&quot;secondary_color&quot;:&quot;464646&quot;,&quot;font_color&quot;:&quot;ffffff&quot;,&quot;commitment_module_football&quot;:true,&quot;rivals_module_football&quot;:true,&quot;header_name&quot;:&quot;&quot;,&quot;header_logo_cloudinary&quot;:&quot;s4jez45xsgcmqzjksabl&quot;,&quot;mobile_header_logo_cloudinary&quot;:null,&quot;google_analytics_id&quot;:&quot;UA-81704850-1&quot;,&quot;logo_background_shading&quot;:&quot;white&quot;,&quot;football_content&quot;:false,&quot;basketball_content&quot;:false,&quot;baseball_content&quot;:false,&quot;other_content&quot;:false,&quot;site_id&quot;:174,&quot;created_at&quot;:&quot;2016-11-23T13:38:41.316-06:00&quot;,&quot;updated_at&quot;:&quot;2020-06-25T15:45:51.659-05:00&quot;,&quot;max_trending_articles&quot;:6,&quot;enrichments&quot;:[{&quot;active&quot;:false,&quot;type&quot;:&quot;Commitment&quot;,&quot;football&quot;:false,&quot;list_id&quot;:null,&quot;list_title&quot;:null,&quot;position&quot;:null},{&quot;active&quot;:true,&quot;type&quot;:&quot;Rivals&quot;,&quot;football&quot;:false,&quot;list_id&quot;:null,&quot;list_title&quot;:null,&quot;position&quot;:1},{&quot;active&quot;:false,&quot;type&quot;:&quot;Schedule&quot;,&quot;football&quot;:false,&quot;list_id&quot;:null,&quot;list_title&quot;:null,&quot;position&quot;:null},{&quot;active&quot;:true,&quot;type&quot;:&quot;Twitter&quot;,&quot;football&quot;:null,&quot;list_id&quot;:null,&quot;list_title&quot;:null,&quot;position&quot;:2},{&quot;active&quot;:false,&quot;type&quot;:&quot;ScoreboardScores&quot;,&quot;football&quot;:null,&quot;list_id&quot;:null,&quot;list_title&quot;:null,&quot;position&quot;:null},{&quot;active&quot;:false,&quot;type&quot;:&quot;ScoreboardPhotos&quot;,&quot;football&quot;:null,&quot;list_id&quot;:null,&quot;list_title&quot;:null,&quot;position&quot;:null},{&quot;active&quot;:false,&quot;type&quot;:&quot;TeamRankings&quot;,&quot;football&quot;:true,&quot;list_id&quot;:null,&quot;list_title&quot;:null,&quot;position&quot;:null},{&quot;active&quot;:false,&quot;type&quot;:&quot;FanFuturecastLeaderboard&quot;,&quot;football&quot;:null,&quot;list_id&quot;:null,&quot;list_title&quot;:null,&quot;position&quot;:null},{&quot;active&quot;:false,&quot;type&quot;:&quot;RecentForecasts&quot;,&quot;football&quot;:null,&quot;list_id&quot;:null,&quot;list_title&quot;:null,&quot;position&quot;:null}],&quot;footer_text&quot;:null,&quot;sections&quot;:[],&quot;supplied_domain&quot;:null,&quot;forums_link_url&quot;:&quot;https://basketballrecruiting.forums.rivals.com&quot;,&quot;scoreboard_scores_id&quot;:null,&quot;scoreboard_photos_id&quot;:null,&quot;aol_player_id&quot;:null,&quot;aol_company_id&quot;:null,&quot;ad_frequency&quot;:5,&quot;display_twitter_follow&quot;:false,&quot;display_fb_follow&quot;:false,&quot;follow_twitter_handle&quot;:null,&quot;follow_fb_handle&quot;:null,&quot;forum_id&quot;:null,&quot;premium_forum_id&quot;:null,&quot;facebook_page_id&quot;:null,&quot;max_ticker_articles&quot;:7,&quot;schedule_header_on&quot;:false,&quot;promo_popup_on&quot;:false,&quot;facebook_developer_id&quot;:null,&quot;customized_tos&quot;:[&quot;{\&quot;title\&quot;=\u003e\&quot;Rivals.com Additional Terms of Service\&quot;, \&quot;text\&quot;=\u003e\&quot;By becoming a Subscriber to Rivals&#39; Premium Services, or by using this site (hereinafter the \\\&quot;Site\\\&quot;), which is a part of the Rivals Network, you agree to be bound by this additional terms of service. Rivals is a Yahoo! Inc brand, by becoming a Subscriber to the Rivals&#39; Premium Services or by using this Site, which is part of the Rivals Network, you also agree that you are subject to the Yahoo! Terms of Service located \u003ca href = \\\&quot;http://info.yahoo.com/legal/us/yahoo/utos/utos-173.html\\\&quot;\u003ehere\u003c/a\u003e which is hereby incorporated into this Agreement by reference. For clarity Rivals.com is a \\\&quot;Service\\\&quot; as defined in the Yahoo! Terms of Service. This agreement is subject to change or updated by Rivals at any time without notice to you.\&quot;}&quot;,&quot;{\&quot;title\&quot;=\u003e\&quot;Payment Obligation and Credit Card Authorization\&quot;, \&quot;text\&quot;=\u003e\&quot;All subscription/membership fees are non-refundable. The Subscriber is responsible for paying periodic subscription fees, and hereby authorizes Rivals to charge the subscriber&#39;s credit card, debit card, or bank account, to pay for the ongoing cost of subscriptions/membership fees via automatic debit. Subscription plans, offerings and length of terms offered may vary by site. Unless specifically stated, subscribers will be automatically renewed for a term equal to the original term upon expiration of the then-current term, and continually thereafter, unless the Subscriber terminates the subscription by online chat at least 48 hours prior to the renewal date. When termination is requested by a Subscriber, there is no refund for any unused portion of the current subscription. Subscriber acknowledges and agrees that the authorization to charge Subscriber&#39;s credit card for services shall automatically transfer to any successors or assigns of Service for substantially similar services at the same website. Subscriber may not assign or transfer his or her subscription to any other person or entity. Should Subscriber request a refund which is denied for a valid reason under these Terms of Service, and should Subscriber subsequently file a claim against Rivals, Rivals shall be entitled to collect from Subscriber all costs (including attorneys fees) associated with defending such a claim. To protect against potential fraud, Yahoo! may take steps to verify the validity of the credit card information you provide to us. The verification process may include debiting an amount between $0.01 and $0.99 from your credit card account and then crediting the same amount back to your credit card or otherwise ceasing the transaction, and also may include asking you to verify the amount debited in order to confirm that you are in possession of your credit card. Yahoo! will only use this process to screen for fraud and will not otherwise debit your credit card account except as part of a transaction conducted through your account for the Service. By providing Yahoo! with your credit card information, you authorize Yahoo! to debit and credit your credit card account for an amount less than one dollar for such verification purposes.\&quot;}&quot;,&quot;{\&quot;title\&quot;=\u003e\&quot;Free Trial Memberships and Coupons\&quot;, \&quot;text\&quot;=\u003e\&quot;Some Rivals sites occasionally offer promotional free trial memberships to the Premium Ticket service. Subscribers that sign up for a free trial membership will be automatically renewed at the normal subscription rate at the end of the trial period, unless the Subscriber cancels at least 48 hours before the end of the trial. Only one free trial period is allowed per subscriber. Subsequent subscriptions do not qualify for free trials. Some Rivals sites may offer coupons or other promotional offers from time to time. In these situations, a special discounted price may be applicable for a term, followed by a higher price after the initial promotional term. By subscribing, you agree that you will be responsible for all payments as specified in the offer, and you agree that Rivals may adjust the pricing of such plans, as specified in the offer, promotional materials or coupon, without notice or other communication to you. Some sites will occasionally piggyback other free offers with the free trial offer. In this case, the user must actually complete the free trial and be charged one time before they are eligible to receive the additional free offer.\&quot;}&quot;,&quot;{\&quot;title\&quot;=\u003e\&quot;Premium Ticket and Special Edition\&quot;, \&quot;text\&quot;=\u003e\&quot;Many Rivals sites offer Premium Ticket subscription packages, while some offer Special Edition subscription packages. Subscriptions to one type of package will not give the user access to the other. All Premium Ticket packages are automatically renewed according to the term selected by the subscriber, while Special Edition packages are automatically renewed unless otherwise specifically stated. A Special Edition subscription does not grant access to ALL Special Edition content on the network. Each such package specifies what content is included.\&quot;}&quot;,&quot;{\&quot;title\&quot;=\u003e\&quot;Message Boards\&quot;, \&quot;text\&quot;=\u003e\&quot;Subscriber-only message boards are included in many Premium Ticket subscriptions. The accepted standards of conduct in these communities, as well as our other message board communities, are determined by the publishing partner of any given site. Subscribers and registered users agree that Rivals and its publishing partners have the right to enforce these standards, including deletion of posts, blacklisting/banning users, or removing access to premium message boards with no refund to the Subscriber. By subscribing, registering or using the sites, you agree that Rivals and or the publisher(s) and board moderators of the sites have the right, in addition to other rights, to delete your posts or blacklist you or any other user at any time, if they believe that action is in the best interest of the sites, for whatever reason, and the reason need not be disclosed.\&quot;}&quot;,&quot;{\&quot;title\&quot;=\u003e\&quot;Subscriber Information\&quot;, \&quot;text\&quot;=\u003e\&quot;Subscriber must promptly inform Rivals of any of the following: changes in the expiration date of any credit card used in connection with the service; changes in home or billing address; and apparent breaches of security, such as loss, theft, or unauthorized disclosure or use of an ID or password. Until Rivals is notified by e-mail of a breach in security, the Subscriber will remain liable for any unauthorized use of the Premium Ticket Service.\&quot;}&quot;,&quot;{\&quot;title\&quot;=\u003e\&quot;Access\&quot;, \&quot;text\&quot;=\u003e\&quot;Subscribers are responsible for providing all personal computer and communications equipment necessary to gain access to the Service. Access to and use of the Premium Ticket Service is through a combination of an ID and a password. Each Subscriber must keep his password strictly confidential. Rivals will not release passwords for any reason, except as may be specifically required by law or court order. Unauthorized access to the Premium Ticket Service is a breach of this Agreement and a violation of law.\&quot;}&quot;,&quot;{\&quot;title\&quot;=\u003e\&quot;Online Games Eligibility\&quot;, \&quot;text\&quot;=\u003e\&quot;To be eligible to win a prize in Rivals&#39; Games, you must be at least 18 years old as of your date of entry into the game, and a legal resident of the continental United States. For games requiring entry or other fees to be paid, residents of Arizona, Colorado, Florida, Louisiana, Maryland, Minnesota, Montana, North Dakota, and Vermont may play, but will not be eligible to win prizes. In addition, if you live in any other state or area where Rivals Online Games are unlawful, you agree that you may play, but you may not be eligible to win prizes. By signing up to play, you agree to be bound by all of the terms herein, as well as any applicable state or federal laws that apply to you. Rivals&#39; Online Games are not to be used in connection with any form of gambling or the promotion of gambling. Winners of prizes are solely responsible for any applicable taxes, including, but not limited to, all federal, state and local income taxes. For game winners, you may be required to provide certain additional information, such as social security number, etc., in order to process the prizes.\&quot;}&quot;,&quot;{\&quot;title\&quot;=\u003e\&quot;Warranty\&quot;, \&quot;text\&quot;=\u003e\&quot;No warranty is made by Rivals regarding any information, services, or products provided through or in connection with the Premium Ticket Service, and Rivals hereby expressly disclaims any and all warranties, including without limitation: any warranties as to the availability, accuracy, or content of information, products, or services; any warranties of merchantability or fitness for a particular purpose. Some states/provinces do not allow the exclusion of implied warranties, so the above exclusion may not apply to you. The Subscriber hereby warrants and represents that he or she is in all respects is qualified and competent to enter into this agreement.\&quot;}&quot;,&quot;{\&quot;title\&quot;=\u003e\&quot;Links to Third Party Sites\&quot;, \&quot;text\&quot;=\u003e\&quot;The Rivals sites may contain images of and links to third party web sites (\\\&quot;Linked Sites\\\&quot;). The Linked Sites are not under the control of Rivals and Rivals is not responsible for the contents of any Linked Site, including without limitation any link contained in a Linked Site, or any changes or updates to a Linked Site. Rivals is not responsible for webcasting or any other form of transmission received from any Linked Site nor is Rivals responsible if the Linked Site is not working appropriately. Rivals is providing these links to you only as a convenience, and the inclusion of any link does not imply endorsement by Rivals of the site or any association with its operators. You are responsible for viewing and abiding by the privacy statements and terms of use posted at the Linked Sites. Any dealings with third parties (including advertisers) included within the Rivals sites or services or participation in promotions, including the delivery of and the payment for goods and services, and any other terms, conditions, warranties or representations associated with such dealings or promotions, are solely between you and the advertiser or other third party. Rivals shall not be responsible or liable for any part of any such dealings or promotions. By subscribing, registering, or using any of the Rivals sites, you agree that you indemnify Rivals from any liability whatsoever associated with your dealings with these third parties.\&quot;}&quot;,&quot;{\&quot;title\&quot;=\u003e\&quot;Limitation of Liability\&quot;, \&quot;text\&quot;=\u003e\&quot;Rivals is not obligated to monitor the content on this site. However, with respect to the use of the products and services offered on this site, Rivals reserves the right to disclose any information or materials as necessary to satisfy any applicable law, regulation, legal process or government request, or to edit, refuse to post or to remove any information or materials, in whole or in part, from the this site, in Rivals&#39;s sole discretion, without notice at any time. This site may contain message board services, chat areas, communities, personal pages, pages created and/or maintained by publishers, or other communication facilities. You agree to use these facilities only to post, send and receive messages and material that are proper and related to the particular facility, and to comply with all applicable laws and these Terms of Use and Notices. Rivals reserves the right, but is not obligated, to review materials posted to this site and to remove any such materials and/or edit such materials in its sole discretion, without notice at any time. In addition, Rivals reserves the right to terminate your access to any or all of the sites and services at any time without notice for any reason whatsoever. Furthermore, Rivals reserves the right to terminate or change any part of the site at any time. Rivals is not obligated to monitor the content on this site. However, with respect to the use of the community facilities mentioned above, Rivals reserves the right to disclose any information or materials as necessary to satisfy any applicable law, regulation, legal process or governmental request, or to edit, refuse to post or to remove any information or materials, in whole or in part, from the site or service, in Rivals&#39;s sole discretion. You acknowledge that the community services are public and not private communications, therefore your communications may be read by others without your knowledge. Always use caution when giving out any personally identifying information about yourself or others in any public area. Rivals specifically disclaims any liability with regard to the community areas on our site, or the content published by publishers under their publishing agreements, in which they agree that they are fully responsible for the content they post on the site. Forum managers and hosts of the community services, message boards, chat rooms, etc. are not authorized Rivals agents or spokespersons, are not able to bind Rivals, nor do their views necessarily reflect those of Rivals. The information, services, information, and other material included in or available through the this site may not be complete, and may include inaccuracies or errors, and may also be modified or deleted from time to time. Advice, information, products, services or other materials received via this site should not be relied upon for decisions or other critical purposes. By registering to post on Rivals&#39; message boards, you agree that you are solely responsible for the content of your posts (defined as all content posted by you on the message boards, including actual posts, user profiles, signatures, etc.). This responsibility includes full liability for copyright infringement, libel/slander, and other liability, and you hereby agree to indemnify Yahoo! Inc., Rivals.com, and their respective officers, agents, partners, employees and subcontractors, and Rivals&#39; publishers from any and all liability associated with the above. You agree that you own the content of your posts, but that you grant Rivals the right to reproduce or republish the content of your posts, in full or in part, for any purpose, as well as the right to grant permission for other reproduction or republishing of the posts by a third party. In addition, by registering on this site and/or by using this site, you agree that you recognize that all other users are solely responsible for the content of their posts and that they have indemnified Rivals (see above) as you have. You agree that you will not hold Yahoo! Inc., Rivals, and their respective officers, agents, partners, employees or subcontractors, owners, or agents responsible for the actions of posters on the message boards. By registering or subscribing on this site, you agree that you are giving explicit consent to Rivals to send to you various emails, including marketing emails of various types. You hereby agree that, although Rivals may provide methods for opting out of these emails, that these emails are not &#39;unsolicited emails&#39; or &#39;spam&#39;, and that you will indemnify and hold harmless Rivals, its owners, managers, employees, publishers, and other agents from any liability whatsoever associated with these emails, Rivals&#39; sending of these emails, and/or your receipt thereof. Your access to and use of this site, and products and services of this site, is at your own risk. Rivals, and its members and sponsors, will not be liable for any damage, loss or disclosure of information, data, revenue, accounts or business that occurs in connection with your use of the this site Network, or such products or services. Rivals makes no guarantees of any kind regarding the dependability, accuracy, security, timeliness or availability of the this site Network, or such products or services. Without limiting the foregoing, Yahoo! Inc., Rivals AND/OR ITS RESPECTIVE SUPPLIERS, PUBLISHERS, PARTNERS, SPONSORS, OR OTHER ASSOCIATES MAKE NO REPRESENTATIONS OR WARRANTIES ABOUT THE CONDITION, SUITABILITY, RELIABILITY, AVAILABILITY, COMPLETENESS, SECURITY, TIMELINESS, OR ACCURACY OF THE INFORMATION, PRODUCTS, SERVICES AND MATERIALS CONTAINED IN THIS SITE FOR ANY PURPOSE. ALL SUCH INFORMATION, PRODUCTS, SERVICES AND MATERIALS ARE PROVIDED \\\&quot;AS IS\\\&quot; WITHOUT WARRANTY OF ANY KIND. RIVALS AND/OR ITS RESPECTIVE SUPPLIERS, PUBLISHERS, PARTNERS, SPONSORS, OR OTHER ASSOCIATES HEREBY DISCLAIM ALL REPRESENTATIONS, WARRANTIES AND CONDITIONS, EXPRESS OR IMPLIED, WITH REGARD TO THIS INFORMATION, PRODUCTS, SERVICES OR MATERIALS, INCLUDING ALL IMPLIED WARRANTIES AND CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL YAHOO! INC., RIVALS AND/OR THEIR RESPECTIVE SUPPLIERS, PUBLISHERS, PARTNERS, SPONSORS, OR OTHER ASSOCIATES BE LIABLE FOR ANY DIRECT, INDIRECT, PUNITIVE, INCIDENTAL, SPECIAL, CONSEQUENTIAL OR EXEMPLARY DAMAGES OR ANY DAMAGES WHATSOEVER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF USE, DATA OR PROFITS, ARISING OUT OF OR IN ANY WAY CONNECTED WITH THE USE OR PERFORMANCE OF THIS SITE OR RELATED SERVICES, WITH THE DELAY OR INABILITY TO USE THIS SITE OR RELATED SERVICES, THE PROVISION OF OR FAILURE TO PROVIDE SERVICES, OR FOR ANY INFORMATION, PRODUCTS, OR SERVICES OBTAINED THROUGH THIS SITE, OR OTHERWISE ARISING OUT OF THE USE OF THIS SITE, WHETHER BASED ON CONTRACT, TORT, NEGLIGENCE, STRICT LIABILITY OR OTHERWISE, EVEN IF RIVALS OR ANY OF ITS SUPPLIERS HAS BEEN ADVISED OF THE POSSIBILITY OF DAMAGES. BECAUSE SOME STATES/JURISDICTIONS DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR CONSEQUENTIAL OR INCIDENTAL DAMAGES, THE ABOVE LIMITATION MAY NOT APPLY TO YOU. IF YOU ARE DISSATISFIED WITH ANY PORTION OF THIS SITE, OR WITH ANY OF THESE TERMS OF USE AND NOTICES, YOUR SOLE AND EXCLUSIVE REMEDY IS TO DISCONTINUE USING THIS SITE AND ITS RELATED SERVICES. You agree to defend, indemnify and hold Yahoo! Inc., Rivals and their respective suppliers, publishers, partners, sponsors, or other associates harmless from and against any and all claims, losses, liability costs and expenses (including but not limited to attorneys&#39; fees) arising from your violation of these Terms of Use and Notices (including, without limitation, violation of applicable Additional Terms of Use), or any third-party&#39;s rights, (including, without limitation, infringement of any copyright, violation of any proprietary right and invasion of any privacy rights). These obligations will survive any termination of your relationship with Rivals or your use of this site.\&quot;}&quot;,&quot;{\&quot;title\&quot;=\u003e\&quot;Use Restriction\&quot;, \&quot;text\&quot;=\u003e\&quot;The material on the Premium Ticket Service is for the private, non-commercial enjoyment of Subscribers only. Any other use is strictly prohibited. Rivals and its publishing partners spend a great deal of time and money to obtain the information appearing on its web sites. Subscribers agree that they will not copy, publish, or in any way make available publicly any news, pictures, interviews, features, or any other information from Rivals web sites, without express written permission from Rivals. Subscribers agree that, should they do so, Rivals reserves the right to cancel their subscription immediately without refund. Additionally, reuse of copyrighted information (pictures, interviews, features, videos, audio, etc.) will be prosecuted to the fullest extent of the law. To prevent access by multiple users sharing one account, Rivals reserves the right to limit access for each Subscriber to a fixed number of physical locations or machines or to a specific number of simultaneous logons. Subscriber agrees to notify Rivals in advance if their situation calls for use of multiple machines (i.e. student worklab, library, etc.). In addition, if such a scenario exists, subscriber is responsible for logging out appropriately in order to login successfully in another location. By signing up to post on Rivals&#39; message boards, you agree that you will not use the message boards to advertise any product or service, without the express written permission of Rivals. You also agree that if you do use the message boards in such a manner, and are subsequently banned or blacklisted from the message boards, and then continue to post such advertising under a new account, you will be liable for damages to Rivals in the amount of fair compensation for equivalent advertising frequently sold by Rivals to other advertisers, plus Rivals costs of collection, including attorneys fees. Due to difficulty in Rivals assessing these damages and advertising opportunity costs, you agree that the minimum damage from violation of this provision will be $10,000 (without limitation on Rivals&#39; ability to prove actual damages in excess of this amount). By signing up to post on Rivals&#39; message boards, you agree that if Rivals blacklists you, you will cease and desist from posting on the message boards. If you are blacklisted, and subsequently sign up under new account(s) for the sole purpose of disrupting the message boards in any manner, you will be liable for damages to Rivals in the amount of fair compensation for time spent by Rivals staff and/or publishers in addition to any lost profits or revenues caused by your disruption and costs of collection of these damages, including attorneys fees. Due to difficulty in Rivals assessing these damages and costs, you agree that the minimum damage from violation of this provision will be $10,000 (without limitation on Rivals&#39; ability to prove actual damages in excess of this amount).\&quot;}&quot;,&quot;{\&quot;title\&quot;=\u003e\&quot;Notices\&quot;, \&quot;text\&quot;=\u003e\&quot;Notices by Rivals to Subscribers may be given by means of electronic messages or by a general posting on the service. Notices by Subscribers may be given by electronic messages.\&quot;}&quot;,&quot;{\&quot;title\&quot;=\u003e\&quot;FAQ\&quot;, \&quot;text\&quot;=\u003e\&quot;For answers to questions about your Rivals Premium Ticket subscription, please visit our FAQ/Help Desk. All questions that can&#39;t be answered at the FAQ/Help Desk should be submitted through the \u003ca href = \\\&quot;https://io.help.yahoo.com/contact/index?page=contact\u0026locale=en_US\u0026y=PROD_SPORTS_RIVAL\\\&quot;\u003eRivals.com Help Form\u003c/a\u003e.\&quot;}&quot;],&quot;show_survey_popup&quot;:false,&quot;survey_popup_link&quot;:null,&quot;header_bottom_border_style&quot;:&quot;solid&quot;,&quot;customized_upsell_banner_text&quot;:null,&quot;email_logo_cloudinary&quot;:null,&quot;target_list_on&quot;:null,&quot;gifting_banner_content&quot;:&quot;Give a Rivals gift subscription this holiday season&quot;,&quot;gifting_banner_title&quot;:&quot;The perfect gift for football recruiting fans!&quot;,&quot;gifting_banner_button_text&quot;:&quot;Give a gift subscription&quot;}, nil, true, &quot;rivals&quot;, 15000, false, nil, nil, false)'>
<div class='horizontal-ad-container'>
<div id='boxLDRB'>
<div id='tgtLDRB'></div>
</div>
</div>
<div class='headline-news-container'>
<breaking-news-bar info='ctrl.breakingNews' selected='ctrl.openBreakingNews'></breaking-news-bar>
<div class='headline-news-content' id='articles' ng-class='{ &#39;top-margin&#39;: (ctrl.breakingNews || false) }'>
<div class='filter-article'>
<div class='filter-tab-container'>
<div class='title-tabs-container'>
<div class='headline-title'>Headlines</div>
<div class='tabs-container'>
<label class='filter-sport-tab' ng-repeat='sport in menuItems'>
<a ng-class='{&#39;selected&#39;: &#39;nil&#39; == &#39;{{sport.url_key}}&#39;}' ng-cloak='true' ng-href='{{homepagePath(sport.url_key)}}'>
{{ sport.display_name }}
</a>
</label>
</div>
</div>
<div class='social-buttons' ng-if='settings.display_twitter_follow'>
<div class='twitter-follow-button' ng-click='twitterFollowWindow(settings.follow_twitter_handle)' ng-if='settings.display_twitter_follow'></div>
</div>
</div>

<div class='headline-articles-wrapper'>
<div class='primary-article-wrapper'>
<article class='hero' ng-cloak>
<rv-sliding-article article='primaryHeadline' forum-thread='forumThread' hero='true' is-desktop='isDesktop' is-preview='false' is-publisher='isPublisher' link='link' selected-id='ctrl.selectedId' site-id='siteId' time_ago='timeAgo' view_link='viewLink'></rv-sliding-article>
</article>
</div><div class='secondary-articles-wrapper'>
<div class='secondary-article-row'><div class='secondary-article' ng-cloak ng-repeat='article in headlineNewsTop'>
<rv-sliding-article article='article' forum-thread='forumThread' is-desktop='isDesktop' is-preview='false' is-publisher='isPublisher' link='link' selected-id='ctrl.selectedId' site-id='siteId' time_ago='timeAgo' view_link='viewLink'></rv-sliding-article>
</div></div>
<div class='secondary-article-row'><div class='secondary-article' ng-cloak ng-repeat='article in headlineNewsBottom'>
<rv-sliding-article article='article' forum-thread='forumThread' is-desktop='isDesktop' is-preview='false' is-publisher='isPublisher' link='link' selected-id='ctrl.selectedId' site-id='siteId' time_ago='timeAgo' view_link='viewLink'></rv-sliding-article>
</div></div>
</div><div class='mobile-wrapper' ng-if='!isDesktop'>
<rv-swiping-article articles='mobileHeadlineNews' forum-thread='forumThread' headline-news='true' link='link' view_link='viewLink'></rv-swiping-article>
</div>
<div class='headline-nav-wrapper'><div class='headline-links-wrapper'>
<span ng-cloak ng-repeat='link in primaryHeadline.associated_links'>
<a ng-href='{{ link.url }}'>
<span class='link-blue'>
{{ link.display_text }}
</span>
</a>
<span class='link-separator' ng-if='!$last'>
&bull;
</span>
</span>
</div></div>
</div>

</div>
</div>
</div>
<div class='banners'>
<div class='upsell-banner' ng-cloak='true' ng-if='showBanner === &#39;upsell&#39;'>
<div class='homepage-upsell'>
<div class='banner' ng-class='{&#39;rivals-homepage&#39;: false }' ng-cloak>
<div class='left-border'></div>
<div class='upsell-text'>
Be a part of the Rivals Basketball Recruiting community for $8.33/month.
</div>
<div class='button-container'>
<a class='btn btn-highlight' ng-class='{&#39;rivals-homepage&#39;: false }' ng-href='{{signUpPath + utmParams}}'>
<span ng-if='size !== &quot;desktop-small&quot; &amp;&amp; size !== &quot;desktop-large&quot;'>
Subscribe
</span>
<span ng-if='size === &quot;desktop-small&quot; || size === &quot;desktop-large&quot;'>
Subscribe now!
</span>
</a>
</div>
</div>
</div>

</div>
<div class='upsell-forecast-banner' id='forecast-banner' ng-cloak='true' ng-if='showBanner === &#39;forecast&#39;'>
<rv-user-forecast-banner class='forecast-banner' upsell='true'></rv-user-forecast-banner>
</div>
<div class='gifting-banner' ng-cloak='true' ng-if='showBanner === &#39;gifting&#39;'>
<a href='/gifts/purchase'>
<div class='banner-wrapper'>
<div class='banner-container'>
<div class='gift-banner homepage-banner'>
<div class='inner-banner' ng-cloak ng-if='false'></div>
</div>
</div>
<div class='banner-content-container homepage-container'>
<div class='gifting-icon-bg homepage-icon-bg'></div>
<div class='gifting-icon homepage-icon'></div>
<div class='homepage-text text'>
<div class='gifting-title'>
The perfect gift for football recruiting fans!
</div>
<div class='gifting-text'>
Give a Rivals gift subscription this holiday season
</div>
</div>
<div class='gifting-button-container' ng-cloak ng-if='true'>
<div class='btn-highlight'>
Give a gift subscription
</div>
</div>
</div>
</div>
</a>

</div>
</div>
<div class='modules'><div class='left-side-modules'>
<div class='lrec-container'>
<div class='side-rail-box'>
<div class='side-rail-body'>
<div id='boxLREC'>
<div id='tgtLREC'></div>
</div>
</div>
</div>
</div>
<div class='news-list homepage-module'>
<div class='section-header'>
News
<a href="/more_news#other-news"><span class='more-news-link'>
More News
</span>
</a></div>
<rv-news-ticker contents='newsList' is_preview='false' is_publisher='isPublisher' profile_page='false' referral_code='referralCode' site_name='Basketball Recruiting'></rv-news-ticker>
</div>

<div class='enrichment-modules-container homepage' ng-if='enrichments &amp;&amp; !inlineModuleSizes.includes(size) &amp;&amp; enrichments.length == maximumModuleCount'>
<rv-enrichment-module enrichments='[enrichments[enrichments.length - 1]]' homepage='true' is_schedule_football='true' ncaab_schedule_year='2020' ncaaf_schedule_year='2020' site='{&quot;id&quot;:174,&quot;legacy_id&quot;:910,&quot;name&quot;:&quot;Basketball Recruiting&quot;,&quot;friendly_name&quot;:&quot;Rivals Basketball Recruiting&quot;,&quot;annual_discount&quot;:null,&quot;subdomain&quot;:&quot;basketballrecruiting&quot;,&quot;primary_color&quot;:&quot;0A4EA3&quot;,&quot;secondary_color&quot;:&quot;464646&quot;,&quot;font_color&quot;:&quot;ffffff&quot;,&quot;short_name&quot;:&quot;basketballrecruiting&quot;,&quot;maple_ncaaf_team_id&quot;:null,&quot;maple_ncaaf_endpoint&quot;:null,&quot;maple_ncaab_team_id&quot;:null,&quot;maple_ncaab_endpoint&quot;:null,&quot;maple_college_id&quot;:null,&quot;google_analytics_id&quot;:&quot;UA-81704850-1&quot;}' twitter_feed='twitterFeed'></rv-enrichment-module>
</div>
</div><div class='right-side-modules'>
<rv-forums ad-referer='https://basketballrecruiting.n.rivals.com/' base-api-url='https://basketballrecruiting.forums.rivals.com/' forums-url='https://basketballrecruiting.forums.rivals.com' homepage='true' pub-ad='null' size='size' space-id='2022745676' subscribed-user='subscribedUser'></rv-forums>

<rv-content-module custom_module='cm' is_preview='false' menu_items='[]' ng-repeat='cm in customModules' num_visible_module_content='numVisibleModuleContent()' pub_ad='null' size='size' time_ago='timeAgo' view_link='viewLink'></rv-content-module>
<rv-content-module is_preview='false' menu_items='[]' num_visible_module_content='numVisibleModuleContent()' size='size' time_ago='timeAgo' trending='true' view_link='viewLink'></rv-content-module>
<div class='enrichment-modules-container homepage' ng-if='enrichments'>
<rv-enrichment-module bypass_cache='false' enrichments='enrichments' homepage='true' is_schedule_football='true' ncaab_schedule_year='2020' ncaaf_schedule_year='2020' site='{&quot;id&quot;:174,&quot;legacy_id&quot;:910,&quot;name&quot;:&quot;Basketball Recruiting&quot;,&quot;friendly_name&quot;:&quot;Rivals Basketball Recruiting&quot;,&quot;annual_discount&quot;:null,&quot;subdomain&quot;:&quot;basketballrecruiting&quot;,&quot;primary_color&quot;:&quot;0A4EA3&quot;,&quot;secondary_color&quot;:&quot;464646&quot;,&quot;font_color&quot;:&quot;ffffff&quot;,&quot;short_name&quot;:&quot;basketballrecruiting&quot;,&quot;maple_ncaaf_team_id&quot;:null,&quot;maple_ncaaf_endpoint&quot;:null,&quot;maple_ncaab_team_id&quot;:null,&quot;maple_ncaab_endpoint&quot;:null,&quot;maple_college_id&quot;:null,&quot;google_analytics_id&quot;:&quot;UA-81704850-1&quot;}' size='size' twitter_feed='twitterFeed'></rv-enrichment-module>
</div>
</div>
</div>
</div>
<script src='/javascript/ad?ad_referrer=https%3A%2F%2Fbasketballrecruiting.n.rivals.com%2F&amp;space_id=2022745676' type='text/javascript'></script>

<rv-chartbeat-config-body ng-hide sections='homepage' title='Basketball Recruiting'></rv-chartbeat-config-body>

<div ng-controller='googleTagManagerController as ctrl' ng-init='ctrl.init(&quot;rvls&quot;, &quot;rvlpromo&quot;, null, null, null, null)'>
<iframe height='0' ng-src='{{ ctrl.sourceUrl }}' referrerpolicy='origin' style='display:none;visibility:hidden' width='0'></iframe>
<noscript>
<iframe height='0' ng-src='{{ ctrl.sourceUrl }}' referrerpolicy='origin' style='display:none;visibility:hidden' width='0'></iframe>
</noscript>
</div>


</main>
<script src='/javascript/pencil_ad.js'></script>
<script src='/javascript/stream_ad.js'></script>
<script src='/javascript/moments_ad.js'></script>
<footer>
<div class='flexible-links'>
<a class='link' href='/news/about-us'>About</a>
<a class='link' href='/news/member-services'>Help</a>
<a class='link' href='/news/contact-us-5'>Contact Us</a>
<a class='link' href='/tos'>Terms of Service</a>
<a class='link' href='/gifts/purchase'>Gift Subscription</a>
</div>
<div class='flexible-links'>
<a class='link' href='https://policies.yahoo.com/us/en/yahoo/privacy/products/rivals/'>Privacy Policy</a>
</div>
<div class='logo-container'>
<div class='footer-logo'><?xml version="1.0" encoding="UTF-8"?>
<svg width="159px" height="96px" viewbox="0 0 159 96" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <!-- Generator: Sketch 58 (84663) - https://sketch.com -->
    <title>logo_yahoo_sports_gray</title>
    <desc>Created with Sketch.</desc>
    <g id="Logos" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <g id="logo-/-yahoo-sports-/-grayscale">
            <g id="logo-/-yahoo-sports-MASTER-/-black-on-white" transform="translate(0.000000, 36.000000)">
                <g id="yahoo-sports-logo-white">
                    <path d="M24.0702452,5.83111111 L24.0702452,7.06666667 C23.2097927,6.0367158 21.9427054,5.46606759 20.6261035,5.51555556 C17.1389101,5.51555556 14.5428883,8.69333333 14.5428883,12.4222222 C14.5428883,16.2577778 17.1259946,19.3333333 20.6261035,19.3333333 C21.9510266,19.3980812 23.2277754,18.8131965 24.0702452,17.7555556 L24.0702452,18.9911111 L28.4184741,18.9911111 L28.4184741,5.83111111 L24.0702452,5.83111111 Z M29.9209809,0 L29.9209809,18.9911111 L34.4241962,18.9911111 L34.4241962,11.9777778 C34.4241962,10.6088889 35.0613624,9.79555556 36.0773842,9.79555556 C37.093406,9.79555556 37.6315531,10.5066667 37.6315531,11.8177778 L37.6315531,18.9911111 L42.1347684,18.9911111 L42.1347684,10.7155556 C42.1347684,7.51111111 40.4557493,5.51555556 37.7564033,5.51555556 C36.4540592,5.4661141 35.2068557,6.0603675 34.3983651,7.11555556 L34.3983651,0.00444444444 L29.9209809,0 Z M71.1129155,12.4444444 C71.1129155,16.3866667 68.1897003,19.3555556 64.293515,19.3555556 C60.3973297,19.3555556 57.4741144,16.3866667 57.4741144,12.4444444 C57.4741144,8.50222222 60.4016349,5.53777778 64.293515,5.53777778 C68.1853951,5.53777778 71.1129155,8.50666667 71.1129155,12.4444444 Z M56.7120981,12.4444444 C56.7120981,16.3866667 53.7845777,19.3555556 49.8926975,19.3555556 C46.0008174,19.3555556 43.073297,16.3866667 43.073297,12.4444444 C43.073297,8.50222222 46.0008174,5.53777778 49.8926975,5.53777778 C53.7845777,5.53777778 56.7120981,8.50666667 56.7120981,12.4444444 Z M5.68434189e-14,5.85333333 L5.44174387,19.1155556 L3.48288828,23.8977778 L8.26594005,23.8977778 L15.5201635,5.85333333 L10.7844687,5.85333333 L7.83111717,13.5733333 L4.90359673,5.85333333 L5.68434189e-14,5.85333333 Z M21.5258856,15.1511111 C20.0778762,15.1511111 18.9040327,13.9392952 18.9040327,12.4444444 C18.9040327,10.9495937 20.0778762,9.73777778 21.5258856,9.73777778 C22.9738949,9.73777778 24.1477384,10.9495937 24.1477384,12.4444444 C24.1582975,13.1655836 23.8854595,13.8603865 23.3914592,14.3703671 C22.8974589,14.8803478 22.2244277,15.1620118 21.5258856,15.1511111 L21.5258856,15.1511111 Z M52.4155313,12.4444444 C52.3942095,10.9991882 51.2457931,9.84329333 49.8457334,9.85791214 C48.4456737,9.87253095 47.3201395,11.0521694 47.3271064,12.4975752 C47.3341381,13.942981 48.4710404,15.1109435 49.8711717,15.1111111 C50.5556752,15.1211114 51.2144344,14.8420408 51.6948283,14.3385545 C52.1752222,13.8350681 52.4355617,13.150859 52.4155313,12.4444444 Z M66.8163488,12.4444444 C66.795027,10.9991882 65.6466105,9.84329333 64.2465509,9.85791214 C62.8464912,9.87253095 61.720957,11.0521694 61.7279238,12.4975752 C61.7349555,13.942981 62.8718578,15.1109435 64.2719891,15.1111111 C64.9564926,15.1211114 65.6152519,14.8420408 66.0956458,14.3385545 C66.5760396,13.8350681 66.8363791,13.150859 66.8163488,12.4444444 Z M71.6510627,16.2266667 C71.6417293,17.0311249 71.9471656,17.80545 72.4982184,18.3743287 C73.0492712,18.9432074 73.7993326,19.2585242 74.5785831,19.2488889 C76.2429617,19.2488889 77.5922071,17.855997 77.5922071,16.1377778 C77.6063278,15.3326284 77.3030257,14.5560964 76.7518547,13.9862577 C76.2006837,13.416419 75.4489316,13.102163 74.6689918,13.1155556 C73.0046133,13.1155556 71.6553678,14.5084474 71.6553678,16.2266667 L71.6510627,16.2266667 Z M78.0657766,0.0222222222 L73.2999455,11.9244444 L78.6469755,11.9244444 L83.4300272,0 L78.0657766,0.0222222222 Z" id="Shape" fill="#000000"></path>
                    <path d="M134.510954,5.48444444 C134.287017,5.41042851 134.052932,5.37440508 133.81782,5.37777778 C132.285501,5.33345562 130.885901,6.2707681 130.30049,7.73333333 L130.30049,5.69333333 L125.681035,5.69333333 L125.681035,18.9466667 L130.326322,18.9466667 L130.326322,14.12 C130.326322,11.6577778 131.432752,10.28 133.382997,10.28 C133.766741,10.2725198 134.148703,10.3357311 134.510954,10.4666667 L134.510954,5.48444444 Z M157.586703,14.7066667 C157.586703,12.56 156.174605,11.3911111 153.328883,10.5688889 L152.584087,10.36 C151.529319,10.0666667 151.120327,9.96 151.120327,9.64444444 C151.120327,9.32888889 151.400163,9.08888889 152.093297,9.08888889 C153.450345,9.14730589 154.776143,9.52749663 155.967956,10.2 L157.405886,6.72888889 C155.762922,5.84513411 153.941481,5.37314042 152.088992,5.35111111 C148.778311,5.35111111 146.522398,7.07111111 146.522398,9.85333333 C146.522398,12.2133333 147.981853,13.3511111 150.883542,14.04 L151.550845,14.2 C152.52812,14.44 152.962943,14.5733333 152.962943,14.9422222 C152.962943,15.3866667 152.532425,15.5244444 151.860817,15.5244444 C150.346116,15.4741491 148.867045,15.0374509 147.55564,14.2533333 L145.911063,17.6977778 C147.686591,18.7932991 149.72378,19.3537124 151.791935,19.3155556 C155.180109,19.3155556 157.565177,17.6444444 157.565177,14.7066667 L157.586703,14.7066667 Z M99.466812,23.8755556 L99.466812,17.5422222 C100.358,18.7173685 101.741926,19.3788009 103.186485,19.32 C106.677984,19.32 109.213733,16.2088889 109.213733,12.3244444 C109.213733,8.44 106.69951,5.32888889 103.186485,5.32888889 C101.733545,5.28164108 100.348025,5.96204577 99.466812,7.15555556 L99.466812,5.69777778 L94.7913896,5.69777778 L94.7913896,23.88 L99.466812,23.8755556 Z M99.3376567,12.32 C99.3271861,11.213905 99.9645436,10.210698 100.951431,9.77990287 C101.938319,9.34910772 103.079494,9.57595163 103.84086,10.3542665 C104.602227,11.1325813 104.833158,12.3083876 104.425573,13.3313811 C104.017988,14.3543747 103.052522,15.0221694 101.981035,15.0222222 C101.279555,15.0391913 100.60157,14.760828 100.102982,14.251141 C99.6043938,13.7414539 99.3281085,13.0443046 99.3376567,12.32 L99.3376567,12.32 Z M117.380654,5.32444444 C113.351008,5.32444444 110.3503,8.34666667 110.3503,12.32 C110.3503,16.2933333 113.363924,19.3155556 117.380654,19.3155556 C121.397384,19.3155556 124.389482,16.2933333 124.389482,12.32 C124.389482,8.34666667 121.375858,5.32444444 117.380654,5.32444444 Z M119.925028,12.32 C119.926756,13.3827901 119.307948,14.3419313 118.357325,14.7498901 C117.406702,15.1578489 116.311622,14.9342208 115.583048,14.1833503 C114.854473,13.4324797 114.635998,12.3023557 115.029563,11.3202919 C115.423128,10.338228 116.351165,9.69774364 117.380654,9.69774364 C118.055765,9.6942178 118.704284,9.9692005 119.182069,10.4616073 C119.659855,10.954014 119.927319,11.6230453 119.925028,12.32 L119.925028,12.32 Z M137.378202,1.58666667 L137.378202,5.69333333 L135.656131,5.69333333 L135.656131,9.61333333 L137.378202,9.61333333 L137.378202,14.3288889 C137.378202,17.4844444 139.17346,19.3111111 142.113896,19.3111111 C143.108761,19.3245868 144.098636,19.1637885 145.041417,18.8355556 L145.041417,14.7555556 C144.601078,14.9003846 144.142996,14.9797003 143.680981,14.9911111 C142.600381,14.9911111 142.036403,14.4888889 142.036403,13.2133333 L142.036403,9.65777778 L145.050027,9.65777778 L145.050027,5.76 L142.036403,5.76 L142.036403,1.65333333 L137.378202,1.58666667 Z M93.5342779,14.7066667 C93.5342779,12.56 92.1221798,11.3911111 89.2764578,10.5688889 L88.5316621,10.36 C87.4768937,10.0666667 87.0679019,9.96 87.0679019,9.64444444 C87.0679019,9.32888889 87.3477384,9.08888889 88.0408719,9.08888889 C89.3979195,9.14730589 90.7237182,9.52749663 91.9155313,10.2 L93.3534605,6.72888889 C91.7104967,5.84513411 89.8890562,5.37314042 88.0365668,5.35111111 C84.7258856,5.35111111 82.4699728,7.07111111 82.4699728,9.85333333 C82.4699728,12.2133333 83.9294278,13.3511111 86.8311172,14.04 L87.4984196,14.2 C88.4756948,14.44 88.9105177,14.5733333 88.9105177,14.9422222 C88.9105177,15.3866667 88.48,15.5244444 87.8083924,15.5244444 C86.2936909,15.4741491 84.81462,15.0374509 83.5032153,14.2533333 L81.8586376,17.6977778 C83.6341658,18.7932991 85.6713546,19.3537124 87.7395095,19.3155556 C91.1276839,19.3155556 93.512752,17.6444444 93.512752,14.7066667 L93.5342779,14.7066667 Z" id="Shape" fill="#999999"></path>
                </g>
            </g>
        </g>
    </g>
</svg></div>
</div>
<div class='copyright-notice'>Certain data provided by STATS, LLC</div>
<div class='copyright-notice'>© 2021 Verizon Media. All rights reserved.</div>
</footer>
<script src="https://cdn.rivals.com/production/assets/basicFooter-3354817297e893319b72187d3925028dbe228a45f06b1e68941019737a608dca.js"></script>

</body>
<!-- Begin comScore Tag -->

<script>
  var _comscore = _comscore || [];
  _comscore.push({
    c1: "2",
    c2: "7241469",
    c5: "2022745676",
    c7: "https://basketballrecruiting.n.rivals.com/"
  });
  (function() {
    var s = document.createElement("script"), el = document.getElementsByTagName("script")[0]; s.async = true;
    // loading the evergreen version of cs.js so we always have the last version
    s.src = "https://s.yimg.com/cx/vzm/cs.js";
    el.parentNode.insertBefore(s, el);
  })();
</script>

<noscript>
  <img src="https://sb.scorecardresearch.com/p?c1=2&c2=7241469&c7=https%3A%2F%2Fbasketballrecruiting.n.rivals.com%2F&c5=2022745676&cv=2.0&cj=1&cs_ucfr=0" />
</noscript>
<!-- End comScore Tag -->

</html>
```