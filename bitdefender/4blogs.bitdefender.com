```<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <script type="text/javascript">var inHeadTS = (new Date()).getTime();</script>
            <title>Bitdefender - Global Leader in Cybersecurity Software</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"VwUAUFJQGwQHUFBQBAYB",licenseKey:"86f61f5b73",applicationID:"77412376"};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o||e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(t,e,n){function r(t){try{c.console&&console.log(t)}catch(e){}}var o,i=t("ee"),a=t(27),c={};try{o=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(c.console=!0,o.indexOf("dev")!==-1&&(c.dev=!0),o.indexOf("nr_dev")!==-1&&(c.nrDev=!0))}catch(s){}c.nrDev&&i.on("internal-error",function(t){r(t.stack)}),c.dev&&i.on("fn-err",function(t,e,n){r(n.stack)}),c.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(c,function(t,e){return t}).join(", ")))},{}],2:[function(t,e,n){function r(t,e,n,r,c){try{l?l-=1:o(c||new UncaughtException(t,e,n),!0)}catch(u){try{i("ierr",[u,s.now(),!0])}catch(d){}}return"function"==typeof f&&f.apply(this,a(arguments))}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function o(t,e){var n=e?null:s.now();i("err",[t,n])}var i=t("handle"),a=t(28),c=t("ee"),s=t("loader"),u=t("gos"),f=window.onerror,d=!1,p="nr@seenError",l=0;s.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(h){"stack"in h&&(t(13),t(12),"addEventListener"in window&&t(6),s.xhrWrappable&&t(14),d=!0)}c.on("fn-start",function(t,e,n){d&&(l+=1)}),c.on("fn-err",function(t,e,n){d&&!n[p]&&(u(n,p,function(){return!0}),this.thrown=!0,o(n))}),c.on("fn-end",function(){d&&!this.thrown&&l>0&&(l-=1)}),c.on("internal-error",function(t){i("ierr",[t,s.now(),!0])})},{}],3:[function(t,e,n){t("loader").features.ins=!0},{}],4:[function(t,e,n){function r(){L++,T=g.hash,this[f]=y.now()}function o(){L--,g.hash!==T&&i(0,!0);var t=y.now();this[h]=~~this[h]+t-this[f],this[d]=t}function i(t,e){E.emit("newURL",[""+g,e])}function a(t,e){t.on(e,function(){this[e]=y.now()})}var c="-start",s="-end",u="-body",f="fn"+c,d="fn"+s,p="cb"+c,l="cb"+s,h="jsTime",m="fetch",v="addEventListener",w=window,g=w.location,y=t("loader");if(w[v]&&y.xhrWrappable){var x=t(10),b=t(11),E=t(8),R=t(6),O=t(13),N=t(7),P=t(14),M=t(9),S=t("ee"),C=S.get("tracer");t(16),y.features.spa=!0;var T,L=0;S.on(f,r),b.on(p,r),M.on(p,r),S.on(d,o),b.on(l,o),M.on(l,o),S.buffer([f,d,"xhr-done","xhr-resolved"]),R.buffer([f]),O.buffer(["setTimeout"+s,"clearTimeout"+c,f]),P.buffer([f,"new-xhr","send-xhr"+c]),N.buffer([m+c,m+"-done",m+u+c,m+u+s]),E.buffer(["newURL"]),x.buffer([f]),b.buffer(["propagate",p,l,"executor-err","resolve"+c]),C.buffer([f,"no-"+f]),M.buffer(["new-jsonp","cb-start","jsonp-error","jsonp-end"]),a(P,"send-xhr"+c),a(S,"xhr-resolved"),a(S,"xhr-done"),a(N,m+c),a(N,m+"-done"),a(M,"new-jsonp"),a(M,"jsonp-end"),a(M,"cb-start"),E.on("pushState-end",i),E.on("replaceState-end",i),w[v]("hashchange",i,!0),w[v]("load",i,!0),w[v]("popstate",function(){i(0,L>1)},!0)}},{}],5:[function(t,e,n){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var o=t("ee"),i=t("handle"),a=t(13),c=t(12),s="learResourceTimings",u="addEventListener",f="resourcetimingbufferfull",d="bstResource",p="resource",l="-start",h="-end",m="fn"+l,v="fn"+h,w="bstTimer",g="pushState",y=t("loader");y.features.stn=!0,t(8),"addEventListener"in window&&t(6);var x=NREUM.o.EV;o.on(m,function(t,e){var n=t[0];n instanceof x&&(this.bstStart=y.now())}),o.on(v,function(t,e){var n=t[0];n instanceof x&&i("bst",[n,e,this.bstStart,y.now()])}),a.on(m,function(t,e,n){this.bstStart=y.now(),this.bstType=n}),a.on(v,function(t,e){i(w,[e,this.bstStart,y.now(),this.bstType])}),c.on(m,function(){this.bstStart=y.now()}),c.on(v,function(t,e){i(w,[e,this.bstStart,y.now(),"requestAnimationFrame"])}),o.on(g+l,function(t){this.time=y.now(),this.startPath=location.pathname+location.hash}),o.on(g+h,function(t){i("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),u in window.performance&&(window.performance["c"+s]?window.performance[u](f,function(t){i(d,[window.performance.getEntriesByType(p)]),window.performance["c"+s]()},!1):window.performance[u]("webkit"+f,function(t){i(d,[window.performance.getEntriesByType(p)]),window.performance["webkitC"+s]()},!1)),document[u]("scroll",r,{passive:!0}),document[u]("keypress",r,!1),document[u]("click",r,!1)}},{}],6:[function(t,e,n){function r(t){for(var e=t;e&&!e.hasOwnProperty(f);)e=Object.getPrototypeOf(e);e&&o(e)}function o(t){c.inPlace(t,[f,d],"-",i)}function i(t,e){return t[1]}var a=t("ee").get("events"),c=t("wrap-function")(a,!0),s=t("gos"),u=XMLHttpRequest,f="addEventListener",d="removeEventListener";e.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(u.prototype)):u.prototype.hasOwnProperty(f)&&(o(window),o(u.prototype)),a.on(f+"-start",function(t,e){var n=t[1],r=s(n,"nr@wrapped",function(){function t(){if("function"==typeof n.handleEvent)return n.handleEvent.apply(n,arguments)}var e={object:t,"function":n}[typeof n];return e?c(e,"fn-",null,e.name||"anonymous"):n});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],7:[function(t,e,n){function r(t,e,n){var r=t[e];"function"==typeof r&&(t[e]=function(){var t=i(arguments),e={};o.emit(n+"before-start",[t],e);var a;e[m]&&e[m].dt&&(a=e[m].dt);var c=r.apply(this,t);return o.emit(n+"start",[t,a],c),c.then(function(t){return o.emit(n+"end",[null,t],c),t},function(t){throw o.emit(n+"end",[t],c),t})})}var o=t("ee").get("fetch"),i=t(28),a=t(27);e.exports=o;var c=window,s="fetch-",u=s+"body-",f=["arrayBuffer","blob","json","text","formData"],d=c.Request,p=c.Response,l=c.fetch,h="prototype",m="nr@context";d&&p&&l&&(a(f,function(t,e){r(d[h],e,u),r(p[h],e,u)}),r(c,"fetch",s),o.on(s+"end",function(t,e){var n=this;if(e){var r=e.headers.get("content-length");null!==r&&(n.rxSize=r),o.emit(s+"done",[null,e],n)}else o.emit(s+"done",[t],n)}))},{}],8:[function(t,e,n){var r=t("ee").get("history"),o=t("wrap-function")(r);e.exports=r;var i=window.history&&window.history.constructor&&window.history.constructor.prototype,a=window.history;i&&i.pushState&&i.replaceState&&(a=i),o.inPlace(a,["pushState","replaceState"],"-")},{}],9:[function(t,e,n){function r(t){function e(){s.emit("jsonp-end",[],p),t.removeEventListener("load",e,!1),t.removeEventListener("error",n,!1)}function n(){s.emit("jsonp-error",[],p),s.emit("jsonp-end",[],p),t.removeEventListener("load",e,!1),t.removeEventListener("error",n,!1)}var r=t&&"string"==typeof t.nodeName&&"script"===t.nodeName.toLowerCase();if(r){var o="function"==typeof t.addEventListener;if(o){var a=i(t.src);if(a){var f=c(a),d="function"==typeof f.parent[f.key];if(d){var p={};u.inPlace(f.parent,[f.key],"cb-",p),t.addEventListener("load",e,!1),t.addEventListener("error",n,!1),s.emit("new-jsonp",[t.src],p)}}}}}function o(){return"addEventListener"in window}function i(t){var e=t.match(f);return e?e[1]:null}function a(t,e){var n=t.match(p),r=n[1],o=n[3];return o?a(o,e[r]):e[r]}function c(t){var e=t.match(d);return e&&e.length>=3?{key:e[2],parent:a(e[1],window)}:{key:t,parent:window}}var s=t("ee").get("jsonp"),u=t("wrap-function")(s);if(e.exports=s,o()){var f=/[?&](?:callback|cb)=([^&#]+)/,d=/(.*)\.([^.]+)/,p=/^(\w+)(\.|$)(.*)$/,l=["appendChild","insertBefore","replaceChild"];Node&&Node.prototype&&Node.prototype.appendChild?u.inPlace(Node.prototype,l,"dom-"):(u.inPlace(HTMLElement.prototype,l,"dom-"),u.inPlace(HTMLHeadElement.prototype,l,"dom-"),u.inPlace(HTMLBodyElement.prototype,l,"dom-")),s.on("dom-start",function(t){r(t[0])})}},{}],10:[function(t,e,n){var r=t("ee").get("mutation"),o=t("wrap-function")(r),i=NREUM.o.MO;e.exports=r,i&&(window.MutationObserver=function(t){return this instanceof i?new i(o(t,"fn-")):i.apply(this,arguments)},MutationObserver.prototype=i.prototype)},{}],11:[function(t,e,n){function r(t){var e=i.context(),n=c(t,"executor-",e,null,!1),r=new u(n);return i.context(r).getCtx=function(){return e},r}var o=t("wrap-function"),i=t("ee").get("promise"),a=t("ee").getOrSetContext,c=o(i),s=t(27),u=NREUM.o.PR;e.exports=i,u&&(window.Promise=r,["all","race"].forEach(function(t){var e=u[t];u[t]=function(n){function r(t){return function(){i.emit("propagate",[null,!o],a,!1,!1),o=o||!t}}var o=!1;s(n,function(e,n){Promise.resolve(n).then(r("all"===t),r(!1))});var a=e.apply(u,arguments),c=u.resolve(a);return c}}),["resolve","reject"].forEach(function(t){var e=u[t];u[t]=function(t){var n=e.apply(u,arguments);return t!==n&&i.emit("propagate",[t,!0],n,!1,!1),n}}),u.prototype["catch"]=function(t){return this.then(null,t)},u.prototype=Object.create(u.prototype,{constructor:{value:r}}),s(Object.getOwnPropertyNames(u),function(t,e){try{r[e]=u[e]}catch(n){}}),o.wrapInPlace(u.prototype,"then",function(t){return function(){var e=this,n=o.argsToArray.apply(this,arguments),r=a(e);r.promise=e,n[0]=c(n[0],"cb-",r,null,!1),n[1]=c(n[1],"cb-",r,null,!1);var s=t.apply(this,n);return r.nextPromise=s,i.emit("propagate",[e,!0],s,!1,!1),s}}),i.on("executor-start",function(t){t[0]=c(t[0],"resolve-",this,null,!1),t[1]=c(t[1],"resolve-",this,null,!1)}),i.on("executor-err",function(t,e,n){t[1](n)}),i.on("cb-end",function(t,e,n){i.emit("propagate",[n,!0],this.nextPromise,!1,!1)}),i.on("propagate",function(t,e,n){this.getCtx&&!e||(this.getCtx=function(){if(t instanceof Promise)var e=i.context(t);return e&&e.getCtx?e.getCtx():this})}),r.toString=function(){return""+u})},{}],12:[function(t,e,n){var r=t("ee").get("raf"),o=t("wrap-function")(r),i="equestAnimationFrame";e.exports=r,o.inPlace(window,["r"+i,"mozR"+i,"webkitR"+i,"msR"+i],"raf-"),r.on("raf-start",function(t){t[0]=o(t[0],"fn-")})},{}],13:[function(t,e,n){function r(t,e,n){t[0]=a(t[0],"fn-",null,n)}function o(t,e,n){this.method=n,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,n)}var i=t("ee").get("timer"),a=t("wrap-function")(i),c="setTimeout",s="setInterval",u="clearTimeout",f="-start",d="-";e.exports=i,a.inPlace(window,[c,"setImmediate"],c+d),a.inPlace(window,[s],s+d),a.inPlace(window,[u,"clearImmediate"],u+d),i.on(s+f,r),i.on(c+f,o)},{}],14:[function(t,e,n){function r(t,e){d.inPlace(e,["onreadystatechange"],"fn-",c)}function o(){var t=this,e=f.context(t);t.readyState>3&&!e.resolved&&(e.resolved=!0,f.emit("xhr-resolved",[],t)),d.inPlace(t,g,"fn-",c)}function i(t){y.push(t),h&&(b?b.then(a):v?v(a):(E=-E,R.data=E))}function a(){for(var t=0;t<y.length;t++)r([],y[t]);y.length&&(y=[])}function c(t,e){return e}function s(t,e){for(var n in t)e[n]=t[n];return e}t(6);var u=t("ee"),f=u.get("xhr"),d=t("wrap-function")(f),p=NREUM.o,l=p.XHR,h=p.MO,m=p.PR,v=p.SI,w="readystatechange",g=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],y=[];e.exports=f;var x=window.XMLHttpRequest=function(t){var e=new l(t);try{f.emit("new-xhr",[e],e),e.addEventListener(w,o,!1)}catch(n){try{f.emit("internal-error",[n])}catch(r){}}return e};if(s(l,x),x.prototype=l.prototype,d.inPlace(x.prototype,["open","send"],"-xhr-",c),f.on("send-xhr-start",function(t,e){r(t,e),i(e)}),f.on("open-xhr-start",r),h){var b=m&&m.resolve();if(!v&&!m){var E=1,R=document.createTextNode(E);new h(a).observe(R,{characterData:!0})}}else u.on("fn-end",function(t){t[0]&&t[0].type===w||a()})},{}],15:[function(t,e,n){function r(t){if(!c(t))return null;var e=window.NREUM;if(!e.loader_config)return null;var n=(e.loader_config.accountID||"").toString()||null,r=(e.loader_config.agentID||"").toString()||null,u=(e.loader_config.trustKey||"").toString()||null;if(!n||!r)return null;var h=l.generateSpanId(),m=l.generateTraceId(),v=Date.now(),w={spanId:h,traceId:m,timestamp:v};return(t.sameOrigin||s(t)&&p())&&(w.traceContextParentHeader=o(h,m),w.traceContextStateHeader=i(h,v,n,r,u)),(t.sameOrigin&&!f()||!t.sameOrigin&&s(t)&&d())&&(w.newrelicHeader=a(h,m,v,n,r,u)),w}function o(t,e){return"00-"+e+"-"+t+"-01"}function i(t,e,n,r,o){var i=0,a="",c=1,s="",u="";return o+"@nr="+i+"-"+c+"-"+n+"-"+r+"-"+t+"-"+a+"-"+s+"-"+u+"-"+e}function a(t,e,n,r,o,i){var a="btoa"in window&&"function"==typeof window.btoa;if(!a)return null;var c={v:[0,1],d:{ty:"Browser",ac:r,ap:o,id:t,tr:e,ti:n}};return i&&r!==i&&(c.d.tk=i),btoa(JSON.stringify(c))}function c(t){return u()&&s(t)}function s(t){var e=!1,n={};if("init"in NREUM&&"distributed_tracing"in NREUM.init&&(n=NREUM.init.distributed_tracing),t.sameOrigin)e=!0;else if(n.allowed_origins instanceof Array)for(var r=0;r<n.allowed_origins.length;r++){var o=h(n.allowed_origins[r]);if(t.hostname===o.hostname&&t.protocol===o.protocol&&t.port===o.port){e=!0;break}}return e}function u(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.enabled}function f(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.exclude_newrelic_header}function d(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&NREUM.init.distributed_tracing.cors_use_newrelic_header!==!1}function p(){return"init"in NREUM&&"distributed_tracing"in NREUM.init&&!!NREUM.init.distributed_tracing.cors_use_tracecontext_headers}var l=t(24),h=t(17);e.exports={generateTracePayload:r,shouldGenerateTrace:c}},{}],16:[function(t,e,n){function r(t){var e=this.params,n=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<p;r++)t.removeEventListener(d[r],this.listener,!1);e.aborted||(n.duration=a.now()-this.startTime,this.loadCaptureCalled||4!==t.readyState?null==e.status&&(e.status=0):i(this,t),n.cbTime=this.cbTime,f.emit("xhr-done",[t],t),c("xhr",[e,n,this.startTime]))}}function o(t,e){var n=s(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.parsedOrigin=s(e),t.sameOrigin=t.parsedOrigin.sameOrigin}function i(t,e){t.params.status=e.status;var n=v(e,t.lastSize);if(n&&(t.metrics.rxSize=n),t.sameOrigin){var r=e.getResponseHeader("X-NewRelic-App-Data");r&&(t.params.cat=r.split(", ").pop())}t.loadCaptureCalled=!0}var a=t("loader");if(a.xhrWrappable){var c=t("handle"),s=t(17),u=t(15).generateTracePayload,f=t("ee"),d=["load","error","abort","timeout"],p=d.length,l=t("id"),h=t(21),m=t(20),v=t(18),w=window.XMLHttpRequest;a.features.xhr=!0,t(14),t(7),f.on("new-xhr",function(t){var e=this;e.totalCbs=0,e.called=0,e.cbTime=0,e.end=r,e.ended=!1,e.xhrGuids={},e.lastSize=null,e.loadCaptureCalled=!1,t.addEventListener("load",function(n){i(e,t)},!1),h&&(h>34||h<10)||window.opera||t.addEventListener("progress",function(t){e.lastSize=t.loaded},!1)}),f.on("open-xhr-start",function(t){this.params={method:t[0]},o(this,t[1]),this.metrics={}}),f.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid);var n=u(this.parsedOrigin);if(n){var r=!1;n.newrelicHeader&&(e.setRequestHeader("newrelic",n.newrelicHeader),r=!0),n.traceContextParentHeader&&(e.setRequestHeader("traceparent",n.traceContextParentHeader),n.traceContextStateHeader&&e.setRequestHeader("tracestate",n.traceContextStateHeader),r=!0),r&&(this.dt=n)}}),f.on("send-xhr-start",function(t,e){var n=this.metrics,r=t[0],o=this;if(n&&r){var i=m(r);i&&(n.txSize=i)}this.startTime=a.now(),this.listener=function(t){try{"abort"!==t.type||o.loadCaptureCalled||(o.params.aborted=!0),("load"!==t.type||o.called===o.totalCbs&&(o.onloadCalled||"function"!=typeof e.onload))&&o.end(e)}catch(n){try{f.emit("internal-error",[n])}catch(r){}}};for(var c=0;c<p;c++)e.addEventListener(d[c],this.listener,!1)}),f.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),f.on("xhr-load-added",function(t,e){var n=""+l(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),f.on("xhr-load-removed",function(t,e){var n=""+l(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),f.on("addEventListener-end",function(t,e){e instanceof w&&"load"===t[0]&&f.emit("xhr-load-added",[t[1],t[2]],e)}),f.on("removeEventListener-end",function(t,e){e instanceof w&&"load"===t[0]&&f.emit("xhr-load-removed",[t[1],t[2]],e)}),f.on("fn-start",function(t,e,n){e instanceof w&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=a.now()))}),f.on("fn-end",function(t,e){this.xhrCbStart&&f.emit("xhr-cb-time",[a.now()-this.xhrCbStart,this.onload,e],e)}),f.on("fetch-before-start",function(t){function e(t,e){var n=!1;return e.newrelicHeader&&(t.set("newrelic",e.newrelicHeader),n=!0),e.traceContextParentHeader&&(t.set("traceparent",e.traceContextParentHeader),e.traceContextStateHeader&&t.set("tracestate",e.traceContextStateHeader),n=!0),n}var n,r=t[1]||{};"string"==typeof t[0]?n=t[0]:t[0]&&t[0].url?n=t[0].url:window.URL&&t[0]&&t[0]instanceof URL&&(n=t[0].href),n&&(this.parsedOrigin=s(n),this.sameOrigin=this.parsedOrigin.sameOrigin);var o=u(this.parsedOrigin);if(o&&(o.newrelicHeader||o.traceContextParentHeader))if("string"==typeof t[0]||window.URL&&t[0]&&t[0]instanceof URL){var i={};for(var a in r)i[a]=r[a];i.headers=new Headers(r.headers||{}),e(i.headers,o)&&(this.dt=o),t.length>1?t[1]=i:t.push(i)}else t[0]&&t[0].headers&&e(t[0].headers,o)&&(this.dt=o)})}},{}],17:[function(t,e,n){var r={};e.exports=function(t){if(t in r)return r[t];var e=document.createElement("a"),n=window.location,o={};e.href=t,o.port=e.port;var i=e.href.split("://");!o.port&&i[1]&&(o.port=i[1].split("/")[0].split("@").pop().split(":")[1]),o.port&&"0"!==o.port||(o.port="https"===i[0]?"443":"80"),o.hostname=e.hostname||n.hostname,o.pathname=e.pathname,o.protocol=i[0],"/"!==o.pathname.charAt(0)&&(o.pathname="/"+o.pathname);var a=!e.protocol||":"===e.protocol||e.protocol===n.protocol,c=e.hostname===document.domain&&e.port===n.port;return o.sameOrigin=a&&(!e.hostname||c),"/"===o.pathname&&(r[t]=o),o}},{}],18:[function(t,e,n){function r(t,e){var n=t.responseType;return"json"===n&&null!==e?e:"arraybuffer"===n||"blob"===n||"json"===n?o(t.response):"text"===n||""===n||void 0===n?o(t.responseText):void 0}var o=t(20);e.exports=r},{}],19:[function(t,e,n){function r(){}function o(t,e,n){return function(){return i(t,[u.now()].concat(c(arguments)),e?null:this,n),e?void 0:this}}var i=t("handle"),a=t(27),c=t(28),s=t("ee").get("tracer"),u=t("loader"),f=NREUM;"undefined"==typeof window.newrelic&&(newrelic=f);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],p="api-",l=p+"ixn-";a(d,function(t,e){f[e]=o(p+e,!0,"api")}),f.addPageAction=o(p+"addPageAction",!0),f.setCurrentRouteName=o(p+"routeName",!0),e.exports=newrelic,f.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,e){var n={},r=this,o="function"==typeof e;return i(l+"tracer",[u.now(),t,n],r),function(){if(s.emit((o?"":"no-")+"fn-start",[u.now(),r,o],n),o)try{return e.apply(this,arguments)}catch(t){throw s.emit("fn-err",[arguments,this,t],n),t}finally{s.emit("fn-end",[u.now()],n)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,e){h[e]=o(l+e)}),newrelic.noticeError=function(t,e){"string"==typeof t&&(t=new Error(t)),i("err",[t,u.now(),!1,e])}},{}],20:[function(t,e,n){e.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(e){return}}}},{}],21:[function(t,e,n){var r=0,o=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);o&&(r=+o[1]),e.exports=r},{}],22:[function(t,e,n){function r(){return c.exists&&performance.now?Math.round(performance.now()):(i=Math.max((new Date).getTime(),i))-a}function o(){return i}var i=(new Date).getTime(),a=i,c=t(29);e.exports=r,e.exports.offset=a,e.exports.getLastTimestamp=o},{}],23:[function(t,e,n){function r(t,e){var n=t.getEntries();n.forEach(function(t){"first-paint"===t.name?d("timing",["fp",Math.floor(t.startTime)]):"first-contentful-paint"===t.name&&d("timing",["fcp",Math.floor(t.startTime)])})}function o(t,e){var n=t.getEntries();n.length>0&&d("lcp",[n[n.length-1]])}function i(t){t.getEntries().forEach(function(t){t.hadRecentInput||d("cls",[t])})}function a(t){if(t instanceof h&&!v){var e=Math.round(t.timeStamp),n={type:t.type};e<=p.now()?n.fid=p.now()-e:e>p.offset&&e<=Date.now()?(e-=p.offset,n.fid=p.now()-e):e=p.now(),v=!0,d("timing",["fi",e,n])}}function c(t){d("pageHide",[p.now(),t])}if(!("init"in NREUM&&"page_view_timing"in NREUM.init&&"enabled"in NREUM.init.page_view_timing&&NREUM.init.page_view_timing.enabled===!1)){var s,u,f,d=t("handle"),p=t("loader"),l=t(26),h=NREUM.o.EV;if("PerformanceObserver"in window&&"function"==typeof window.PerformanceObserver){s=new PerformanceObserver(r);try{s.observe({entryTypes:["paint"]})}catch(m){}u=new PerformanceObserver(o);try{u.observe({entryTypes:["largest-contentful-paint"]})}catch(m){}f=new PerformanceObserver(i);try{f.observe({type:"layout-shift",buffered:!0})}catch(m){}}if("addEventListener"in document){var v=!1,w=["click","keydown","mousedown","pointerdown","touchstart"];w.forEach(function(t){document.addEventListener(t,a,!1)})}l(c)}},{}],24:[function(t,e,n){function r(){function t(){return e?15&e[n++]:16*Math.random()|0}var e=null,n=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&(e=r.getRandomValues(new Uint8Array(31)));for(var o,i="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx",a="",c=0;c<i.length;c++)o=i[c],"x"===o?a+=t().toString(16):"y"===o?(o=3&t()|8,a+=o.toString(16)):a+=o;return a}function o(){return a(16)}function i(){return a(32)}function a(t){function e(){return n?15&n[r++]:16*Math.random()|0}var n=null,r=0,o=window.crypto||window.msCrypto;o&&o.getRandomValues&&Uint8Array&&(n=o.getRandomValues(new Uint8Array(31)));for(var i=[],a=0;a<t;a++)i.push(e().toString(16));return i.join("")}e.exports={generateUuid:r,generateSpanId:o,generateTraceId:i}},{}],25:[function(t,e,n){function r(t,e){if(!o)return!1;if(t!==o)return!1;if(!e)return!0;if(!i)return!1;for(var n=i.split("."),r=e.split("."),a=0;a<r.length;a++)if(r[a]!==n[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var c=navigator.userAgent,s=c.match(a);s&&c.indexOf("Chrome")===-1&&c.indexOf("Chromium")===-1&&(o="Safari",i=s[1])}e.exports={agent:o,version:i,match:r}},{}],26:[function(t,e,n){function r(t){function e(){t(a&&document[a]?document[a]:document[o]?"hidden":"visible")}"addEventListener"in document&&i&&document.addEventListener(i,e,!1)}e.exports=r;var o,i,a;"undefined"!=typeof document.hidden?(o="hidden",i="visibilitychange",a="visibilityState"):"undefined"!=typeof document.msHidden?(o="msHidden",i="msvisibilitychange"):"undefined"!=typeof document.webkitHidden&&(o="webkitHidden",i="webkitvisibilitychange",a="webkitVisibilityState")},{}],27:[function(t,e,n){function r(t,e){var n=[],r="",i=0;for(r in t)o.call(t,r)&&(n[i]=e(r,t[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],28:[function(t,e,n){function r(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(o<0?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=r},{}],29:[function(t,e,n){e.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(t,e,n){function r(){}function o(t){function e(t){return t&&t instanceof r?t:t?u(t,s,a):a()}function n(n,r,o,i,a){if(a!==!1&&(a=!0),!l.aborted||i){t&&a&&t(n,r,o);for(var c=e(o),s=m(n),u=s.length,f=0;f<u;f++)s[f].apply(c,r);var p=d[y[n]];return p&&p.push([x,n,r,c]),c}}function i(t,e){g[t]=m(t).concat(e)}function h(t,e){var n=g[t];if(n)for(var r=0;r<n.length;r++)n[r]===e&&n.splice(r,1)}function m(t){return g[t]||[]}function v(t){return p[t]=p[t]||o(n)}function w(t,e){f(t,function(t,n){e=e||"feature",y[n]=e,e in d||(d[e]=[])})}var g={},y={},x={on:i,addEventListener:i,removeEventListener:h,emit:n,get:v,listeners:m,context:e,buffer:w,abort:c,aborted:!1};return x}function i(t){return u(t,s,a)}function a(){return new r}function c(){(d.api||d.feature)&&(l.aborted=!0,d=l.backlog={})}var s="nr@context",u=t("gos"),f=t(27),d={},p={},l=e.exports=o();e.exports.getOrSetContext=i,l.backlog=d},{}],gos:[function(t,e,n){function r(t,e,n){if(o.call(t,e))return t[e];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[e]=r,r}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(t,e,n){function r(t,e,n,r){o.buffer([t],r),o.emit(t,e,n)}var o=t("ee").get("handle");e.exports=r,r.ee=o},{}],id:[function(t,e,n){function r(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");e.exports=r},{}],loader:[function(t,e,n){function r(){if(!b++){var t=x.info=NREUM.info,e=p.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&e))return u.abort();s(g,function(e,n){t[e]||(t[e]=n)});var n=a();c("mark",["onload",n+x.offset],null,"api"),c("timing",["load",n]);var r=p.createElement("script");r.src="https://"+t.agent,e.parentNode.insertBefore(r,e)}}function o(){"complete"===p.readyState&&i()}function i(){c("mark",["domContent",a()+x.offset],null,"api")}var a=t(22),c=t("handle"),s=t(27),u=t("ee"),f=t(25),d=window,p=d.document,l="addEventListener",h="attachEvent",m=d.XMLHttpRequest,v=m&&m.prototype;NREUM.o={ST:setTimeout,SI:d.setImmediate,CT:clearTimeout,XHR:m,REQ:d.Request,EV:d.Event,PR:d.Promise,MO:d.MutationObserver};var w=""+location,g={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-spa-1194.min.js"},y=m&&v&&v[l]&&!/CriOS/.test(navigator.userAgent),x=e.exports={offset:a.getLastTimestamp(),now:a,origin:w,features:{},xhrWrappable:y,userAgent:f};t(19),t(23),p[l]?(p[l]("DOMContentLoaded",i,!1),d[l]("load",r,!1)):(p[h]("onreadystatechange",o),d[h]("onload",r)),c("mark",["firstbyte",a.getLastTimestamp()],null,"api");var b=0},{}],"wrap-function":[function(t,e,n){function r(t,e){function n(e,n,r,s,u){function nrWrapper(){var i,a,f,p;try{a=this,i=d(arguments),f="function"==typeof r?r(i,a):r||{}}catch(l){o([l,"",[i,a,s],f],t)}c(n+"start",[i,a,s],f,u);try{return p=e.apply(a,i)}catch(h){throw c(n+"err",[i,a,h],f,u),h}finally{c(n+"end",[i,a,p],f,u)}}return a(e)?e:(n||(n=""),nrWrapper[p]=e,i(e,nrWrapper,t),nrWrapper)}function r(t,e,r,o,i){r||(r="");var c,s,u,f="-"===r.charAt(0);for(u=0;u<e.length;u++)s=e[u],c=t[s],a(c)||(t[s]=n(c,f?s+r:r,o,s,i))}function c(n,r,i,a){if(!h||e){var c=h;h=!0;try{t.emit(n,r,i,e,a)}catch(s){o([s,n,r,i],t)}h=c}}return t||(t=f),n.inPlace=r,n.flag=p,n}function o(t,e){e||(e=f);try{e.emit("internal-error",t)}catch(n){}}function i(t,e,n){if(Object.defineProperty&&Object.keys)try{var r=Object.keys(t);return r.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(i){o([i],n)}for(var a in t)l.call(t,a)&&(e[a]=t[a]);return e}function a(t){return!(t&&t instanceof Function&&t.apply&&!t[p])}function c(t,e){var n=e(t);return n[p]=t,i(t,n,f),n}function s(t,e,n){var r=t[e];t[e]=c(r,n)}function u(){for(var t=arguments.length,e=new Array(t),n=0;n<t;++n)e[n]=arguments[n];return e}var f=t("ee"),d=t(28),p="nr@original",l=Object.prototype.hasOwnProperty,h=!1;e.exports=r,e.exports.wrapFunction=c,e.exports.wrapInPlace=s,e.exports.argsToArray=u},{}]},{},["loader",2,16,5,3,4]);</script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="google" content="notranslate">
    <meta name="language" content="en-US"/>
    <meta name="keywords" content="cybersecurity software"/>
            <meta name="msvalidate.01" content="313BF51CACECEEB6DAB46D703F14A51F"/>
        <meta name="description" content="Bitdefender is a global cybersecurity leader you can trust and rely on, protecting over 500 million systems in more than 150 countries."/>
    <meta name="p:domain_verify" content="2da66294b6ba7ffd7646b5bdbd90192f"/>
    


    
    
    <link rel="canonical" href='https://www.bitdefender.com/' />    
    <link rel="apple-touch-icon-precomposed" sizes="57x57"
          href="https://download.bitdefender.com/resources/images/favicon/apple-touch-icon-57x57.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="114x114"
          href="https://download.bitdefender.com/resources/images/favicon/apple-touch-icon-114x114.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="72x72"
          href="https://download.bitdefender.com/resources/images/favicon/apple-touch-icon-72x72.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="144x144"
          href="https://download.bitdefender.com/resources/images/favicon/apple-touch-icon-144x144.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="60x60"
          href="https://download.bitdefender.com/resources/images/favicon/apple-touch-icon-60x60.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="120x120"
          href="https://download.bitdefender.com/resources/images/favicon/apple-touch-icon-120x120.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="76x76"
          href="https://download.bitdefender.com/resources/images/favicon/apple-touch-icon-76x76.png"/>
    <link rel="apple-touch-icon-precomposed" sizes="152x152"
          href="https://download.bitdefender.com/resources/images/favicon/apple-touch-icon-152x152.png"/>
    <link rel="icon" type="image/png" href="https://download.bitdefender.com/resources/images/favicon/favicon-196x196.png" sizes="196x196"/>
    <link rel="icon" type="image/png" href="https://download.bitdefender.com/resources/images/favicon/favicon-96x96.png" sizes="96x96"/>
    <link rel="icon" type="image/png" href="https://download.bitdefender.com/resources/images/favicon/favicon-32x32.png" sizes="32x32"/>
    <link rel="icon" type="image/png" href="https://download.bitdefender.com/resources/images/favicon/favicon-16x16.png" sizes="16x16"/>
    <link rel="icon" type="image/png" href="https://download.bitdefender.com/resources/images/favicon/favicon-128.png" sizes="128x128"/>
    <meta name="application-name" content="&nbsp;"/>
    <meta name="msapplication-TileColor" content="#FFFFFF"/>
    <meta name="msapplication-TileImage" content="https://download.bitdefender.com/resources/images/favicon/mstile-144x144.png"/>
    <meta name="msapplication-square70x70logo" content="https://download.bitdefender.com/resources/images/favicon/mstile-70x70.png"/>
    <meta name="msapplication-square150x150logo" content="https://download.bitdefender.com/resources/images/favicon/mstile-150x150.png"/>
    <meta name="msapplication-wide310x150logo" content="https://download.bitdefender.com/resources/images/favicon/mstile-310x150.png"/>
    <meta name="msapplication-square310x310logo" content="https://download.bitdefender.com/resources/images/favicon/mstile-310x310.png"/>

    
                
    <meta name="p:domain_verify" content="2da66294b6ba7ffd7646b5bdbd90192f"/>

    <link rel="P3Pv1" href="//www.bitdefender.com/w3c/p3p.xml"/>

    <script>var DEFAULT_LANGUAGE = 'en';</script><script>var LOCALE = 'en-us';</script>    <script>
        var geoip_code = '';
        try {
            geoip_code = 'us';
        } catch (ex) {
        }
        var geoip_bd = 'us';
    </script>
    <script id="Cookiebot" src="https://consent.cookiebot.com/uc.js" data-culture="EN"
            data-cbid="4a55b566-7010-4633-9b03-7ba7735be0b6" type="text/javascript" async></script>
    <script>
        var module_bd = 'Main';
        var event_bd = 'showMain';
        var info_bd = '';
        var geoip_bd = 'us';

        if (typeof getCookie === 'undefined') {
            function getCookie(cname) {
                var name = cname + "=";
                var docCookie = document.cookie;
                var ca = docCookie.split(';');
                for (var i = 0; i < ca.length; i++) {
                    var c = ca[i];
                    try {
                        c = decodeURIComponent(c);
                    } catch (e) {
                        continue;
                    }

                    while (c.charAt(0) == ' ') {
                        c = c.substring(1);
                    }
                    if (c.indexOf(name) == 0) {
                        return c.substring(name.length, c.length);
                    }
                }
                return "";
            }
        }

        if (typeof setCookie === 'undefined') {
            function setCookie(cname, cvalue, exdays) {
                var d = new Date();
                d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
                var expires = "expires=" + d.toUTCString();
                document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
            }
        }
    </script>


    <script src="https://cdn.ravenjs.com/3.26.2/raven.min.js" crossorigin="anonymous"></script>
    <script> Raven.config('https://166bf44bf53a4a5c9017a475e8f0d0ca@catch-nimbus.bitdefender.net/73').install();</script>


            <script>
            CBSTags = [];
            CBSGeoip = '';
            try {
                CBSTags = ["homepage","theme:draco"];
                CBSGeoip = 'us';
            } catch (ex) {
            }
        </script>
    
    <script	type="text/javascript"	src="//cdn.bizible.com/scripts/bizible.js"	async=""></script>

    <script type="text/javascript" src="https://download.bitdefender.com/resources/themes/draco/scripts/ads.js"></script>
<script type="text/javascript" src="//www.bitdefender.com/site/Main/generalDigitalData/?p=us:main:showhomepage&dl=en&t=&h=ip-10-122-2-36.ec2.internal&s=www.bitdefender.com"></script>
<script type="text/javascript" src="/themes/draco/scripts/digitalDataUtils.min.js"></script>
        <script>
            var THEME = 'draco';
        </script>

    <link rel="dns-prefetch" href="//download.bitdefender.com">

    <script src="//assets.adobedtm.com/4b7ac0a30c6cfe2deb06368f62d41f996c29744e/satelliteLib-3a8d5287cf775324dc6c68719a1ddc96c5a139ba.js" type="text/javascript"></script>
        <script src="//code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>
    <script type="text/javascript" src="/scripts/StoreCallbacks.js"></script>
    <script type="text/javascript" src="/scripts/StoreCallbacksFunctions.js"></script>
    <script type="text/javascript" src="/scripts/Store2015.min.js"></script>

    
    
    
    <script type="text/javascript">
        try {
            if (typeof jQuery == 'undefined') {
                var wl = encodeURIComponent(window.location.href);
                document.write(unescape("%3Cscript src='/site/Store/ajax/?gev=1&m=jq&rf=" + escape(wl) + "' type='text/javascript'%3E%3C/script%3E"));
            }
        } catch (e) {
        }
    </script>

    <script type="text/javascript">
    document.domain = "bitdefender.com";
</script>
	<script type="text/plain" data-cookieconsent="statistics">(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-PLJJB3');</script>
	<!-- End Google Tag Manager -->        <script src="https://www.bitdefender.com/scripts/TagIT.v1.min.js?v=43" type="text/javascript"></script>
        <script type="text/javascript">
            tagit = new TagIT('en');
        </script>
    
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PLJJB3"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->


    
    <script>
        window.__ignorePromo = (function () {
            var hasPID = false;
            if (typeof tagit_params !== 'undefined') {
                for (i in tagit_params.obj) {
                    if ('pid' in tagit_params.obj[i]) {
                        hasPID = true;
                        break;
                    }
                }
            }
            return typeof digitalData.user !== 'undefined'
                && typeof digitalData.user.customer !== 'undefined'
                && digitalData.user.customer === 'consumer'
                && hasPID === false;
        })();

        if (DEFAULT_LANGUAGE === 'uk') {
            window.__ignorePromo = false;
        }

        if ("undefined" !== typeof Cookiebot && !Cookiebot.consent.statistics)
            window.__ignorePromo = false;

        if (typeof __global_extra_params !== 'undefined')
            window.__ignorePromo = false;
        if (typeof __global_extra_params !== 'undefined' && 'pid' in __global_extra_params) {
            setCookie('__global_pid', __global_extra_params.pid);
        } else if (typeof __global_extra_params == 'undefined' && getCookie('__global_pid')) {
            window.__global_extra_params = {pid: getCookie('__global_pid')};
        }
        //window.__ignorePromo = true;
        $(document).ready(function () {
            if (window.__ignorePromo) {
                if (typeof digitalData !== "undefined" && digitalData.page.info.name.includes(":main:showhomepage")) {
                    window.setTimeout(function () {
                        $("#fixedPopup2").addClass('open');
                    }, 3000);
                    $('.closePopup').click(function () {
                        $("#fixedPopup2").removeClass("open");
                    });
                }

                $('#MainMenu\\|Consumer > li > div:nth-child(1) > ul:nth-child(4) > li:nth-child(1) > a').attr('href', '/quick-renewal/?icid=button|c|consumermenu|quickrenew');
                $('.expired > a').attr('href', '/quick-renewal/?icid=button|c|consumermenu|quickrenew');
                $('.QRLink').attr('href', '/quick-renewal/?icid=button|c|consumermenu|quickrenew');

                $(".addBanner .item").remove();
                $("#static-footer").remove();

                var banner = '<div id="tsSpring2017_off" class="item"><a href="/quick-renewal/?icid=banner|c|mainmenu|quickrenew" class="abs-img"><img src="https://download.bitdefender.com/resources/themes/draco/images/banner_renewal_topmenu_EN_v2.jpg" alt=""></a><div class="info-text"><h4 class="title roboto" style="font-size: 27px;">FOR EXISTING <br /> CUSTOMERS</h4><br /><div class="col-xs-6 noPadding"><a href="/quick-renewal/?icid=banner|c|mainmenu|quickrenew" class="whiteBtn">RENEW NOW</a></div></div></div>';

                $('.addBanner').prepend(banner);
                $(".addBanner .item:eq(0)").addClass("active");
            }

        });
    </script>
    <style>
        .svg-inline--fa{
            width: 1em;
            height: 1em;
        }
    </style>
</head>

<body class="en en_us  with-livenews " >




<link href="/themes/draco/menu_json/mega_menu.css" rel="stylesheet">
<link href="/themes/draco/menu_json/font-awesome/css/fontawesome.css" rel="stylesheet">
<link href="/themes/draco/menu_json/font-awesome/css/light.css" rel="stylesheet">

<script type="text/javascript" src="/themes/draco/menu_json/js/vendor/jquery.highlight.js"></script>
<script type="text/javascript" src="/themes/draco/menu_json/js/main.js"></script>


<div class="bit-mm">

    
    <div class="bit-mm__bar">
        <div class="bit-mm__bar__container">
            <div class="bit-mm__logo__container">
                <a href="/" class="bit-mm__logo"></a>
            </div>
            <div class="bit-mm__back__container">
                <a href="" class="bit-mm__back"></a>
            </div>
            <div class="bit-mm__profile__container"></div>
            <div class="bit-mm__cart__container"></div>
            <div class="bit-mm__hamburger-trigger__container">
                <button class="hamburger-trigger ">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
            </div>
            <div class="bit-mm__search">
                <!-- search zone -->
            </div>
            <div class="bit-mm__profile__container__d">
                <ul class="profile__items">
                                            <li class="drop__container support-menu">
                            <a href="" class="profile__item drop__trigger">
                                <i class="fal fa-headset"></i> <span class="my__account__title">Support</span>
                            </a>
                            <div class="drop__body">
                                <div class="drop__body__title">
                                    <p class="t_bold">How can we help?</p>
                                    <p></p>
                                </div>
                                                                    <a href="/consumer/support/" class="btn blue_empty">Support for Home Products</a>
                                                                    <a href="/business/customer-portal/enterprise-standard-support.html" class="btn blue_empty">Support for Business Products</a>
                                                            </div>
                        </li>
                                            <li class="drop__container your-account">
                            <a href="" class="profile__item drop__trigger">
                                <i class="fal fa-user-circle"></i> <span class="my__account__title">My Account</span>
                            </a>
                            <div class="drop__body">
                                <div class="drop__body__title">
                                    <p class="t_bold">Your Account</p>
                                    <p>Log in to your Bitdefender account and manage security for what matters.</p>
                                </div>
                                                                    <a href="https://login.bitdefender.com/central/login.html?lang=en_US&redirect_url=https:%2F%2Fcentral.bitdefender.com%2F" class="btn blue_empty">Bitdefender Central</a>
                                                                    <a href="https://gravityzone.bitdefender.com/" class="btn blue_empty">GravityZone CLOUD Control Center</a>
                                                            </div>
                        </li>
                                    </ul>
            </div>

            <div class="bit-mm__projected__panel__head">
                <i class="fal fa-arrow-left"></i>
                <a href="" class="h-tab__back"></a>
            </div>
        </div>
    </div>

    <div class="bit-mm__tabs-bar">
        <div class="bit-mm__navigation__container">
            <nav class="h-tabs ">
                <div class="h-tab__triggers">
                                                                    <div class="h-tab__trigger has--child trigger ">
                            <a href="/solutions/" class="h-tab__trigger__title trigger__to" data-trigger-type="h-tab" data-trigger-to="home">For Home                                <span class="tab__trigger__arrow"></span></a>
                        </div>
                                                                    <div class="h-tab__trigger has--child trigger ">
                            <a href="/business/" class="h-tab__trigger__title trigger__to" data-trigger-type="h-tab" data-trigger-to="business">For Business                                <span class="tab__trigger__arrow"></span></a>
                        </div>
                                                                    <div class="h-tab__trigger has--child trigger ">
                            <a href="/partners/" class="h-tab__trigger__title trigger__to" data-trigger-type="h-tab" data-trigger-to="partners">For Partners                                <span class="tab__trigger__arrow"></span></a>
                        </div>
                                                                    <div class="h-tab__trigger has--child trigger ">
                            <a href="/company/" class="h-tab__trigger__title trigger__to" data-trigger-type="h-tab" data-trigger-to="company">Company                                <span class="tab__trigger__arrow"></span></a>
                        </div>
                                                                    <div class="h-tab__trigger   ">
                            <a href="//labs.bitdefender.com/" class="h-tab__trigger__title trigger__to" >Labs                                </a>
                        </div>
                    
                                                                    <div class="h-tab__trigger no-border trigger__to  ext__trigger support-menu">
                            <a href="" class="h-tab__trigger__title ext__title trigger__to" data-trigger-type="h-tab" data-trigger-to="support-menu">
                                <i class="fal fa-headphones"></i>
                                Support                            </a>
                        </div>
                                                                    <div class="h-tab__trigger no-border trigger__to  ext__trigger your-account">
                            <a href="" class="h-tab__trigger__title ext__title trigger__to" data-trigger-type="h-tab" data-trigger-to="your-account">
                                <i class="fal fa-user-circle"></i>
                                My Account                            </a>
                        </div>
                                    </div>
                <div class="h-tab__panels">
                                            <div class="h-tab__panel home" data-menu="home" id="MainMenu|Home">
                            <div class="v-tabs">
                                                                    <div class="v-tabs__triggers">
                                                                                    <div class="v-tab__ext">
                                                <a href="/solutions/" class="v-tab__ext__title">All Solutions</a>
                                            </div>
                                                                                                                            <div class="v-tab__trigger ">
                                                <a href="" class="v-tab__trigger__title trigger__to abtest_pc" data-trigger-type="v-tab" data-trigger-to="pc">PC</a>
                                            </div>
                                                                                    <div class="v-tab__trigger ">
                                                <a href="" class="v-tab__trigger__title trigger__to abtest_mac" data-trigger-type="v-tab" data-trigger-to="mac">Mac</a>
                                            </div>
                                                                                    <div class="v-tab__trigger ">
                                                <a href="" class="v-tab__trigger__title trigger__to abtest_mobile" data-trigger-type="v-tab" data-trigger-to="mobile">Mobile</a>
                                            </div>
                                                                                    <div class="v-tab__trigger ">
                                                <a href="" class="v-tab__trigger__title trigger__to abtest_multiplatform" data-trigger-type="v-tab" data-trigger-to="multiplatform">Multiplatform</a>
                                            </div>
                                        
                                    </div>
                                
                                <div class="v-tabs__panels ">
                                                                            <div id="MainMenu|Home|Pc" class="v-tab__panel" data-menu="pc">
                                            <div class="columns">
                                                                                                        <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">PRODUCTS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item bitdefender_box">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender BOX';"  href="/box/" class="item__title">Bitdefender BOX</a>
                                                                                                                                                                            <ul class="item__props">
                                                                                                                                                                                            <li class="item__prop">
                                                                                                                                                                                                        <span class="pill blue ">Internet of Things</span>
                                                                                                </li>
                                                                                                                                                                                    </ul>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_premium_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Premium Security';"  href="/solutions/premium-security.html" class="item__title">Bitdefender Premium Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_small_office_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Small Office Security';"  href="/solutions/small-office-security.html" class="item__title">Bitdefender Small Office Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_total_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Total Security';"  href="/solutions/total-security.html" class="item__title">Bitdefender Total Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_internet_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Internet Security';"  href="/solutions/internet-security.html" class="item__title">Bitdefender Internet Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_antivirus_plus">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Antivirus Plus';"  href="/solutions/antivirus.html" class="item__title">Bitdefender Antivirus Plus</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_family_pack">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Family Pack';"  href="/solutions/family-pack.html" class="item__title">Bitdefender Family Pack</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">Already a customer?</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item renewal_&_upgrade">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Renewal & Upgrade';"  href="/renewal/?icid=menu_quickrenew" class="item__title">Renewal & Upgrade</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item get_support">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Get Support';"  href="/consumer/support/" class="item__title">Get Support</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item join_the_community!">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Join the community!';"  href="//community.bitdefender.com/" class="item__title">Join the community!</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">SERVICES</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/solutions/digital-identity-protection.html" class="item__title">Bitdefender Digital Identity Protection</a>
                                                                                                                                                                            <ul class="item__props">
                                                                                                                                                                                            <li class="item__prop">
                                                                                                                                                                                                        <span class="pill red ">New</span>
                                                                                                </li>
                                                                                                                                                                                    </ul>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/solutions/vpn.html" class="item__title">Bitdefender Premium VPN</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/premium-services/home-network-support.html" class="item__title">Bitdefender Home Network Support</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/premium-services/computer-tune-up.html" class="item__title">Bitdefender Computer Tune-Up</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/premium-services/vip-support.html" class="item__title">Bitdefender VIP Support</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/premium-services/" class="item__title">Premium Services</a>
                                                                                                                                                                    </div>
                                                                                                                                                                    <div class="item__body">
                                                                                        <p>Live Support offered by certified experts</p>
                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">TOOLBOX</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/toolbox/" class="item__title">Free Tools</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/solutions/free.html" class="item__title">Antivirus Free</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/solutions/home-scanner.html" class="item__title">Home Scanner</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                </div>
                                                                                            <div class="undercolumns">
                                                    <ul class="undercolumn__items">
                                                                                                                    <li class="undercolumn__item compare-solutions">
                                                                <a href="/solutions/antivirus-comparison.html">Compare Solutions</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item trial-downloads">
                                                                <a href="/Downloads/">Trial Downloads</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item log-in-to-central">
                                                                <a href="https://login.bitdefender.com/central/login.html?lang=en_US&redirect_url=https:%2F%2Fcentral.bitdefender.com%2F">Log in to Central</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item free-tools">
                                                                <a href="/toolbox/">Free Tools</a>
                                                            </li>
                                                                                                            </ul>
                                                </div>
                                                                                    </div>
                                                                            <div id="MainMenu|Home|Mac" class="v-tab__panel" data-menu="mac">
                                            <div class="columns">
                                                                                                        <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">PRODUCTS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item bitdefender_box">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender BOX';"  href="/box/" class="item__title">Bitdefender BOX</a>
                                                                                                                                                                            <ul class="item__props">
                                                                                                                                                                                            <li class="item__prop">
                                                                                                                                                                                                        <span class="pill blue ">Internet of Things</span>
                                                                                                </li>
                                                                                                                                                                                    </ul>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_premium_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Premium Security';"  href="/solutions/premium-security.html" class="item__title">Bitdefender Premium Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_small_office_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Small Office Security';"  href="/solutions/small-office-security.html" class="item__title">Bitdefender Small Office Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_total_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Total Security';"  href="/solutions/total-security.html" class="item__title">Bitdefender Total Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_family_pack">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Family Pack';"  href="/solutions/family-pack.html" class="item__title">Bitdefender Family Pack</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_antivirus_for_mac">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Antivirus for Mac';"  href="/solutions/antivirus-for-mac.html" class="item__title">Bitdefender Antivirus for Mac</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">Already a customer?</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item renewal_&_upgrade">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Renewal & Upgrade';"  href="/renewal/?icid=menu_quickrenew" class="item__title">Renewal & Upgrade</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item get_support">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Get Support';"  href="/consumer/support/" class="item__title">Get Support</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item join_the_community!">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Join the community!';"  href="//community.bitdefender.com/" class="item__title">Join the community!</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">SERVICES</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/solutions/digital-identity-protection.html" class="item__title">Bitdefender Digital Identity Protection</a>
                                                                                                                                                                            <ul class="item__props">
                                                                                                                                                                                            <li class="item__prop">
                                                                                                                                                                                                        <span class="pill red ">New</span>
                                                                                                </li>
                                                                                                                                                                                    </ul>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/solutions/vpn.html" class="item__title">Bitdefender Premium VPN</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/premium-services/" class="item__title">Premium Services</a>
                                                                                                                                                                    </div>
                                                                                                                                                                    <div class="item__body">
                                                                                        <p>Live Support offered by certified experts</p>
                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">TOOLBOX</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/toolbox/" class="item__title">Free Tools</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/solutions/virus-scanner-for-mac.html" class="item__title">Virus Scanner for Mac</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                </div>
                                                                                            <div class="undercolumns">
                                                    <ul class="undercolumn__items">
                                                                                                                    <li class="undercolumn__item compare-solutions">
                                                                <a href="/solutions/antivirus-comparison.html">Compare Solutions</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item trial-downloads">
                                                                <a href="/Downloads/">Trial Downloads</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item log-in-to-central">
                                                                <a href="https://login.bitdefender.com/central/login.html?lang=en_US&redirect_url=https:%2F%2Fcentral.bitdefender.com%2F">Log in to Central</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item free-tools">
                                                                <a href="/toolbox/">Free Tools</a>
                                                            </li>
                                                                                                            </ul>
                                                </div>
                                                                                    </div>
                                                                            <div id="MainMenu|Home|Mobile" class="v-tab__panel" data-menu="mobile">
                                            <div class="columns">
                                                                                                        <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">PRODUCTS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item bitdefender_box">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender BOX';"  href="/box/" class="item__title">Bitdefender BOX</a>
                                                                                                                                                                            <ul class="item__props">
                                                                                                                                                                                            <li class="item__prop">
                                                                                                                                                                                                        <span class="pill blue ">Internet of Things</span>
                                                                                                </li>
                                                                                                                                                                                    </ul>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_premium_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Premium Security';"  href="/solutions/premium-security.html" class="item__title">Bitdefender Premium Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_small_office_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Small Office Security';"  href="/solutions/small-office-security.html" class="item__title">Bitdefender Small Office Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_total_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Total Security';"  href="/solutions/total-security.html" class="item__title">Bitdefender Total Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_mobile_security_for_android">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Mobile Security for Android';"  href="/solutions/mobile-security-android.html" class="item__title">Bitdefender Mobile Security for Android</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_mobile_security_for_ios">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Mobile Security for iOS';"  href="/solutions/mobile-security-ios.html" class="item__title">Bitdefender Mobile Security for iOS</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">Already a customer?</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item renewal_&_upgrade">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Renewal & Upgrade';"  href="/renewal/?icid=menu_quickrenew" class="item__title">Renewal & Upgrade</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item get_support">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Get Support';"  href="/consumer/support/" class="item__title">Get Support</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item join_the_community!">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Join the community!';"  href="//community.bitdefender.com/" class="item__title">Join the community!</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">SERVICES</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/solutions/digital-identity-protection.html" class="item__title">Bitdefender Digital Identity Protection</a>
                                                                                                                                                                            <ul class="item__props">
                                                                                                                                                                                            <li class="item__prop">
                                                                                                                                                                                                        <span class="pill red ">New</span>
                                                                                                </li>
                                                                                                                                                                                    </ul>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/solutions/vpn.html" class="item__title">Bitdefender Premium VPN</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/premium-services/" class="item__title">Premium Services</a>
                                                                                                                                                                    </div>
                                                                                                                                                                    <div class="item__body">
                                                                                        <p>Live Support offered by certified experts</p>
                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">TOOLBOX</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/toolbox/" class="item__title">Free Tools</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/solutions/antivirus-free-for-android.html" class="item__title">Antivirus Free for Android</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                </div>
                                                                                            <div class="undercolumns">
                                                    <ul class="undercolumn__items">
                                                                                                                    <li class="undercolumn__item compare-solutions">
                                                                <a href="/solutions/antivirus-comparison.html">Compare Solutions</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item trial-downloads">
                                                                <a href="/Downloads/">Trial Downloads</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item log-in-to-central">
                                                                <a href="https://login.bitdefender.com/central/login.html?lang=en_US&redirect_url=https:%2F%2Fcentral.bitdefender.com%2F">Log in to Central</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item free-tools">
                                                                <a href="/toolbox/">Free Tools</a>
                                                            </li>
                                                                                                            </ul>
                                                </div>
                                                                                    </div>
                                                                            <div id="MainMenu|Home|Multiplatform" class="v-tab__panel" data-menu="multiplatform">
                                            <div class="columns">
                                                                                                        <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">PRODUCTS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item bitdefender_box">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender BOX';"  href="/box/" class="item__title">Bitdefender BOX</a>
                                                                                                                                                                            <ul class="item__props">
                                                                                                                                                                                            <li class="item__prop">
                                                                                                                                                                                                        <span class="pill blue ">Internet of Things</span>
                                                                                                </li>
                                                                                                                                                                                    </ul>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_premium_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Premium Security';"  href="/solutions/premium-security.html" class="item__title">Bitdefender Premium Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_small_office_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Small Office Security';"  href="/solutions/small-office-security.html" class="item__title">Bitdefender Small Office Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_total_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Total Security';"  href="/solutions/total-security.html" class="item__title">Bitdefender Total Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item bitdefender_family_pack">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Bitdefender Family Pack';"  href="/solutions/family-pack.html" class="item__title">Bitdefender Family Pack</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">Already a customer?</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item renewal_&_upgrade">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Renewal & Upgrade';"  href="/renewal/?icid=menu_quickrenew" class="item__title">Renewal & Upgrade</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item get_support">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Get Support';"  href="/consumer/support/" class="item__title">Get Support</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item join_the_community!">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Join the community!';"  href="//community.bitdefender.com/" class="item__title">Join the community!</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">SERVICES</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/solutions/digital-identity-protection.html" class="item__title">Bitdefender Digital Identity Protection</a>
                                                                                                                                                                            <ul class="item__props">
                                                                                                                                                                                            <li class="item__prop">
                                                                                                                                                                                                        <span class="pill red ">New</span>
                                                                                                </li>
                                                                                                                                                                                    </ul>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/solutions/vpn.html" class="item__title">Bitdefender Premium VPN</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/premium-services/" class="item__title">Premium Services</a>
                                                                                                                                                                    </div>
                                                                                                                                                                    <div class="item__body">
                                                                                        <p>Live Support offered by certified experts</p>
                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">TOOLBOX</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/toolbox/" class="item__title">Free Tools</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/solutions/free.html" class="item__title">Antivirus Free</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                </div>
                                                                                            <div class="undercolumns">
                                                    <ul class="undercolumn__items">
                                                                                                                    <li class="undercolumn__item compare-solutions">
                                                                <a href="/solutions/antivirus-comparison.html">Compare Solutions</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item trial-downloads">
                                                                <a href="/Downloads/">Trial Downloads</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item log-in-to-central">
                                                                <a href="https://login.bitdefender.com/central/login.html?lang=en_US&redirect_url=https:%2F%2Fcentral.bitdefender.com%2F">Log in to Central</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item free-tools">
                                                                <a href="/toolbox/">Free Tools</a>
                                                            </li>
                                                                                                            </ul>
                                                </div>
                                                                                    </div>
                                                                    </div>
                            </div>
                        </div>

                                            <div class="h-tab__panel business" data-menu="business" id="MainMenu|Business">
                            <div class="v-tabs">
                                                                    <div class="v-tabs__triggers">
                                                                                    <div class="v-tab__ext">
                                                <a href="/business/" class="v-tab__ext__title">Solutions Overview</a>
                                            </div>
                                                                                                                            <div class="v-tab__trigger ">
                                                <a href="" class="v-tab__trigger__title trigger__to abtest_products" data-trigger-type="v-tab" data-trigger-to="products">Products</a>
                                            </div>
                                                                                    <div class="v-tab__trigger ">
                                                <a href="" class="v-tab__trigger__title trigger__to abtest_solutions-services" data-trigger-type="v-tab" data-trigger-to="solutions-services">Solutions & Services</a>
                                            </div>
                                                                                    <div class="v-tab__trigger ">
                                                <a href="" class="v-tab__trigger__title trigger__to abtest_threat-research" data-trigger-type="v-tab" data-trigger-to="threat-research">Threat Research</a>
                                            </div>
                                                                                    <div class="v-tab__trigger ">
                                                <a href="" class="v-tab__trigger__title trigger__to abtest_why-bitdefender" data-trigger-type="v-tab" data-trigger-to="why-bitdefender">Why Bitdefender</a>
                                            </div>
                                        
                                    </div>
                                
                                <div class="v-tabs__panels ">
                                                                            <div id="MainMenu|Business|Products" class="v-tab__panel" data-menu="products">
                                            <div class="columns">
                                                                                                        <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">MID-MARKET & ENTERPRISE</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item gravityzone_elite">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='GravityZone Elite';"  href="/business/enterprise-products/elite-security.html" class="item__title">GravityZone Elite</a>
                                                                                                                                                                    </div>
                                                                                                                                                                    <div class="item__body">
                                                                                        <p>Prevention, Hardening, Risk, and Incident Analytics</p>
                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item endpoint_detection_and_response">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Endpoint Detection and Response';"  href="/business/enterprise-products/endpoint-detection-response.html" class="item__title">Endpoint Detection and Response</a>
                                                                                                                                                                            <ul class="item__props">
                                                                                                                                                                                            <li class="item__prop">
                                                                                                                                                                                                        <span class="pill red ">New</span>
                                                                                                </li>
                                                                                                                                                                                    </ul>
                                                                                                                                                                    </div>
                                                                                                                                                                    <div class="item__body">
                                                                                        <p>Advanced attack visibility with guided investigation</p>
                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item gravityzone_ultra_plus">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='GravityZone Ultra Plus';"  href="/business/enterprise-products/ultra-plus.html" class="item__title">GravityZone Ultra Plus</a>
                                                                                                                                                                    </div>
                                                                                                                                                                    <div class="item__body">
                                                                                        <p>eXtended Detection and Response</p>
                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item managed_detection_and_response">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Managed Detection and Response';"  href="/business/enterprise-products/managed-detection-response-service.html" class="item__title">Managed Detection and Response</a>
                                                                                                                                                                    </div>
                                                                                                                                                                    <div class="item__body">
                                                                                        <p>SOC-Driven, Security-Focused Outcomes</p>
                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">SMALL BUSINESS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item gravityzone_advanced_business_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='GravityZone Advanced Business Security';"  href="/business/smb-products/advanced-business-security.html" class="item__title">GravityZone Advanced Business Security</a>
                                                                                                                                                                            <ul class="item__props">
                                                                                                                                                                                            <li class="item__prop">
                                                                                                                                                                                                        <span class="icon  item__icon cart"></span>
                                                                                                </li>
                                                                                                                                                                                    </ul>
                                                                                                                                                                    </div>
                                                                                                                                                                    <div class="item__body">
                                                                                        <p>Next-Gen AV for All Infrastructures</p>
                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item gravityzone_business_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='GravityZone Business Security';"  href="/business/smb-products/business-security.html" class="item__title">GravityZone Business Security</a>
                                                                                                                                                                            <ul class="item__props">
                                                                                                                                                                                            <li class="item__prop">
                                                                                                                                                                                                        <span class="icon  item__icon cart"></span>
                                                                                                </li>
                                                                                                                                                                                    </ul>
                                                                                                                                                                    </div>
                                                                                                                                                                    <div class="item__body">
                                                                                        <p>Next-Gen AV for Small Businesses</p>
                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">SPECIALTY & ADD-ON</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/enterprise-products/virtualization-security.html" class="item__title">GravityZone Security for Virtualized Environments</a>
                                                                                                                                                                    </div>
                                                                                                                                                                    <div class="item__body">
                                                                                        <p>Protection for Virtual Servers and Desktops</p>
                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/enterprise-products/network-traffic-security-analytics.html" class="item__title">Network Traffic Security Analytics</a>
                                                                                                                                                                    </div>
                                                                                                                                                                    <div class="item__body">
                                                                                        <p>Analytics for Advanced Threat Detection</p>
                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/gravityzone-addons/email-security.html" class="item__title">GravityZone Email Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                                    <div class="item__body">
                                                                                        <p>Cloud-based Email Security</p>
                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">MANAGED SERVICE PROVIDERS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/service-providers-products/cloud-security-msp.html" class="item__title">GravityZone Cloud MSP Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                                    <div class="item__body">
                                                                                        <p>Advanced MSP Security Suite</p>
                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/smb-products/aws-security.html" class="item__title">Security for AWS</a>
                                                                                                                                                                    </div>
                                                                                                                                                                    <div class="item__body">
                                                                                        <p>Optimized protection for AWS</p>
                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">GRAVITYZONE PLATFORM</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/" class="item__title">Solutions Overview</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/compare.html" class="item__title">Compare Products</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/customer-portal/renew-upgrade-solutions/" class="item__title">Renew & Upgrade</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/free-trials/" class="item__title">Try for free</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="//businessresources.bitdefender.com/replace-symantec?utm_campaign=symrep2020&utm_source=web&utm_medium=menu" class="item__title">Switching from Symantec?</a>
                                                                                                                                                                            <ul class="item__props">
                                                                                                                                                                                            <li class="item__prop">
                                                                                                                                                                                                        <span class="pill red ">New</span>
                                                                                                </li>
                                                                                                                                                                                    </ul>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">ALL PRODUCTS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/all-products.html" class="item__title">Full list</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                </div>
                                                                                            <div class="undercolumns">
                                                    <ul class="undercolumn__items">
                                                                                                                    <li class="undercolumn__item solutions-overview">
                                                                <a href="/business/">Solutions Overview</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item find-your-product">
                                                                <a href="/business/cyber-security-product-selector.html">Find your Product</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item compare-products">
                                                                <a href="/business/compare.html">Compare Products</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item contact">
                                                                <a href="/business/inquire/">Contact</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item log-in-to-gravityzone">
                                                                <a href="https://gravityzone.bitdefender.com/">Log in to GravityZone</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item find-a-partner">
                                                                <a href="/partners/partner-locator.html">Find a Partner</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item all-products-(a-z)">
                                                                <a href="/business/all-products.html">All Products (A-Z)</a>
                                                            </li>
                                                                                                            </ul>
                                                </div>
                                                                                    </div>
                                                                            <div id="MainMenu|Business|Solutions-services" class="v-tab__panel" data-menu="solutions-services">
                                            <div class="columns">
                                                                                                        <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">SOLUTIONS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item next-gen_endpoint_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Next-Gen Endpoint Security';"  href="/business/next-gen-solutions/protect-endpoints.html" class="item__title">Next-Gen Endpoint Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item small_&_medium_businesses">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Small & Medium Businesses';"  href="/business/next-gen-solutions/security-for-small-business.html" class="item__title">Small & Medium Businesses</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item secure_software-defined_datacenter">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Secure Software-Defined Datacenter';"  href="/business/datacenter-security-solutions/sddc.html" class="item__title">Secure Software-Defined Datacenter</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item secure_hyperconverged_infrastructure">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Secure Hyperconverged Infrastructure';"  href="/business/datacenter-security-solutions/hyperconv-infrastructure.html" class="item__title">Secure Hyperconverged Infrastructure</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item datacenter_revolution_and_security">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Datacenter Revolution and Security';"  href="//businessresources.bitdefender.com/gartner-datacenter-revolution-security" class="item__title">Datacenter Revolution and Security</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">SECURITY SERVICES</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/enterprise-products/managed-detection-response-service.html" class="item__title">Managed Detection and Response</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/oem/advanced-threat-intelligence.html" class="item__title">Advanced Threat Intelligence</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">SUPPORT & PROFESSIONAL SERVICES</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/customer-portal/enterprise-standard-support.html" class="item__title">Enterprise Standard Support</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/customer-portal/enterprise-premium-support.html" class="item__title">Enterprise Premium Support</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/enterprise-professional-services.html" class="item__title">Professional Services</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">SPECIFIC USECASES</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/service-providers-products/cloud-security-msp.html" class="item__title">Service Providers</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/industry-solutions/healthcare.html" class="item__title">Healthcare</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/gdpr/" class="item__title">GDPR Compliance</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                </div>
                                                                                            <div class="undercolumns">
                                                    <ul class="undercolumn__items">
                                                                                                                    <li class="undercolumn__item solutions-overview">
                                                                <a href="/business/">Solutions Overview</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item find-your-product">
                                                                <a href="/business/cyber-security-product-selector.html">Find your Product</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item compare-products">
                                                                <a href="/business/compare.html">Compare Products</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item contact">
                                                                <a href="/business/inquire/">Contact</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item log-in-to-gravityzone">
                                                                <a href="https://gravityzone.bitdefender.com/">Log in to GravityZone</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item find-a-partner">
                                                                <a href="/partners/partner-locator.html">Find a Partner</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item all-products-(a-z)">
                                                                <a href="/business/all-products.html">All Products (A-Z)</a>
                                                            </li>
                                                                                                            </ul>
                                                </div>
                                                                                    </div>
                                                                            <div id="MainMenu|Business|Threat-research" class="v-tab__panel" data-menu="threat-research">
                                            <div class="columns">
                                                                                                        <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">LATEST NEWS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item analysis_from_bitdefender_labs">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Analysis from Bitdefender Labs';"  href="//labs.bitdefender.com/blog/" class="item__title">Analysis from Bitdefender Labs</a>
                                                                                                                                                                            <ul class="item__props">
                                                                                                                                                                                            <li class="item__prop">
                                                                                                                                                                                                        <span class="pill red ">New</span>
                                                                                                </li>
                                                                                                                                                                                    </ul>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item events_and_webinars">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Events and Webinars';"  href="/business/events-webinars/" class="item__title">Events and Webinars</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item threat_map">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Threat Map';"  href="//threatmap.bitdefender.com/" class="item__title">Threat Map</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">RESEARCH</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="//labs.bitdefender.com/category/whitepapers/" class="item__title">Threat Research Papers</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="//download.bitdefender.com/resources/files/News/CaseStudies/study/235/Bitdefender-2018-Global-Mid-Year-Threat-Landscape-Report.pdf" class="item__title">Annual Threat Report</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">TOOLS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="//labs.bitdefender.com/category/free-tools/" class="item__title">Free Security Tools</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="//labs.bitdefender.com/tag/ransomware/" class="item__title">Ransomware Decryption</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                </div>
                                                                                            <div class="undercolumns">
                                                    <ul class="undercolumn__items">
                                                                                                                    <li class="undercolumn__item solutions-overview">
                                                                <a href="/business/">Solutions Overview</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item find-your-product">
                                                                <a href="/business/cyber-security-product-selector.html">Find your Product</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item compare-products">
                                                                <a href="/business/compare.html">Compare Products</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item contact">
                                                                <a href="/business/inquire/">Contact</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item log-in-to-gravityzone">
                                                                <a href="https://gravityzone.bitdefender.com/">Log in to GravityZone</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item find-a-partner">
                                                                <a href="/partners/partner-locator.html">Find a Partner</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item all-products-(a-z)">
                                                                <a href="/business/all-products.html">All Products (A-Z)</a>
                                                            </li>
                                                                                                            </ul>
                                                </div>
                                                                                    </div>
                                                                            <div id="MainMenu|Business|Why-bitdefender" class="v-tab__panel" data-menu="why-bitdefender">
                                            <div class="columns">
                                                                                                        <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">AT A GLANCE</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item awards_&_certifications">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Awards & Certifications';"  href="/business/awards.html" class="item__title">Awards & Certifications</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item technology_alliances">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Technology Alliances';"  href="/business/technology-alliances.html" class="item__title">Technology Alliances</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item oem_partnerships">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='OEM Partnerships';"  href="/oem/technology-partnerships.html" class="item__title">OEM Partnerships</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item business_insights_blog">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Business Insights Blog';"  href="//businessinsights.bitdefender.com/" class="item__title">Business Insights Blog</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">RESOURCES</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/events-webinars/#webinars" class="item__title">Webinars</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/case-studies.html" class="item__title">Case Studies</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/whitepapers.html" class="item__title">White papers</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/solution-briefs.html" class="item__title">Resource Library</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">INNOVATION & TECHNOLOGIES</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/cyber-threats-solutions/anti-ransomware.html" class="item__title">Anti-ransomware</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/cyber-threats-solutions/advanced-threat-protection.html" class="item__title">Advanced Threat Protection</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/enterprise-products/hypervisor-introspection.html" class="item__title">Hypervisor Introspection</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/enterprise-products/browser-isolation.html" class="item__title">Browser Isolation</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                </div>
                                                                                            <div class="undercolumns">
                                                    <ul class="undercolumn__items">
                                                                                                                    <li class="undercolumn__item solutions-overview">
                                                                <a href="/business/">Solutions Overview</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item find-your-product">
                                                                <a href="/business/cyber-security-product-selector.html">Find your Product</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item compare-products">
                                                                <a href="/business/compare.html">Compare Products</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item contact">
                                                                <a href="/business/inquire/">Contact</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item log-in-to-gravityzone">
                                                                <a href="https://gravityzone.bitdefender.com/">Log in to GravityZone</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item find-a-partner">
                                                                <a href="/partners/partner-locator.html">Find a Partner</a>
                                                            </li>
                                                                                                                    <li class="undercolumn__item all-products-(a-z)">
                                                                <a href="/business/all-products.html">All Products (A-Z)</a>
                                                            </li>
                                                                                                            </ul>
                                                </div>
                                                                                    </div>
                                                                    </div>
                            </div>
                        </div>

                                            <div class="h-tab__panel partners" data-menu="partners" id="MainMenu|Partners">
                            <div class="v-tabs">
                                
                                <div class="v-tabs__panels noLeftTabs">
                                                                            <div id="MainMenu|Partners|Partners-menu" class="v-tab__panel" data-menu="partners-menu">
                                            <div class="columns">
                                                                                                        <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">RESELLER PARTNERS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item reselling_partner_program_overview">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Reselling Partner Program Overview';"  href="/partners/" class="item__title">Reselling Partner Program Overview</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item become_a_reseller">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Become a Reseller';"  href="//pan.bitdefender.com/partners/save/" class="item__title">Become a Reseller</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item find_a_reseller">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Find a Reseller';"  href="/partners/partner-locator.html" class="item__title">Find a Reseller</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item log_in_to_pan_portal">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Log in to PAN Portal';"  href="https://pan.bitdefender.com/" class="item__title">Log in to PAN Portal</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">SERVICE PROVIDERS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item msp_partner_program_overview">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='MSP Partner Program Overview';"  href="/msp-partners/" class="item__title">MSP Partner Program Overview</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item become_an_msp_partner">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Become an MSP Partner';"  href="//pan.bitdefender.com/partners/save/" class="item__title">Become an MSP Partner</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item find_an_msp_partner">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Find an MSP Partner';"  href="/partners/partner-locator.html" class="item__title">Find an MSP Partner</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item log_in_to_pan_portal">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Log in to PAN Portal';"  href="https://pan.bitdefender.com/" class="item__title">Log in to PAN Portal</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">TECHNOLOGY LICENSING SOLUTIONS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/oem/" class="item__title">OEM Technology Solutions</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/oem/advanced-threat-intelligence.html" class="item__title">Advanced Threat Intelligence</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/oem/endpoint-protection/" class="item__title">Endpoint Protection SDKs</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/oem/gateway-protection.html" class="item__title">Gateway Protection SDKs</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">LICENSING OPTIONS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/oem/sdk-integration.html" class="item__title">SDK Integration</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/oem/rebranding-private-label-or-white-label.html" class="item__title">Rebranding</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/oem/bundling-or-pre-installation.html" class="item__title">Bundling</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">CONNECTED HOME PARTNERS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/iot/" class="item__title">IoT Security Platform</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                </div>
                                                                                    </div>
                                                                    </div>
                            </div>
                        </div>

                                            <div class="h-tab__panel company" data-menu="company" id="MainMenu|Company">
                            <div class="v-tabs">
                                
                                <div class="v-tabs__panels noLeftTabs">
                                                                            <div id="MainMenu|Company|Company-menu" class="v-tab__panel" data-menu="company-menu">
                                            <div class="columns">
                                                                                                        <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">ABOUT US</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item overview">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Overview';"  href="/company/" class="item__title">Overview</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item management">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Management';"  href="/company/management.html" class="item__title">Management</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item security_experts">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Security Experts';"  href="/company/experts.html" class="item__title">Security Experts</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item awards_&_certifications">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Awards & Certifications';"  href="/business/awards.html" class="item__title">Awards & Certifications</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item customers">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Customers';"  href="/business/case-studies.html" class="item__title">Customers</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item analyst_relations">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Analyst Relations';"  href="/company/analyst-relations/" class="item__title">Analyst Relations</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item careers">
                                                                                <div class="item__head">
                                                                                    <a onclick="s_objectID='Careers';"  href="/company/job-opportunities/" class="item__title">Careers</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">NEWS</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/blog/" class="item__title">Blogs</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/company/media-relations/" class="item__title">Media Relations</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/news/" class="item__title">Latest News</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                                                                            <div class="column">
                                                                                                                            <div class="section accordion">
                                                                    <div class="section__title accordion__head ">RESOURCES</div>
                                                                    <ul class="section__items accordion__body">
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="//research.bitdefender.com/" class="item__title">Research</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/resources-library/industry-reports.html" class="item__title">Industry reports</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="/business/whitepapers.html" class="item__title">White Papers</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                                    <li class="section__item">
                                                                                <div class="item__head">
                                                                                    <a href="//threatmap.bitdefender.com/" class="item__title">Threat Map</a>
                                                                                                                                                                    </div>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                </div>
                                                                                                                    </div>
                                                                                                </div>
                                                                                    </div>
                                                                    </div>
                            </div>
                        </div>

                    
                                            <div class="h-tab__panel support-menu" data-menu="support-menu" id="MainMenu|Support-menu">
                            <div class="h-tab__panel__body">
                                <p></p>
                                                                    <a href="/consumer/support/" class="btn blue_empty">Support for Home Products</a>
                                                                    <a href="/business/customer-portal/enterprise-standard-support.html" class="btn blue_empty">Support for Business Products</a>
                                                            </div>
                        </div>
                                            <div class="h-tab__panel your-account" data-menu="your-account" id="MainMenu|Your-account">
                            <div class="h-tab__panel__body">
                                <p>Log in to your Bitdefender account and manage security for what matters.</p>
                                                                    <a href="https://login.bitdefender.com/central/login.html?lang=en_US&redirect_url=https:%2F%2Fcentral.bitdefender.com%2F" class="btn blue_empty">Bitdefender Central</a>
                                                                    <a href="https://gravityzone.bitdefender.com/" class="btn blue_empty">GravityZone CLOUD Control Center</a>
                                                            </div>
                        </div>
                                    </div>

            </nav>
        </div>
    </div>

</div>


<!-- header -->
<section class="header">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <h1 class="header__title">Global Leader in Cybersecurity</h1>
                <h2 class="header__subtitle d-inline-block">Protecting over <strong>500 million</strong> systems<br/>for more than <strong>18</strong> years.</h2>
            </div>
        </div>
    </div>
</section>

<!-- Solutions -->
<section class="solutions" id="Solutions">
    <div class="container">
        <div class="row row--custom-spacing">

            <div class="col-lg-3 col-sm-6 col-12 d-flex">
                <div class="solutions__item d-flex flex-sm-column flex-row">
                    <a class="solutions__name__link__mobile d-block d-sm-none" href="//www.bitdefender.com/solutions/" onClick="s_objectID='Home';"></a>
                    <div class="solutions__icon-container d-flex align-items-sm-end justify-content-center">
                        <img width="75" height="65" alt="Home Icon" class="solutions__icon lazy" data-src="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/home-icon.svg"/>
                    </div>
                    <div class="solutions__info-container d-flex flex-column">
                        <h2 class="solutions__name"><a class="solutions__name__link" href="//www.bitdefender.com/solutions/" onClick="s_objectID='Home';">Home</a></h2>
                        <h3 class="solutions__text">Protection for PCs, Macs, mobile devices and smart homes.</h3>
                        <div class="solutions__button-container">
                            <a class="button-1 d-sm-inline-block d-none" href="//www.bitdefender.com/solutions/" onClick="s_objectID='Home';">See Solutions</a>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-3 col-sm-6 col-12 d-flex">
                <div class="solutions__item d-flex flex-sm-column flex-row">
                    <a class="solutions__name__link__mobile d-block d-sm-none" href="//www.bitdefender.com/business/" onClick="s_objectID='Business';"></a>
                    <div class="solutions__icon-container d-flex align-items-sm-end justify-content-center">
                        <img width="75" height="65" alt="Business Solutions Icon" class="solutions__icon lazy" data-src="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/business-icon.svg"/>
                    </div>
                    <div class="solutions__info-container d-flex flex-column">
                        <h2 class="solutions__name"><a class="solutions__name__link" href="//www.bitdefender.com/business/" onClick="s_objectID='Business';">Business</a></h2>
                        <h3 class="solutions__text">Need manageable security that gets the job done? Weâve got it, from endpoint to network to cloud.</h3>
                        <div class="solutions__button-container">
                            <a class="button-1 d-sm-inline-block d-none" href="//www.bitdefender.com/business/" onClick="s_objectID='Business';">See Solutions</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6 col-12 d-flex">
                <div class="solutions__item d-flex flex-sm-column flex-row">
                    <a class="solutions__name__link__mobile d-block d-sm-none" href="//www.bitdefender.com/business/service-providers-products/cloud-security-msp.html" onClick="s_objectID='Providers';"></a>
                    <div class="solutions__icon-container d-flex align-items-sm-end justify-content-center">
                        <img width="75" height="65" alt="Providers Icon" class="solutions__icon lazy" data-src="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/providers-icon.svg"/>
                    </div>
                    <div class="solutions__info-container d-flex flex-column">
                        <h2 class="solutions__name"><a class="solutions__name__link" href="//www.bitdefender.com/business/service-providers-products/cloud-security-msp.html" onClick="s_objectID='Providers';">Providers</a></h2>
                        <h3 class="solutions__text">Need to differentiate services with cyber? Weâve got award-winning solutions and tech.</h3>
                        <div class="solutions__button-container">
                            <a class="button-1 d-sm-inline-block d-none" href="//www.bitdefender.com/business/service-providers-products/cloud-security-msp.html" onClick="s_objectID='Providers';">Learn More</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6 col-12 d-flex">
                <div class="solutions__item d-flex flex-sm-column flex-row">
                    <a class="solutions__name__link__mobile d-block d-sm-none" href="//www.bitdefender.com/site/view/ent-partners.html" onClick="s_objectID='Partners';"></a>
                    <div class="solutions__icon-container d-flex align-items-sm-end justify-content-center">
                        <img width="75" height="65" alt="Partners" class="solutions__icon lazy" data-src="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/partners-icon.svg"/>
                    </div>
                    <div class="solutions__info-container d-flex flex-column">
                        <h2 class="solutions__name"><a class="solutions__name__link" href="//www.bitdefender.com/site/view/ent-partners.html" onClick="s_objectID='Partners';">Partners</a></h2>
                        <h3 class="solutions__text">Want to integrate, build, package or resell? Get powered by Bitdefender today.</h3>
                        <div class="solutions__button-container">
                            <a class="button-1 d-sm-inline-block d-none" href="//www.bitdefender.com/site/view/ent-partners.html" onClick="s_objectID='Partners';">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- already a customer & awards -->
<section class="awards">
    <div class="container">
        <div class="row justify-content-between">
            <div class="col-lg-5 col-md-6 col-12">
                <h2 class="awards__title"><span class="awards__title__text">Already a Customer?</span></h2>
                <p class="awards__subtitle">We believe in long-term partnerships.<br/>
                    Get discounts and extra benefits when you renew.</p>
                <div class="row">
                    <div class="col-lg-6 col-md-12 col-sm-6 mb-lg-0 mb-md-4 mb-sm-5 mb-3">
                        <a class="button-2 button-2--blue mx-auto" href="//www.bitdefender.com/renewal/?icid=menu_quickrenew" onClick="s_objectID='Renew & Upgrade';">Home</a>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-6 col-12 mb-sm-0 mb-5">
                        <a class="button-2 mx-auto" href="//www.bitdefender.com/business/customer-portal/renew-upgrade-solutions/?icid=menu_quickrenew" onClick="s_objectID='Renew and Upgrade';" target="_blank">Business</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-12">
                <h2 class="awards__title"><span class="awards__title__text">Awards & Certifications</span></h2>
                <p class="awards__subtitle">Continuous testing. Continuous excellence. Continuous innovation. Consistently delivered.</p>
                <div class="awards__container">
    <div class="row">
        <div class="col-lg-6 col-12 d-flex justify-content-md-between justify-content-around align-items-center pr-lg-0">
            <a href="https://www.av-comparatives.org/tests/summary-report-2019/" target="_blank">
            <img style="max-width: 90px;" alt="Award - AV Comparatives 2018" class="awards__img-1 awards__img lazy" data-src="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/av2020.png"
                 data-srcset="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/av2020-2x.png 2x"/>
            </a>
            <img alt="Award - AV Test" class="awards__img-2 awards__img lazy" data-src="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/award2.png"
                 data-srcset="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/award2_2x.png 2x"/>
            <img alt="Award - AV Test" class="awards__img-2 awards__img lazy" data-src="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/award3.png"
                 data-srcset="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/award3_2x.png 2x"/>
            <img alt="Award - AV Test" class="awards__img-2 awards__img lazy" data-src="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/award4.png"
                 data-srcset="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/award4_2x.png 2x"/>
        </div>
        <div class="col-lg-6 col-12 d-flex justify-content-md-between justify-content-around align-items-center">
            <img alt="Award - Forrester" class="awards__img-3 awards__img lazy" data-src="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/forrester_award.png"
                 data-srcset="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/forrester_award_2x.png 2x"/>
            <img alt="Award - NSS Labs" class="awards__img-3 awards__img lazy" data-src="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/award8.png"
                 data-srcset="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/award8_2x.png 2x"/>
            <img alt="Award - SC Media" class="awards__img-3 awards__img lazy" data-src="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/award6.png"
                 data-srcset="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/award6_2x.png 2x"/>
            <img height="54" alt="Award - PCMAG" class="awards__img-3 awards__img lazy" data-src="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/editors-choice-31-vert.png"
                 data-srcset="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/awards/editors-choice-31-vert_2x.png 2x"/>
        </div>
    </div>
</div>


            </div>
        </div>
    </div>
</section>

<!-- Statement -->
<section class="statement" id="Statement">
    <div class="container">
        <div class="statement__content">
            <div class="row">
                <div class="col-md-6 col-12">
                    <h3 class="statement__title">Bitdefender is a global cybersecurity leader protecting over 500 million systems in more than 150 countries.</h3>
                </div>
                <div class="col-md-6 col-12">
                    <p class="statement__content__text">Since 2001, Bitdefender innovation has consistently delivered award-winning security products and threat intelligence for people, homes, businesses and their devices, networks and cloud services.</p>
                    <p class="statement__content__text">Today, Bitdefender is also the provider of choice, used in over 38% of the worldâs security solutions.</p>
                    <p class="statement__content__text">Recognized by industry, respected by vendors and evangelized by our customers, Bitdefender is the cybersecurity company you can trust and rely on.</p>
                </div>
            </div>
        </div>
        <div class="container text-center">
            <div class="row">
                <div class="col-lg-3 col-md-6 d-flex flex-column">
                    <h4 class="statement__title2">Protecting family and friends?</h4>
                    <div class="statement__button">
                        <a class="button-3 d-md-inline-block d-block mx-auto" href="//www.bitdefender.com/Downloads/" onClick="s_objectID='Trial downloads';">Try it First</a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 d-flex flex-column">
                    <h4 class="statement__title2">Serious about securing business?</h4>
                    <div class="statement__button">
                        <a class="button-3 d-md-inline-block d-block mx-auto" href="//www.bitdefender.com/business/inquire/" onClick="s_objectID='Inquire';">Book a Briefing</a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 d-flex flex-column">
                    <h4 class="statement__title2">Competing to secure customers?</h4>
                    <div class="statement__button">
                        <a class="button-3 d-md-inline-block d-block mx-auto" href="//www.bitdefender.com/oem/" onClick="s_objectID='OEM Partners';">Check our Tech</a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 d-flex flex-column">
                    <h4 class="statement__title2">Ready to partner?</h4>
                    <div class="statement__button">
                        <a class="button-3 d-md-inline-block d-block mx-auto" href="https://pan.bitdefender.com/partners/save/" onClick="s_objectID='Join Now';">Join our Network</a>
                    </div>
                </div>

            </div>
        </div>

    </div>
</section>


    <footer class="footer">
        <div class="footer__container">
            <div class="container">
                <div class="row justify-content-end">
                    <div class="col-lg-5 col-md-7 col-12 pushFooterDown">
                        <img class="img-fluid" src="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/logo-white.svg"/>
                        <a href="javascript:void(0);" id="trigger_lang"
                           class="d-inline-block position-relative footer__trigger-map_lang">
                            <img class="footer__trigger-map_lang__img"
                                 src="https://download.bitdefender.com/resources/themes/draco/images/2018/map.png"
                                 alt="Select language and location">
                        </a>
                        <ul class="footer__links">
                                                            <li><a href="https://www.bitdefender.com/site/view/legal-eula.html">Legal
                                        Terms</a></li>
                                                        <li><a href="//www.bitdefender.com/site/view/legal-privacy-policy-for-bitdefender-websites.html">Privacy
                                    Policy</a></li>
                            <!--  <li><a href="//www.bitdefender.com/site/view/legal-privacy.html">Privacy Policy</a></li>-->
                            <br class="d-sm-none"/>
                                                        <li><a href="/consumer/support/">Support</a></li>
                            <li><a href="/support/">Contact Us</a></li>
                        </ul>
                        <p class="footer__copy">Copyright Â© 1997 - <span id="yearBitJS"></span> Bitdefender. All
                            rights reserved</p>
                        <!--                    <p class="footer__text">Select your country</p>-->
                        <!--                    <a id="trigger_lang" class="d-inline-block position-relative footer__trigger-lang" href="javascript:void(0);"><img class="footer__trigger-lang__img" src="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/region.svg" /> United States - English</a>-->
                    </div>
                </div>
            </div>
        </div>

        <div id="footer_lang" data-expand="false" class="footer__lang">
            <div id="footer_lang_container" class="container footer__lang__container">
                <div class="row position-relative">
                    <a id="footer_lang_close" class="footer__lang__close" href="javascript:void(0);"><img
                                class="fluid-img" src="https://download.bitdefender.com/resources/themes/draco/images/lite_v2/x.svg"></a>
                    <ul class="footer__lang__col">
                        <!--                        <li><a href="https://www.bitdefender.es">AmÃ©rica Latina - EspaÃ±ol</a></li>-->
                        <li><a href="https://www.bitdefender.com.au/">Australia - English</a></li>
                        <!--                        <li><a href="https://www.bitdefender.com/">Canada - English</a></li>-->
                        <!--                        <li><a href="https://www.bitdefender.de/">Schweiz - Deutsch</a></li>-->
                        <!--                        <li><a href="https://www.bitdefender.com/fr/">Suisse - FranÃ§ais</a></li>-->
                        <li><a href="https://www.bitdefender.fr/">Belgique - FranÃ§ais</a></li>
                        <li><a href="https://www.bitdefender.be/">BelgiÃ« - Nederlands</a></li>
                        <li><a href="https://www.bitdefender.com.br/">Brasil - PortuguÃªs</a></li>
                        <li><a href="https://www.bitdefender.de/">Deutschland - Deutsch</a></li>
                        <li><a href="https://www.bitdefender.es/">EspaÃ±a- EspaÃ±ol</a></li>
                        <li><a href="https://www.bitdefender.fr/">France - FranÃ§ais</a></li>
                    </ul>
                    <ul class="footer__lang__col">
                        <li><a href="https://www.bitdefender.it/">Italy - Italian</a></li>
                        <li><a href="https://www.bitdefender.co.jp/">æ¥æ¬ - æ¥æ¬èª</a></li>
                        <li><a href="https://www.bitdefender.nl/">Nederland - Nederlands</a></li>
                        <li><a href="https://www.bitdefender.de/">Ãsterreich â Deutsch</a></li>
                        <li><a href="https://www.bitdefender.pt">Portugal - PortuguÃªs</a></li>
                        <li><a href="https://www.bitdefender.ro/">RomÃ¢nia - RomÃ¢nÃ£</a></li>
                        <li><a href="https://www.bitdefender.com/">United States - English</a></li>
                    </ul>
                    <ul class="footer__lang__col">
                        <li><a href="https://www.bitdefender.co.uk">United Kingdom - English</a></li>
                        <li><a href="https://www.bitdefender.com/world/">WorldWide - English</a></li>
                    </ul>
                    <ul class="footer__lang__col">
                        <li><strong>Partners Websites</strong></li>
                        <li><a href="https://bitdefender.in/" rel="nofollow">India - English</a></li>
                        <li><a href="https://www.bitdefender.pl/" rel="nofollow">Polska - Polski</a></li>
                        <li><a href="https://www.bitdefender.com.tw/" rel="nofollow">Taiwan - Traditional Chinese</a>
                        </li>
                        <li><a href="https://www.bitdefender.my/" rel="nofollow">Malaysia - English</a></li>
                        <li><a href="https://www.bitdefender.co.th/" rel="nofollow">Thailand - English</a></li>
                        <li><a href="https://www.bitdefender.vn/" rel="nofollow">Vietnam - English</a></li>
                    </ul>
                    <ul class="footer__lang__col">
                        <li><a href="https://www.bitdef.cz/" rel="nofollow">Czech Republic - Czech</a></li>
                        <li><a href="https://www.bitdef.cz" rel="nofollow">Slovakia - Slovak</a></li>
                        <li><a href="https://www.bitdefender.com.ua/" rel="nofollow">Ukraine - Ð ÑÑÑÐºÐ¸Ð¹</a></li>
                        <li><a href="https://www.bitdefender.gr/" rel="nofollow">Greece &amp; Cyprus - ÎÎ»Î»Î·Î½Î¹ÎºÎ¬</a></li>
                        <li><a href="https://www.bitdefender.com.tr/" rel="nofollow">Turkey - TÃ¼rkÃ§e</a></li>
                        <li><a href="https://www.bitnet.com.hr/" rel="nofollow">Croatia - Hrvatska </a></li>
                        <li><a href="https://www.bitdefender.ru/" rel="nofollow">Ð Ð¾ÑÑÐ¸Ð¹ÑÐºÐ°Ñ Ð¤ÐµÐ´ÐµÑÐ°ÑÐ¸Ñ - Ð ÑÑÑÐºÐ¸Ð¹</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>


    <script>
        var THEME = 'draco';
    </script>

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900|Exo+2:300,300i,400,700"
          rel="stylesheet">

        <!--    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>
    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/npm/vanilla-lazyload@12.0.0/dist/lazyload.min.js"></script>

        <link rel="stylesheet"
          href="https://download.bitdefender.com/resources/themes/draco/minimize/lite_v2/csslite_v2.v771.min.css"
          type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">


        <script type="text/javascript"
            src="https://download.bitdefender.com/resources/themes/draco/minimize/lite_v2/jslite_v2.v856.min.js"></script>


<script>
    $(document).ready(function () {
        if (DEFAULT_LANGUAGE == 'be' && ($.cookie('overlay_be') == null)) {
            $('[data-popup="beOverlay"]').click();
        }

        $('#be_overlay a').on('click', function () {
            if ($(this).is('#chooseFR')) {
                $.cookie('overlay_be', 'fr', {expires: 30, path: '/'});
                //window.parent.location.href = "http://www.bitdefender.fr/";
                window.location = "http://www.bitdefender.fr/";
                $("#beOverlay").modal('hide');
            } else if ($(this).is('#chooseBE')) {
                $.cookie('overlay_be', 'be', {expires: 30, path: '/'});
                // window.parent.$("#beOverlay").modal('hide');
                $("#beOverlay .close-btn").click();
            } else {
                $.cookie('overlay_be', 'be', {path: '/'});
                $("#beOverlay .close-btn").click();
            }
        });
        if (typeof StoreProducts === 'object' && typeof StoreProducts.appendVisitorID === 'function') {
            $('a[href*=".bitdefender."]').not('[href*="' + window.location.hostname + '"]').each(function () {
                var anchor = $(this);
                anchor.attr('href', StoreProducts.appendVisitorID(anchor.attr('href')));
            });
        }
        $('#footer_lang_container ul li a').each(function () {
            if ($(this).attr('href').indexOf("adobe_mc") == -1) {
                $(this).attr('href', StoreProducts.appendVisitorID($(this).attr('href')));
            }
        });

        

        
    });
    // $(window).scroll(function() {
    //     if ($(this).scrollTop()>0) {
    //         $('.hideOnScroll').removeClass('livenews d-lg-block');
    //     } else {
    //         $('.hideOnScroll').addClass('livenews d-lg-block');
    //     }
    // });
</script>

<script type="text/javascript">
    if (typeof _satellite !== 'undefined') {
        _satellite.pageBottom();

        setTimeout(function(){
            if(typeof s != 'undefined' && typeof  s.contextData != 'undefined' && typeof s.contextData.s_dmdbase != 'undefined') {
                var result = s.contextData.s_dmdbase;
                var split = result.split(':');
                // console.log(split);
                window.localStorage.setItem('contextData_company', split[1]);

                // var contextData_company = window.localStorage.getItem('contextData_company');
            }
        }, 500);
    }

    //WWW-10047
    function getCampaignParameterByName (name){
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"), results = regex.exec(location.search);
        return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }
    var campaign = getCampaignParameterByName('campaign');
    var campaignNow = new Date();
    var campaignTime = campaignNow.getTime();
    var campaignExpTime = campaignNow + 1000 * 3888000;
    campaignNow.setTime(campaignExpTime);
    if (campaign != '') {
        document.cookie = "camp_sf=" + campaign + "; expires=" + campaignNow.toGMTString() + "; path=/";
    }


    const getDate = new Date();
    const getBitFullYear = getDate.getFullYear();
    const domYear = document.getElementById('yearBitJS');
    if(domYear) {
        domYear.textContent = getBitFullYear;
    }

    if (typeof __global_extra_params !== 'undefined' && 'pid' in __global_extra_params) {
        setCookie('__global_pid', __global_extra_params.pid);
    } else if (typeof __global_extra_params == 'undefined' && getCookie('__global_pid')) {
        window.__global_extra_params = {pid: getCookie('__global_pid')};
    }

    var menuH = $(".bit-mm").height();
    $(window).scroll(function () {
        var sticky = $('.sticky-menu'),
            bitmm = $('.bit-mm'),
            scroll = $(window).scrollTop();

        if (scroll >= menuH) {
            sticky.addClass('fixed');
            bitmm.css('margin-bottom', sticky.height());
        } else {
            sticky.removeClass('fixed');
            bitmm.css('margin-bottom', 0);
        }
    });

    $('body').attr('data-hj-ignore-attributes', '');
    $(document).ready(function () {
        hj('trigger', 'mega_menu');
    });


</script>


<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam-cell.nr-data.net","licenseKey":"86f61f5b73","applicationID":"77412376","transactionName":"ZQBTZUpQWRcDVRdYWFxKckRLRVgJTXsCWFkdFlleT3xWDQwZ","queueTime":0,"applicationTime":80,"atts":"SUdQEwJKShk=","errorBeacon":"bam-cell.nr-data.net","agent":""}</script></body>
</html>
```