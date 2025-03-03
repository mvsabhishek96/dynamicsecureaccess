<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>End User Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 25px;
	color: #33FF99;
}
.style3 {color: #FF0000}
.style4 {color: #FFFFFF}
.style5 {color: #00FFFF}
.style6 {font-size: 14px}
.style7 {font-weight: bold}
.style8 {color: #FF0000; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1 style6">Dynamic Secure Access Control and Data Sharing Through Trusted Delegation and Revocation in a Blockchain-Enabled Cloud-IoT Environment</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
         
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
          <h2 align="center"> Request Data Access Permission !!! <span class="style3"></span></h2>
		  
		  
		  
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p><a href="u_UserMain.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
            <form id="form" name="form1" method="post" action="u_Att_req1.jsp">
              <div align="center" class="style4">
                <p><br />
                  <span class="style8">Enter Owner Name                  </span><br />
                  <br />
                  <input type="text" name="oname" />
                </p>
                <p><br />
                  <br />
                  <input name="Submit" type="submit" class="style7" value="Req Attributes" />
                </p>
                <p>&nbsp; </p>
              </div>
            </form>
            <%String key=(String)application.getAttribute("key");
			  if(key!=(null))
			  {%>
            <p align="center" class="style2"><strong><span class="style4">Requested Data Access Status ::</span> <span class="style5"><%=key%>&nbsp;</span></strong></p>
            <%application.removeAttribute("key");
			  }%>
            <p align="right"><a href="u_UserMain.jsp">Back</a></p>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
