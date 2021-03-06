```<!DOCTYPE html PUBLIC "-//W3C//DTD XDEV_HTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Netscaler Gateway</title>
<link rel="SHORTCUT ICON" href="/vpn/images/AccessGateway.ico" type="image/vnd.microsoft.icon">
<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<META http-equiv="X-Citrix-AM-GatewayAuthType" content="SMS">
<META content=noindex,nofollow,noarchive name=robots>
<link href="/vpn/js/rdx/core/css/rdx.css" rel="stylesheet" type="text/css"/>
<link href="/logon/themes/Default/css/base.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" href="/logon/fonts/citrix-fonts.css" type="text/css">
<link href="/logon/themes/Default/css/custom.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/vpn/js/rdx.js"></script>
<script type="text/javascript" src="/vpn/login.js"></script>
<script type="text/javascript" src="/vpn/js/views.js"></script>
<script type="text/javascript" src="/vpn/js/gateway_login_view.js"></script>
<script type="text/javascript" src="/vpn/js/gateway_login_form_view.js"></script> 
<style type="text/css">
body
{
  display : none;
  visibility: hidden;
}
</style>
<SCRIPT language=JavaScript>
// frame-busting script
function changePage()
{
	if( self == top ) {
  		 document.getElementsByTagName("body")[0].style.display = 'block' ;
		 document.getElementsByTagName("body")[0].style.visibility = 'visible' ;
		 ns_fillName();
	} else {
   		top.location = self.location ;
	}

}
function setFocus(obj)
{
   if (obj != null) {
      obj.focus();
   }
}			
//-->
</SCRIPT>
<script type="text/javascript" src="/vpn/resources.js"></script>
<script type="text/javascript" language="javascript">
var Resources = new ResourceManager("/logon/themes/Default/resources/{lang}", "logon");
var eula = new ResourceManager("/logon/themes/EULA/resources/{lang}","custom_strings");
</script>
<script type="text/javascript" src="/vpn/nsshare.js"></script>
<META content="MSHTML 6.00.2900.2802" name=GENERATOR>
</head>
<body class="ns_body" id=bodyTag>
<!-- Copyright 2001-2005 Citrix Systems, Inc. All Rights Reserved -->
<NOSCRIPT>
<BR><BR>
<table style="WIDTH: 100%">
<tr>
 	<td align="center">
		<table class="CTXMSAM_LogonFont">
			<tr id="errorMessageRow">
				<td class="glowBoxLeft">&nbsp;</td>                            
				<td class="loginTableMidWidth">
					<div id="feedbackArea">
					<div id="feedbackStyle" class="feedbackStyleError">
					<span id="errorMessageLabel" class="messageStyle">
					JavaScript is either disabled in or not supported by the Web browser.  
					To continue logon, use a Web browser that supports JavaScript or enable JavaScript in your current browser.
					</span>
					</div>
					</div>
				</td>                           
				<td class="glowBoxRight">&nbsp;</td>
			</tr>
		</table>
	</td>
</tr>
</table>

<table style="display:none">
</NOSCRIPT>
<script>
rdx.FRAMEWORK_BASE = "/vpn/js";
rdx.page.add_event_handler(rdx.events.PAGE_LOADED, new rdx.callback(login, login.do_action_on_load));

$(window).load(function(){resize();});
$(window).resize(function(){resize();});
</script>
</body>
</html>
```