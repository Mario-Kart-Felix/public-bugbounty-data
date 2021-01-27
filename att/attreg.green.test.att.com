```
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 
	<META NAME="DCSext.wtPN" content="My Profile Pg">
	<META NAME="DCSext.wtFlowCode" content="DSL_Reg_Online">
	
		<title>Activate Your Account - AT&T High Speed Internet Installation</title>
	
	
				 
		
		 	<link rel="stylesheet" type="text/css" media="screen" href="css/default.css" />
			<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css" />			
			
			<!--[if IE 7]>
			<link rel="stylesheet" type="text/css" media="screen" href="css/ie7.css" />
			<![endif]-->
			<!--[if IE 8]>
			<link rel="stylesheet" type="text/css" media="screen" href="css/ie8.css" />
			<![endif]--> 
	
 
<script type="text/javascript"> 
		var flashpresent = "no";
</script>	
 
	<script type="text/javascript" src="js/jquery.js"></script>
	<script language="javascript1.2" src="js/default.js"></script>
	<script language="javascript1.2" src="js/progress.js"></script>
	<script type="text/javascript" src="js/formscripts.js"></script>
	
	
	
</head>
<body>  
	<!--  BEGIN: BROADJUMP TAG   //--><form name="SBCYahooRegistration"><input type="hidden" id="Status" value="OK"></form><!--  END: BROADJUMP TAG     //-->
	 
	
		<!-- This is the header graphic, change as needed for each portal.  Defined in the stylesheet. -->
		 <div id="header">
		 	<img src="images/att-logo.png" alt="AT&amp;T" width="92" height="42" class="logo" />
			
			<script type="text/javascript">
			 flashpresent = "no";
			</script>	
		  	 
 
			  
		 <h1><span id="loc_pageTitle">AT&amp;T High Speed Internet Installation</span></h1>
	
 	<ul id="steps">
			<li class="step1 completed"><span>1</span> Get Started</li>
			<li class="step2 completed previous"><span>2</span> Check System</li>
			<li class="step3 current"><span>3</span> Activate</li>
			<li class="step4 next"><span>4</span> Connect</li>
			<li class="step5"><span>5</span> Install Extras</li>
			<li class="step6"><span>6</span> Finish</li>
		</ul>
	</div> <!-- #header -->
  
	
	 
 
	<div id="content">
		<div class="contentShadow"></div>
 
		<div id="contentInner">
		
			<div id="modalOverlay"></div>
			
			<div id="modal" class="progressModal">
				<div class="modalHeader">
					<h2>&nbsp;</h2>
				</div>
				<div class="modalContent">
					<div class="modalShadow"></div>
					<div class="modalInner">
						<div class="progressActive">
							<div class="progressText">Please wait...</div>
							<div class="progressImage"><img src="images/progress-active.gif" alt="" width="169" height="18" /></div>
						</div>						
					</div>
				</div>
			</div>  <!-- end of #modal -->
			
			<h2 id="wtnFormHeader">Welcome to the AT&amp;T High Speed Internet Installation</h2> 
			
			<div class="continueOrCancel"> 
			 If you are installing an Actiontec device <a href="http://att.net/activate" > click here.</a> 
			
			  
			<table>
				<tr>
				<td>
				</td>
				 <td>
				 	<a href="http://att.net/activate" ><img src="images/701D-1_1.JPG" alt="" width="250" height="100" /></a>
				 </td>				
				 <td>
				 	<a href="http://att.net/activate" ><img src="images/GT784WN-1_2.JPG" alt="" width="150" height="150"  /></a>
				 </td>
				 <td>
				</td>
				</tr>
			</table> 
			 
			<strong> Otherwise click Continue to proceed or "Cancel" to exit registration.</strong>
			 
			</div> 
			
			

 


<form name="testForm" action='https://attreg.green.test.att.com/CDSLRegWeb/CDSLRegController' method="post">		
	<input type="hidden" name="vtiVersion" value="1.0">
	<input type="hidden" name="Language" value="en">
	<input type="hidden" name="service" value="cdsl">
	<input type="hidden" name="sessionTrackingId" value="12ab313fe001223">
	<input type="hidden" name="dslamType" value="ATM">	 
	<input type="hidden" name="dslRegDslTechUser" value="yes">	 
	<input type="hidden" name="dslregUserClickedContinue" value="yes">	 
</form>
 
			
					<div class="actionButtons">
						<div class="button buttonSecondary "><div class="buttonInner"><input onclick="javascript:window.close();" type="button" value="Cancel" tabindex="4" /></div></div>
						<div class="button buttonPrimary"><div class="buttonInner"><input onClick="submitForm();" type="submit" value="  Continue  " tabindex="5" /></div></div>
					</div>	
				 
					
	</form> <!-- .accountNumber -->
			
			
 
		</div> <!-- #contentInner -->
	</div> <!-- #content -->	
<script type="text/javascript"> 
  
 
 
$(document).ready(function(){
	var $reFocusField = null;
	var serverSideerror = false;
	
	
});
</script>
 
 
 
 
 
<div id="bbhelptext">	
	<p style="padding-left:10px;">Please do not use &#34;Back&#34; button to avoid unexpected results during installation.</p>
</div>	 
	
<div id="footer">
	<div class="copyright">
 		
 		<a href="/CDSLRegWeb/CDRProxy/cayn_en" TARGET="_blank">Copyright &copy; 2011 AT&amp;T Intellectual Property</a>. All rights reserved.<br />
			AT&amp;T and the AT&amp;T logo are trademarks of AT&amp;T Intellectual Property
			
 	</div> 
	
		<div class="screenCode" ><p>Screen: DSLREG-004</p></div>
	
 		
 
</div> <!-- #footer -->
 
 
<script language="javascript1.2">	 
 function cancelAction(formName){ 
	 //alert();
	 
	 var formLocation = document.forms[formName]; 
	 // to fix latency issue
	 if ( ! formLocation ) return false;
	 
		formLocation.action.value = 'cancel';
		
		//alert(formLocation.action.value); 
		//alert(formLocation.name); 
		formLocation.submit();
	 
 }
</script>
 
 
 
 
  
 
 
 
</div>
 
 
</body>
 
</html>
 
<script language="javascript">
  function submitForm(){
	 	document.testForm.submit();
  }
  
 </script> 
 
 


```