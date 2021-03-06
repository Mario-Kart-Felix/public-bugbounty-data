```<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="author" content="Tencent.AlloyTeam.Jetyu" />
    <meta name="copyright" content="Tencent.AlloyTeam" />
    <meta name="keyword" content="腾讯 Web 前端团队 - AlloyTeam, 腾讯Web前端大会" />
    <title>腾讯 Web 前端团队 - AlloyTeam</title>
    <link href="./style/main.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        // 测速
        var _speedMark = new Date();


        // 倒计时
        var getLastDay = function(time){
            var now = new Date();
            var lastTime = time.getTime() - now.getTime();    
            var lastDay = Math.ceil(lastTime / (1000 * 60 * 60 * 24));    
            if (lastDay < 0){
                lastDay = 0;
            }
            return lastDay;
        }

        // 呵呵，Z.P.
        var lastDay6= getLastDay(new Date("2015-3-20"));
        // 呵呵，A.L.
        var lastDay7= getLastDay(new Date("2015-3-29"));
        // 呵呵，IP
        var lastDay8= getLastDay(new Date("2015-5-21"));
        // 呵呵，T.S.
        var lastDay9= getLastDay(new Date("2015-5-22"));
        // 呵呵，A.A.
        var lastDay10= getLastDay(new Date("2015-12-22"));

        
    </script>
</head>
<body>
    <div class="title">Tencent AlloyTeam <script>document.write(new Date().getFullYear());</script></div>
    <img class="logo" src="./style/image/alloy.png" />
    <div class="breath" title="One Team, One Dream! ">light</div>

   
	
	<div class="helpus2" ontouchend="document.querySelector('.paycode').style.display='block'">
		<div class="paycode">
			<img src="./style/image/wechatpaycode.png" />
			<img src="./style/image/alipaycode.png" />
			<div>如果你觉得我们Alloyteam团队的博客和开源项目给你带来价值，可以通过捐赏支持我们<br />有你的支持，我们会做得更好！</div>
		</div>
	</div>


    <div class="workListBoard">
        <h3>Works List</h3>
        <ul class="workList">
            <li><a target="_blank" href="http://github.com/AlloyTeam/">Working on Github.com</a></li>
            <li><a target="_blank" href="http://alloyteam.github.io/CodeGuide/">团队规范文档<span class="new">新</span></a></li>
            <li><a target="_blank" href="http://www.AlloyTeam.com/">腾讯 AlloyTeam 团队博客</a></li>
            
		
		
            <h5>- 2020 -</h5>
	    
	    <li><a target="_blank" href="https://github.com/AlloyTeam/alloy-worker">面向事务的 WebWorker 框架——AlloyWorker<span class="new">新</span></a></li>
		
            <h5>- 2017 -</h5>
	    
	    <li><a target="_blank" href="https://github.com/Tencent/omi">下一代 Web 框架——Omi<span class="new">新</span></a></li>
            <li><a target="_blank" href="https://alloyteam.github.io/curvejs/">HTML5 Canvas魔幻线条——CurveJs</a></li>
	    <li><a target="_blank" href="https://github.com/AlloyTeam/AlloyCrop">移动Web图像裁剪解决方案——AlloyCrop</a></li> 
	    <li><a target="_blank" href="https://dntzhang.github.io/pasition/">超级小的Path过渡动画类库——pasition</a></li>	
	     
		
	    <li><a target="_blank" href="http://github.com/AlloyTeam/AlloyLever">1kb代码搞定开发调试监控上报查错——AlloyLever</a></li> 
            <li><a target="_blank" href="https://www.npmjs.com/package/md2site">Markdown转网站神器——Md2site</a></li>
	    <li><a target="_blank" href="https://github.com/AlloyTeam/AlloyViewer">React移动端图片查看器——AlloyViewer</a></li>
            <li><a target="_blank" href="http://alloyteam.github.io/AlloyTouch/transformjs/">变形特效解决方案——transformjs</a></li> 
            <li><a target="_blank" href="http://github.com/AlloyTeam/AlloyTouch">60FPS的触摸运动——AlloyTouch</a></li> 
            
            
            <h5>- 2016 -</h5>
            <!--li><a target="_blank" href="###">神秘HTML5动画创作工具{代号010}，发布倒计时：<script>document.write(lastDay7);</script> <span class="new">新</span></a></li>
            <li><a target="_blank" href="###">神秘HTML5游戏{代号009}，发布倒计时：<script>document.write(lastDay9);</script> <span class="new">新</span></a></li>
            <li><a target="_blank" href="###">神秘HTML5创作工具{代号008}，发布倒计时：<script>document.write(lastDay8);</script> <span class="new">新</span></a></li>
            <li><a target="_blank" href="###">神秘HTML5动画引擎{代号007}，发布倒计时：<script>document.write(lastDay7);</script> <span class="new">新</span></a></li-->

            <li><a target="_blank" href="https://github.com/AlloyTeam/AlloyFinger">超轻量级 Web 手势库——AlloyFinger</a></li>
            <li><a target="_blank" href="https://alloyteam.github.io/AlloyFlow">为工作流而生——AlloyFlow</a></li>
            <li><a target="_blank" href="https://alloyteam.github.io/AlloyTicker">时间旅行者——AlloyTicker</a></li>
           
          
            
            <h5>- 2015 -</h5>
            
            <li><a target="_blank" href="http://github.com/AlloyTeam/AlloyRender">HTML5 游戏引擎——AlloyGameEngine</a></li> 
            <li><a target="_blank" href="http://alloyteam.github.io/Rosin/">移动 Web 调试工具——Rosin</a></li> 
            <li><a target="_blank" href="http://dntzhang.github.io/zoom/">图片【超分辨率】放大器</a></li>
            
            <h5>- 2014 -</h5>
       
            <li><a target="_blank" href="http://alloyteam.github.io/AlloyStick/">HTML5 骨骼动画引擎——AlloyStick</a></li>
            <li><a target="_blank" href="http://CodeStar.AlloyTeam.com/">腾讯 CodeStar 第二季 <前端突击队> </a></li>

            <h5>- 2013 -</h5>
                
            <li><a target="_blank" href="http://alloyteam.github.io/AlloyDesigner/">新概念 Web 开发工具——AlloyDesigner</a></li>
            <li><a target="_blank" href="http://alloyteam.github.io/JXAnimate/">基于 CSS3 的并行动画引擎——JXAnimate</a></li>
            <li><a target="_blank" href="http://alloyteam.github.io/Spirit/">腾讯移动 Web 整体解决方案——Spirit</a></li>
            <li><a target="_blank" href="http://CodeStar.AlloyTeam.com/q1/">腾讯 CodeStar 第一季 <前端代码特工></a></li>
            
            <h5>- 2012 -</h5>
                
            <li><a target="_blank" href="./hello_html5.html">Hello HTML5</a></li>
            <li><a target="_blank" href="http://alloyteam.github.io/AlloyPhoto/">HTML5 专业级图像处理引擎——AlloyImage</a></li>
            <li><a target="_blank" href="http://wc.alloyteam.com/">HTML5 体感游戏《墙来了》</a></li>
            <li><a target="_blank" href="http://www.alloyteam.com/wp-content/demos/css3-tencent-qq-logo-advanced/">CSS3 绘制腾讯 QQ 企鹅 Logo 动画版</a></li>
            <!--li><a target="_blank" href="http://www.alloyteam.com/2012/10/css3-draw-qq-logo/">CSS3 绘制腾讯 QQ 企鹅 Logo</a></li-->
            
            <h5>- 2011 -</h5>
            
            <li><a target="_blank" href="http://alloyteam.github.io/AlloyTimer/">AlloyTimer 之番茄工作法</a></li>
            <li><a target="_blank" href="http://tencentopen.github.io/proj/AlloyDesktop/index.html">Alloy Desktop 桌面 App 开发引擎</a></li>
            
            <h5>- 2010 -</h5>
            
            <li><a target="_blank" href="http://alloyteam.github.io/JXUI/">JX UI 组件库</a></li>
            <li><a target="_blank" href="http://alloyteam.github.io/StreetFighter/">HTML5 街头霸王</a></li>
            <li><a target="_blank" href="http://codetank.alloyteam.com/">CodeTank（代码坦克）</a></li>
            <li><a target="_blank" href="http://css3lib.alloyteam.com/">CSS3 UI Lib</a></li>

            <h5>- 2009 -</h5>
            
            <li><a target="_blank" href="http://www.alloyteam.com/2012/06/nodejs-smart-merging-css-wizard-tool-intelligentspriter/">NodeJs 智能合并 CSS 精灵图工具——iSpriter</a></li>
            <li><a target="_blank" href="http://www.alloyteam.com/2012/05/web-front-end-tool-rythem-1/">跨平台 Web 抓包合并替换工具——Rythem</a></li>
            <li><a target="_blank" href="http://www.alloyteam.com/?p=1050">Go!Png HTML5 的 Sprite 图片合体工具</a></li>
            <!--li><a target="_blank" href="http://www.alloyteam.com/2012/05/dev-tools-chrome-live-reload/">Live Reload</a></li>
            <li><a target="_blank" href="https://chrome.google.com/webstore/detail/omofllbfhlganmbmnnkneakndffbgkci">CSS Viewer</a></li>
            <li><a target="_blank" href="https://chrome.google.com/webstore/detail/emajkockhmibmpnkbohiipfidkifdjhp">CSS Catcher</a></li-->

            <h5>- 2008 -</h5>
            
            <li><a target="_blank" href="http://alloyteam.github.io/JX/">JX</a></li>
            
            <h5>- AlloyTeam -</h5>
            
            <li><a target="_blank" href="http://www.AlloyTeam.com/about/">About</a></li>
        </ul>
    </div>
    <div class="copyright">Copyright &copy; <script>document.write(new Date().getFullYear());</script> <a href="http://www.AlloyTeam.com/" target="_blank">AlloyTeam.com</a>. All Rights Reserved.</div>

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=40373280" charset="UTF-8"></script>
    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-23019343-9']);
        _gaq.push(['_trackPageview']);

        (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>
</body>
</html>
```