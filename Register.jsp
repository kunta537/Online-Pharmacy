<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="free design template, CSS template, HTML website" />
<meta name="description" content="Free Design Template, Free CSS Website, XHTML CSS layout" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript">
	function validate(formObj)
	{
	if(formObj.t1.value.length==0)
	{
	alert("Please Enter Customer Name");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter Password");
	formObj.t2.focus();
	return false;
	}
	if(formObj.t3.value.length==0)
	{
	alert("Please Enter Contact No");
	formObj.t3.focus();
	return false;
	}
	if(formObj.t4.value.length==0)
	{
	alert("Please Enter Address");
	formObj.t4.focus();
	return false;
	}
	if(formObj.t5.value.length==0)
	{
	alert("Please Enter Email id");
	formObj.t5.focus();
	return false;
	}
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>
</head>
<body>
<!--  Download Free CSS Templates from www.templatemo.com  -->	
<div id="templatemo_header_panel">
	<div id="templatemo_header_section">
    	<div id="templatemo_title_section"><center>Online Pharmacy</center></div>
        <div id="tagline"></div>
    </div>
</div> <!-- end of haeder -->

<div id="templatemo_menu_panel">
    <div id="templatemo_menu_section">
       <ul>
            <li><a href="index.jsp"  class="current">Home</a></li>
			<li><a href="Admin.jsp">Administrator</a></li>
            <li><a href="Login.jsp">Existing&nbsp;User</a></li>              
            <li><a href="Register.jsp" class="last">New&nbsp;User</a></li>                
        </ul> 
    </div>
</div> <!-- end of menu -->
<br/>
<center>
<form name="f1" method="post" action="Register" onsubmit="return validate(this);"><br/>
   <h2><b>New User Registration Screen</b></h2>
   <br/>
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="40" >
			 <tr><td><b>User&nbsp;Name</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size=30/></td></tr>
			
			<tr><td><b>Password</b></td><td><input type="password" name="t2" style="font-family: Comic Sans MS" size=30/></td></tr>
		

		   <tr><td><b>Contact&nbsp;No</b></td><td><input type="text" name="t3" style="font-family: Comic Sans MS" size=30/></td></tr>

			<tr><td><b>Address</b></td><td><textarea rows="6" cols="29" name="t4" style="font-family: Comic Sans MS"></textarea></td></tr>

			
			<tr><td><b>Emailid</b></td><td><input type="text" name="t5" style="font-family: Comic Sans MS" size=30/></td></tr>

			


         
			<tr><td></td><td><input type="submit" value="Register"></td>
			</table>
				</div>	
					
				</div>
				
</body>
</html>