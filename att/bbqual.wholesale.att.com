```


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

   
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="Pragma" content="no-cache">
        <meta name="Author" content="Pavlin Staikov" />
        <title>OneQual Login</title>
        <link href="/css/winstyles.css" rel="stylesheet" type="text/css" /> 
    </head>
    <body>
    


<table align="center" background="/images/00_BS_Banner_bkg.gif" border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
      <td align="left" valign="top"><img src="/images/00_OQ_banner_l.gif" height="41" width="299"></td>
      <td align="right" valign="top"><img src="/images/00_BS_banner_r.gif" height="52" width="363"></td> 
    </tr>
</table>

   
        <div><img src="/images/spacer.gif" height="10"/></div>
        <div class="redLargeBoldFont" align="center">
            
        </div>
        <div align="center">
            Use either your AT&T Global Logon or your OneQual login credentials
        </div>
        <div ><img src="/images/spacer.gif" height="10"/></div>
        <form action="/" method="POST">
        <table align="center" cellpadding="10" border="0" bgcolor="#F5F9F9" 
        style="border:5px outset; border-color:grey;">
            <tr><td colspan="2" align="center">
                <div align="center" class="largeBoldFont"> OneQual Login </div>
            </td></tr>
            <tr>
                <td>User ID:</td>
                <td><input name="uid" type="text"/></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input name="pwd" type="password"/></td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <input type="submit" name="login" value="Login" />
                    <input type="reset" name="reset" value="Reset" />
                </td>
            </tr>
			<tr>
                <td align="center" colspan="2">
					<a href="?updPwdReq"> Change Password <a/>
                </td>
            </tr>            
        </table>
        </form>
        <div ><img src="/images/spacer.gif" height="10"/></div>
        <div align="center"><table width="70%"><tr><td  class="smallFont">
            This system is restricted solely to AT&amp;T authorized users for 
            legitimate business purposes only. The actual or attempted unauthorized 
            access, use or modification of this system is strictly prohibited 
            by AT&amp;T. Unauthorized users are subject to Company disciplinary 
            proceedings and/or criminal and civil penalties under state, federal, 
            and other applicable domestic and foreign laws. The use of this system 
            may be monitored and recorded for administrative and security reasons. 
            Anyone accessing this system expressly consents to such monitoring 
            and is advised that if such monitoring reveals possible evidence of 
            criminal activity, AT&amp;T may provide the evidence of such activity to 
            law enforcement officials. 
        </td></tr></table></div>
        <div ><img src="/images/spacer.gif" height="10"/></div>
     
        


<table background="/images/bkg_for_footer.png" border="0" cellpadding="3" cellspacing="0" width="100%">
  <tbody>
    <tr>
      <td width="300"><img src="/images/OSD_logo.gif" height="24" width="216"></td>
      <td class="disclaimer"><b>PRIVATE/PROPRIETARY/SECURE:</b>
      <br>
No disclosure outside AT&amp;T except by written agreement. <br>
Must be securely stored when not in use.</td>
    </tr>
  </tbody>
</table>


    </body>
</html>
```