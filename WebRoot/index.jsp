<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>欢迎光临我的购物网站</title>
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
	<table border="0" width="100%" height="100%" cellpadding="0"
		cellspacing="0">
		<tr height="100">
			<td colspan="8"><%@ include file="top.jsp"%></td>
		</tr>
		<tr>
			<td align="left" style="width: 65px"><%@ include
					file="left_spclass.jsp"%></td>
			<td align="center" style="width: 1105px" id="main"><%@ include
					file="indexshow.jsp"%></td>
			<td align="left" style="margin-right: 30px;">
				<table>
					<tr>
						<td align="center" style="font-family: 楷体; height: 168px"><img
							alt="" src="img/indexshow/05.jpg"><br> <br>
							菲诗小铺隔离乳 <br></td>
					</tr>
					<tr>
						<td align="center" style="font-family: 楷体; height: 168px"><img
							alt="" src="img/indexshow/06.jpg"><br> <br>
							自然乐园芦荟胶 <br></td>
					</tr>
					<tr>
						<td align="center" style="font-family: 楷体; height: 168px"><img
							alt="" src="img/indexshow/07.jpg"><br> <br>
							肌研保湿乳液 <br></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<table>
		<tr>
			<td><%@ include file="sellrank.jsp"%></td>
		</tr>
	</table>

</body>
</html>
