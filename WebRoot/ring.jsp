<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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

<title>配饰专卖</title>

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
			<td align="center"><%@ include file="ringshow.jsp"%></td>
		</tr>
	</table>
</body>
</html>
