


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Download</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style2 {color: #FF0000}
.style10 {font-size: 14px; color: #FFFF00; font-weight: bold; font-style: italic; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
	<div class="logo style1">
        <h3 class="style1 style2">Dynamic Secure Access Control and Data Sharing Through Trusted Delegation and Revocation in a Blockchain-Enabled Cloud-IoT Environment</h3>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
          <li class="active"><a href="usermain.jsp" class="active">User</a> </li>
         
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>Download File </h2>
          <p>&nbsp;</p>
          <div class="clr"></div>
          <p>&nbsp;</p><%@ page import="java.util.Date" %>
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>
<%

    try
		{
		
		
		  
		
		   String uname=(String)application.getAttribute("uname");
		   
			String status="Permitted";
			String sql="SELECT * FROM request where status='"+status+"' and uname='"+uname+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if (rs.next()==true) 
					{%>
          <form action="u_Download1.jsp" method="post" name="form1" id="form1">
<table width="478" border="0" align="center">
	<tr>
		<td width="223" bordercolor="#FF0000" bgcolor="#000000"><span class="style10">Enter File Name :-</span></td>
		<td width="245"><label> <input required name="t1"
			type="text"  size="40" /> </label></td>
	</tr>
	<tr>
		<td height="34" bordercolor="#FF0000" bgcolor="#000000"><span class="style10">Enter Owner Name:-</span></td>
		<td><input name="oname" type="text" size="40" /></td>
	</tr>
	
	<tr>
		<td height="34" bordercolor="#FF0000" bgcolor="#000000"><span class="style10">B1-Hash 1:-</span></td>
		<td><input name="t12" type="text" size="40" /></td>
	</tr>
	<tr>
		<td height="34" bordercolor="#FF0000" bgcolor="#000000"><span class="style10">B2-Hash 2:-</span></td>
		<td><input name="t122" type="text" size="40" /></td>
	</tr>
	<tr>
		<td height="34" bordercolor="#FF0000" bgcolor="#000000"><span class="style10">B3-Hash 3:-</span></td>
		<td><input name="t123" type="text" size="40" /></td>
	</tr>
	<tr>
		<td height="34" bordercolor="#FF0000" bgcolor="#000000"><span class="style10">B4-Hash 4:-</span></td>
		<td><input name="t124" type="text" size="40" /></td>
	</tr>
	<tr>
		<td bordercolor="#FF0000" bgcolor="#000000"><span class="style10">Secret Key :-</span></td>
		<td><input name="t13" type="text" size="40" /></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>
		<div align="right"><input type="submit" name="Submit" value="Req Hash" /></div>		</td>
	</tr>
</table>

<%}
			else
			{
				out.print("No Access Permission To View Data Details");
				 %><br/><br/><a href="u_UserMain.jsp">Back</a><%
				 
				 SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
	
		
			Statement stss=connection.createStatement();
				  status="Revocated";
					
			  		stss.executeUpdate("insert into Revocation(uname,dt,status) values ('"+uname+"','"+dt+"','"+status+"')"); 
				 
				 
				 
				 
			}
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>
		  

<p>&nbsp;</p>
<p><a href="u_UserMain.jsp">Back</a></p>
          </form>

          <div class="clr"></div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
          </form>
          <p>&nbsp;</p>
          <div align="justify"></div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2>About Project</h2>
          <p>&nbsp; </p>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
