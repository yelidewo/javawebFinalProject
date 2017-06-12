<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path_shoe = request.getContextPath();
String basePath_shoe = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path_shoe+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath_shoe%>">
    
    <title>My JSP 'shoebelow.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table border="0" cellpadding="0" cellspacing="0"
		style="margin-left:190px">
		<tr>
			<td width="220" height="384"><img src="images/2.png"></td>
			<td width="32"></td>
			<td width="220" height="384"><img src="images/2.png"></td>
			<td width="32"></td>
			<td width="220" height="384"><img src="images/2.png"></td>
			<td width="32"></td>
			<td width="220" height="384"><img src="images/2.png"></td>
		</tr>
	</table>
  </body>
</html>
