<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Upload</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>


<style type="text/css">
<!--
.style1 {font-size: 24px}
.style2 {color: #FF0000}
.style3 {color: #FFFF00}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
	<div class="logo style1">
        <h3 class="style1 style2">SEPDP Secure and Efficient Privacy Preserving<br /> 
        Provable Data Possession in Cloud Storage </h3>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
          <li class="active"><a href="usermain.jsp" class="active">User</a> </li>
          <li><a href="auditor.jsp"><span>Third Party Auditor</span></a></li>
          <li><a href="csprovider.jsp">Cloud Service Provider</a></li>
          <li>><a href="usermain.jsp">Logout</a></li>
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
          <h2>Upload your File Blocks </h2>
          <p>&nbsp;</p>
          <div >
             <form id="form1" name="form1" method="post" action="d_UploadBlock1.jsp">
          <table width="598" border="1" align="center">
            <tr>
              <td width="286" bgcolor="#FF0000"><span class="style3"><strong>Select File :- </strong></span></td>
              <td width="356"><input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000" class="style3"><strong>File Name :- </strong></td>
              <td><input required="required" name="tt" type="text" id="t42" size="50"/></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000">&nbsp;</td>
              <td><textarea name="text" id="textarea" cols="50" rows="15"></textarea></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><span class="style3"><strong>Hash1 :- </strong></span></td>
              <td><input name="t4" type="text" id="t4" size="50" value="" readonly="readonly" /></td>
            </tr>
			<tr>
              <td bgcolor="#FF0000"><span class="style3"><strong>Hash2 :- </strong></span></td>
              <td><input name="t4" type="text" id="t4" size="50" value="" readonly="readonly" /></td>
            </tr>
			<tr>
              <td bgcolor="#FF0000"><span class="style3"><strong>Hash3 :- </strong></span></td>
              <td><input name="t4" type="text" id="t4" size="50" value="" readonly="readonly" /></td>
            </tr>
			<tr>
              <td bgcolor="#FF0000"><span class="style3"><strong>Hash4 :- </strong></span></td>
              <td><input name="t4" type="text" id="t4" size="50" value="" readonly="readonly" /></td>
            </tr>
			
			
            <tr>
              <td><div align="right"></div></td>
              <td><input type="submit" name="Submit" value="Encrypt" /></td>
            </tr>
          </table>
  </form>
          </div>
          <div align="justify"></div>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
			
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search here" onBlur="if(this.value=='') this.value='Search here'" onFocus="if(this.value =='Search here' ) this.value=''" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="d_DataMain.jsp">Home</a></li>
           
          </ul>
        </div>
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
