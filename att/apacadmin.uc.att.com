```<!DOCTYPE HTML>
<html lang="en-us" class="login_page">
    
 
    <head>
        <META charset="utf-8">
        <META HTTP-EQUIV="Pragma" CONTENT="no-cache">
        <META HTTP-EQUIV="Expires" CONTENT="-0">
        <meta name="viewport" content="width=device-width">
        
        <title>CUCDM AP</title>
        <!-- i18n -->
        <script type="text/javascript" src="../api/jsi18n"></script>
        
        <!--Skin-->
        <style type="text/css">
            @import "../www/themes/att/skin.css";
        </style>
        

    <style type="text/css">


    </style>
    </head>
    

    <body class="nihilo login_page ">
        <div class="background"></div>
        
        <div class="background"></div>
        <div id="container">
            
            <h1 class="title">Cisco Hosted Collaboration Solution from AT&amp;T</h1>
            
            <div class="login">
                <div class="login-logo"></div>
                <form action="#" method="post" id="login-form"><input type='hidden' name='csrfmiddlewaretoken' value='Yl9MjqNFyQydIW2PMyHUpKPJarXfahwy' />
                    <div class="form-row">
                        <label for="id_username" class="hidden_from_sighted">Username</label>
                        <input id="id_username" maxlength="256" name="username" placeholder="Username" type="text" />
                        <span class="input-group-addon">
                            <i class="icon-user"></i>
                        </span>
                    </div>
                    <div class="form-row">
                        <label for="id_password" class="hidden_from_sighted">Password</label>
                        <input autocomplete="off" id="id_password" name="password" placeholder="Password" type="password" />
                        <span class="input-group-addon">
                            <i class="icon-key"></i>
                        </span>
                    </div>
                    <div class="form-row">
                        
                            
                        
                        <p class="errornote" id="js-errornote"></p>
                    </div>
                    <div class="submit-row">
                        <input type="submit" value="Log in" id="login-button"/>
                        <label for="login-button"><a href="../account/password/recover/">Forgot Password?</a></label>
                    </div>
                  

                </form>
            </div>
        </div><!--/container-->

	<script type="text/javascript" src="../www/js/src/app/init_scripts/login.js"></script>



<script src="../www/js/src/app/init_scripts/auth.js"></script>


    </body>
</html>
```