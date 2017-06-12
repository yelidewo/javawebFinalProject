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
<style type="text/css">
.text {
	font-family: 楷体;
	font-size: 18;
	font-weight: bold;
}

.text_sub {
	font-family: 楷体;
	font-size: 16;
	font-weight: bold;
}

.text_sub_1 {
	text-decoration: line-through;
	font-family: 楷体;
	font-size: 16;
	font-weight: bold;
	font-family: 楷体;
}

a {
	text-decoration: none;
	color: #ff5990;
	font-family: 楷体;
	font-size: 16;
	font-weight: bold;
}
</style>
<base href="<%=basePath%>">

<title>查询商品类别</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body bgcolor="#fef5f0">
	<table width="100%"
		style="padding-left: 80; padding-top: 30; padding-bottom: 20;">
		<tr>
			<td align="left"><a href="user_doSearchAllUser.action">首页</a></td>
		</tr>
	</table>
	<table
		style="margin-left: 80; margin-right: 70; margin-top: 20; padding: 20"
		bgcolor="#ffffff">
		<tr>
			<td width="214" align="center" class="text">商品ID</td>
			<td width="214" align="center" class="text">商品类别名称</td>
		</tr>
		<tr>
			<td colspan="6"><hr
					style="border-width: 100%; border-color: #efefef;" /></td>
		</tr>
		<s:iterator value="goodsTypeList" status="st">
			<tr>
				<td width="214" align="center" class="text" style="padding-top: 20;"><s:property
						value="id" /></td>
				<td width="214" align="center" class="text"><s:property
						value="typeName" /></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>
