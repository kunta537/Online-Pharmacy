<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.DBCon"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="free design template, CSS template, HTML website" />
<meta name="description" content="Free Design Template, Free CSS Website, XHTML CSS layout" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
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
            <li><a href="SearchMedicine.jsp"  class="current">Search&nbsp;Medicine</a></li>
			<li><a href="PurchaseMedicine.jsp">Purchase&nbsp;Medicine</a></li>
			<li><a href="TrackOrder.jsp">Track&nbsp;Order</a></li>
			<li><a href="Logout.jsp">Logout</a></li>
                             
        </ul> 
</div> <!-- end of menu -->
<br/>
	<center>
  <h2><b>View Medicines Screen</b></h2>
   <br/>
	
						
						<table align="center" border="1" width="100%" >
			  <tr><th>Medicine Name</th><th>Quantity</th><th>Expiry Date</th>
			 <th>Price</th><th>Manufacturer><th>Supplier</th><th>status</th>
			 <%
			 String mname = request.getParameter("t1").trim();
			 Connection con = DBCon.getCon();
			 Statement stmt = con.createStatement();
			 ResultSet rs = stmt.executeQuery("select * from addmedicine where medicine_name like'%"+mname+"%'");
			 while(rs.next()){
				 String s1 =rs.getString(1);
				 String s2 =rs.getString(2);
				 java.sql.Date ed = rs.getDate(3);
				 String s4 =rs.getString(4);
				 String s5 =rs.getString(5);
				 String s6 =rs.getString(6);
				 String status = rs.getString(7);
				 %>
				 <tr><td><%=s1%></td><td><%=s2%></td><td><%=ed.toString()%></td><td><%=s4%>
				 <td><%=s5%></td><td><%=s6%></td><td><%=status%></td>
				
				 <%}%>
			 </td></tr>
         
		      
			
			</table>
				</div>	
					
				</div>
				
</body>
</html>