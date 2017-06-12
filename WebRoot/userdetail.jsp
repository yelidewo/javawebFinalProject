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

.submit {
	font-family: 楷体;
	font-size: 16;
	font-weight: bold;
	color: #ff5990;
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

<title>用户详情页面</title>

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
			<td align="left"><a href="adminindex.jsp">首页</a></td>
		</tr>
	</table>
	<table style="margin-left: 70; margin-right: 70; padding: 20"
		bgcolor="#ffffff">
		<tr>
			<td class="text_sub">用户名：</td>
			<td class="text_sub"><s:property value="userName" /></td>
		</tr>
		<tr>
			<td class="text_sub">密码：</td>
			<td class="text_sub"><s:property value="password" /></td>
		</tr>
		<tr>
			<td class="text_sub">手机号：</td>
			<td class="text_sub"><s:property value="usernum" /></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><a
				href="user_toUpdateDetail.action?id=<s:property value="id"/>">修改用户信息</a>
				&nbsp;&nbsp;&nbsp;&nbsp; <a
				href="user_doDelete.action?id=<s:property value="id"/>">删除用户</a></td>
		</tr>
	</table>
</body>
</html>
