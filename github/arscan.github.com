```<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="Keywords" content="Rob Scanlon, Robert Scanlon, Software Engineer, Boston, Programmer">
        <meta name="Description" content="Boston based software engineer"/>
        <meta name="abstract" content="A software engineer from Boston" />
        <meta http-equiv="Content-Language" content="EN" />
        <meta name="author" content="Robert Scanlon" />
        <meta name="distribution" content="Global" />
        <meta name="revisit-after" content="1 days" />
        <link rel="shortcut icon" href="/images/icons/favicon.ico">

        <title>Rob Scanlon</title>
        <link rel="stylesheet" type="text/css" href="/css/bootstrap.css"> 
        <script type="text/javascript">
            var cssver = Math.floor(Math.random() * 2 + 1);
            document.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"/css/front" + cssver + ".css\">");
        </script>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script> 
        <script src="/js/bootstrap.js"></script> 
        <script type="text/javascript">

            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-4481396-1']);
            _gaq.push(['_trackPageview']);

            (function() {
             var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
             ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
             var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
             })();
         </script>

        <script type="text/javascript">
            var host = "www.robscanlon.com";
            if ((host == window.location.host) && (window.location.protocol != "https:"))
                window.location.protocol = "https";
        </script>

         <script>
             $(document).ready(function()
             {
                 var frame = 0, 
                 framewidth = 25,
                 frameheight = 65,
                 direction = 3,  // 0 = left; 1 = right; 2=down; 3=up;
                 mouseX = 150,
                 mouseY = 150,
                 princeX = -200,
                 princeY = 200,
                 logogradientoffset=0,
                 logogradientoffsetmin=-300,
                 logogradientincrement=-1;  


                 $('#kingsquest').css("background-image", "url(/images/prince_final.png)")
                 .css("background-position", "-26 -68")
                 .css("position","absolute")
                 .css("width","25")
                 .css("height","63")
                 .css("height","63");


                 (function loop(){

                     if(direction == 1){
                         // ha ha, whoops, I made the left facing guy moonwalk.  hack here because its past my bedtime.  you understand, don't you?
                         frame = ((frame - 1) + 6) % 6;
                         } else {
                         frame = (frame + 1) % 6;

                     }

                     if(mouseX - (princeX+(framewidth/2))>3){
                         princeX = princeX + 3;
                         direction = 0;

                         } else if(mouseX - (princeX+(framewidth/2))<-3){
                         princeX = princeX - 3;
                         direction = 1;

                     }
                     if(mouseY - (princeY+(frameheight/2))>3){
                         princeY = princeY + 3;
                         if(Math.abs(mouseX-(princeX+(framewidth/2)))<3){
                             direction = 2
                         }

                         } else if(mouseY-(princeY+(frameheight/2))<-3){
                         princeY = princeY - 3;
                         if(Math.abs(mouseX-(princeX+(framewidth/2)))<3){
                             direction = 3
                         }

                     }

                     if(Math.abs(mouseY-(princeY+(frameheight/2)))>3 || Math.abs(mouseX-(princeX+(framewidth/2)))>3){
                         $('#kingsquest').css("background-position", (-1 * frame * framewidth) + "px " + (-1*frameheight*direction) +"px");
                     }	

                     $('#kingsquest').css("left",princeX);
                     $('#kingsquest').css("top",princeY);

                     logogradientoffset += logogradientincrement;
                     if(logogradientoffset > 0 || logogradientoffset < logogradientoffsetmin){
                         logogradientincrement = logogradientincrement * -1;
                         logogradientoffset += logogradientincrement;
                     }

                     $('.roblogo').css("background-position-y",logogradientoffset+"px");
                     setTimeout(loop,75);

                 })();

                 $(document).mousemove(function(e){

                     mouseX = Math.min(e.pageX,415);
                     mouseY = Math.max(e.pageY,75);

                 });



                 $('#kingsquest').hover(function() {
                     $(this).css('cursor','pointer');
                     }, function() {
                     $(this).css('cursor','auto');
                 });

                 $('#kingsquest').click(function(){window.location='/kq/'});
                 $('.dropdown-menu').dropdown();

                 $('#shortcutlink').click(openShortcuts);
                 $('#closeshortcuts').click(closeShortcuts);
                 $('#ablink').click(function(){
                     var newver = ((cssver)%2)+1;
                     $('link[href="/css/front' + cssver + '.css"]').attr('href','/css/front' + newver + '.css');
                     cssver = newver;
                     return false;
                 });

                 $(document).keypress(function(event) {
                    
                    
                    if(event.which == 115){

                        if($("#linkpopup").is(":visible")){
                            closeShortcuts();
                        } else {
                            openShortcuts();
                        }
                    } else {
                        if($("#linkpopup").is(":visible")){
                            //console.log(event.which);
                            switch(event.which)
                            {
                            case 1:
                              
                              break;
                            case 2:
                              
                              break;
                            }
                        } 

                    }
                    return true;
                    });



             });


            function openShortcuts(){
                $("#linkpopup").show();

            }

            function closeShortcuts(){
                $("#linkpopup").hide();
            }



         </script>
     </head>

     <body>
         <div class="navbar navbar-fixed-top">

             <div class="navbar-inner">
                 <div class="container">
                     <div class="roblogo">
                         <a href="/">
                             <img src="/images/robtitle_inverse.png"/>
                         </a>
                     </div>

                     <ul class="nav pull-right">
                         <li class="active"><a href="/">home</a></li>
                         <li><a href="#" id="shortcutlink">shortcuts</a></li>
                         <li class="dropdown" id="menu1">
                         <a class="dropdown-toggle" data-toggle="dropdown" href="#menu1">
                             other sites
                             <b class="caret"></b>
                         </a>
                         <ul class="dropdown-menu">
                             <li><a href="https://github.com/arscan/" onClick="location.href='http://github.com/arscan/';">github</a></li>
                             <li><a href="https://www.linkedin.com/in/robscanlon" onClick="location.href='http://www.linkedin.com/in/robscanlon/';">linkedin</a></li>
                             <li><a href="https://www.facebook.com/scanlonr/" onClick="location.href='http://www.facebook.com/scanlonr';">facebook</a></li>
                             <li><a href="https://www.twitter.com/arscan/" onClick="location.href='http://www.twitter.com/arscan/'">twitter</a></li>
                             <li><a href="https://plus.google.com/117094129525169640178" onClick="location.href='http://plus.google.com/117094129525169640178';">google+</a></li>
                             <li class="divider"></li>
                             <li><a href="https://github.com/arscan/arscan.github.com" onClick="location.href='http://github.com/arscan/arscan.github.com';">hosted by github</a>
                         </ul>
                         </li>
                         <li><a href="#" id="ablink">A/B</a></li>
                     </ul>
                 </div>

             </div>
         </div>
     </div>

     <div id="content"> 

         <p>Hi, I'm Rob Scanlon, Boston-based software engineer.  Find out more about me on <a href="https://linkedin.com/in/robscanlon">LinkedIn</a> and <a href="https://twitter.com/arscan">Twitter</a>.</p>

         <p>You can check out some of the things I'm working on in my free time over at <a href="https://github.com/arscan">github</a>.</p> 

         <p>
         Or take a look at my recent creative coding experiments:  <a href="/github-wargames/">Github Wargames</a>,
         <a href="/encom-boardroom/">Encom Boardroom</a> and <a href="/about/">GotG Lineup</a>.

         </p>

     </div>

     <div id="linkpopup">

        <button type="button" class="close" id="closeshortcuts">&times;</button>
        <h2>Shortcuts (s to toggle)</h2>
        <ul>
            <li><a href="https://gmail.com">Gmail</a></li>
            <li><a href="https://news.ycombinator.com">Hacker News</a></li>
            <li><a href="https://github.com">Github</a></li>
            <li><a href="https://reddit.com">Reddit</a></li>
            <li><a href="https://facebook.com">Facebook</a></li>
            <li><a href="https://mint.com">Mint</a></li>
            <li><a href="https://remote.mitre.org/">MITRE Remote Access</a></li>
        </li>



     </div>




 </div>
 <div id="kingsquest"></div>
 </body>
 </html>
```