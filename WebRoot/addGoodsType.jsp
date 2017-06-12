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

.submit {
	font-family: 楷体;
	font-weight: bold;
	color: #ff5990;
}
</style>
<base href="<%=basePath%>">

<title>添加商品类别</title>

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
	<s:form action="goodstype_doAddGoodsType.action">
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
				<td><s:textfield name="typeName" size="50dp" label="商品类别"></s:textfield></td>
			</tr>
			<tr>
				<td align="right" style="padding-top: 10;"><s:submit value="提交"></s:submit></td>
			</tr>
		</table>
	</s:form>
</body>
</html>
