```<!--googleoff: all-->
<html lang="en"><head><title>adwords-prod-west.qa.adz.google.com - MOMA Single Sign On</title>
<link href="/c/login.css" rel="stylesheet" />
<link rel="icon" href="/c/favicon.ico" type="image/x-icon" />
<script type="text/javascript" src="/c/corploginscript.js" nonce="ILdtGZRP2chEr960r4E9cA">
        
      </script>
<script type="text/javascript" nonce="ILdtGZRP2chEr960r4E9cA">
        
        otpParam = "otp";
        useOtp = 1;

      </script></head>
<body bgcolor="#ffffff" vlink="#666666"><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0"><tr valign="top"><td width="1%"><img src="/c/moma.gif" border="0" align="left" vspace="13" alt="moma - inside google" /></td>
<td width="99%" bgcolor="#ffffff" valign="top"><table width="100%" cellpadding="1"><tr valign="bottom"><td><div align="right">&nbsp;</div></td></tr>
<tr><td nowrap="nowrap"><table width="100%" align="center" cellpadding="0" cellspacing="0" bgcolor="#C3D9FF" style="margin-bottom:5"><tr><td class="bubble tl"><img src="/c/tl.gif" alt="" /></td>
<th class="bubble" rowspan="2">Single Sign On</th>
<td class="bubble tr"><img src="/c/tr.gif" alt="" /></td></tr>
<tr><td class="bubble bl"><img src="/c/bl.gif" alt="" /></td>
<td class="bubble br"><img src="/c/br.gif" alt="" /></td></tr></table></td></tr></table></td></tr></table>
<br />

<form method="post" id="loginForm" name="loginForm" action="/login"><input type="hidden" id="s" name="s" value="adwords-prod-west.qa.adz.google.com:443/uberproxy/"/>
<input type="hidden" id="d" name="d" value="https://adwords-prod-west.qa.adz.google.com/?upxsrf=AO9zFu37W52e3RV2DIsEbC9mxU40itsVF8ykDcoxMrSkQt7nkA:1611353669896"/>
<input type="hidden" id="keyIds" name="keyIds" value="zRI,s8x,xSS,Caq"/>
<input type="hidden" id="maxAge" name="maxAge" value="1200"/>
<input type="hidden" id="authLevel" name="authLevel" value="2000000"/>
<input type="hidden" id="ssoformat" name="ssoformat" value="CORP_SSO"/>
<input type="hidden" id="x" name="x" value="x:ChgIvvSYuL2U4bE3EICDp-HyLhiAg6fh8i4SJQDmqPmODVit4p6mR7fnpBYBBQUH5Zj-j1eYIPoSbleWve1a97Y"/>

<input type="hidden" id="interactive" name="interactive" value="yes" />
<input type="hidden" id="hasJavascript" name="hasJavascript" value="no" />
<input type="hidden" id="mi" name="mi" value="" />
<script type="text/javascript" nonce="ILdtGZRP2chEr960r4E9cA">
          
          fillMiField();
        </script>
<table width="1" align="center" cellpadding="5" cellspacing="1" class="signin"><tr><td width="25%" valign="top" style="padding-top: .5em; padding-right: 2em;"><table cellpadding="5" width="100%" border="0"><tr><td colspan="2" style="text-align:center" nowrap="nowrap"><div class="caption">Use your SSO username and password</div></td></tr>


<tr><td nowrap="nowrap"><div align="right"><font size="-1" face="Arial, sans-serif"><label for="username">Username:</label></font></div></td>
<td nowrap="nowrap"><input type="text" name="u" tabindex="1" size="15" id="username" value="" />
<span style="font-size: 83%; position: relative; bottom: 2px;"><span style="padding: 0 3px 0 5px;">@</span>
google.com
<a href="#" id="roleToggle" style="color:black; text-decoration: none">[+]</a>
<script type="text/javascript" nonce="ILdtGZRP2chEr960r4E9cA">
              
              document.getElementById('roleToggle').onclick = function(e) {
                e.preventDefault();
                toggleInput('roleToggle', 'roleRow', 'role', 2);
              }
            </script></span></td></tr>
<tr id="roleRow" style="display: none;"><td nowrap="nowrap"><div align="right"><font size="-1" face="Arial, sans-serif"><label for="role">Role:</label></font></div></td>
<td nowrap="nowrap"><input type="text" name="role" size="15" id="role" />
<font size="-1">&nbsp;<a href="https://g3doc.corp.google.com/company/teams/sso/intro.md#role-accounts">What&#39;s this?</a></font></td></tr>
<tr><td nowrap="nowrap"><div align="right"><font size="-1"><label for="password">Password:</label></font></div></td>
<td nowrap="nowrap"><input type="password" name="pw" tabindex="3" size="15" autocomplete="off" id="password" /></td></tr>
<tr><td><div align="right" style="width: 90px;"><font size="-1"><label for="otp"><a href="/c/SecurityCode.html" target="_blank" rel="noopener noreferrer">Security Code</a>:</label></font></div></td>
<td nowrap="nowrap"><input type="tel" name="otp" tabindex="4" size="15" autocomplete="off" id="otp" />
</td></tr>
<div class="adverise-gnubby"><td></td></div>

<tr><td colspan="2" align="center"><input type="submit" name="signInButton" id="signInButton" value="Sign in" style="padding: 2px;" tabindex="4" /></td></tr>
<td colspan="2" align="center"></td></table>
<table border="0" width="100%" style="padding-top: 10px;"><tr><td align="left"></td>
<td align="right"><font size="-1"><a href="https://static.corp.google.com/corpsso/techstop/techstop-phones.html">Security Key help</a></font></td></tr>
<tr><td colspan="2" align="right"><font size="-1"><a href="https://static.corp.google.com/corpsso/techstop/techstop-phones.html">Password help</a></font></td></tr></table></td>
<td class="image-cell" valign="top"><div id="corplogin-image"><img class="login-image" src="https://static.corp.google.com/corpsso/images/husky.jpg" width="400" height="267" alt="decorative image" /></div></td></tr></table></form>
<div id="interstitial-warning-touchid" class="ssobox gnubby-signin hidden"><p>You&#39;ve successfully signed in and will be redirected in 10 seconds</p>
<p class="errormsg">Touch ID for sign on will soon be phased out.</p>
<p>Start using a physical security key instead. To learn more, visit <a target="_blank" href="http://go/touchid-faq?utm_source=corpsso&amp;utm_medium=interstitial&amp;utm_campaign=TouchIdVerificationWarning">go/touchid-faq</a>.</p></div>
<div id="interstitial-warning-fedramp" class="fedramp-warning ssobox gnubby-signin hidden"><p>You&#39;ve successfully signed in and will be redirected in 10 seconds</p>
<p class="errormsg">You didn&#39;t use a Titan Security Key as required</p>
<p>Visit <a href="http://go/fedramp-compliance">go/fedramp-compliance</a> to learn why you need to use a Titan Key</p></div>
<script type="text/javascript" nonce="ILdtGZRP2chEr960r4E9cA">
    
    
    interstitialWarningDurationMs = 10000;
    fedrampWarningCookieName = "FEDRAMPWARN";
    interstitialWarningCookieName = "INTERSTITIALWARNING";
    
  </script>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="footer"><tr valign="top"><td width="99%" bgcolor="#ffffff" valign="top"><table width="100%" cellpadding="1"><tr valign="bottom"><td><div align="right">&nbsp;</div></td></tr>
<tr><td nowrap="nowrap"><table width="100%" align="center" cellpadding="0" cellspacing="0" bgcolor="#C3D9FF" style="margin-bottom:5"><tr><td class="bubble tl"><img src="/c/tl.gif" alt="" /></td>
<th class="bubble" rowspan="2"><span>&nbsp;</span></th>
<td class="bubble tr"><img src="/c/tr.gif" alt="" /></td></tr>
<tr><td class="bubble bl"><img src="/c/bl.gif" alt="" /></td>
<td class="bubble br"><img src="/c/br.gif" alt="" /></td></tr></table></td></tr></table></td>
<td width="1%"><a id="gnubbyLinkFooter" href="https://login.corp.google.com/request?s=adwords-prod-west.qa.adz.google.com:443/uberproxy/&amp;d=https://adwords-prod-west.qa.adz.google.com/?upxsrf%3DAO9zFu37W52e3RV2DIsEbC9mxU40itsVF8ykDcoxMrSkQt7nkA:1611353669896&amp;maxAge=1200&amp;authLevel=2000000&amp;keyIds=zRI,s8x,xSS,Caq"><img src="/c/balls.gif" border="0" alt="" align="left" vspace="13" /></a>
<script type="text/javascript" nonce="ILdtGZRP2chEr960r4E9cA">
            
            document.getElementById('gnubbyLinkFooter').onclick = setGnubbyCookie;
          </script></td></tr></table>

<script type="text/javascript" nonce="ILdtGZRP2chEr960r4E9cA">
      
      document.getElementById('loginForm').onsubmit = signInOnSubmit;
      document.body.onload = function() {
        loginOnload();
      }
    </script></body></html>```