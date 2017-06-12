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

<title>查看商品详情</title>

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
	<h2>商品列表</h2>
	<hr>
	<br />
	<table border="1" width="600dp" height="300dp">
		<tr>
			<td>商品ID</td>
			<td>商品类别名称</td>
		</tr>
		<s:iterator value="goodsTypeList" status="st">
			<tr>
				<td><s:property value="id" />
				</td>
				<td><s:property value="typeName" />
				</td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
