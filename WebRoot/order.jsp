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

<title>订单结算</title>

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
	<s:form action="order_doAddOrder" theme="simple">
		<table width="100%"
			style="padding-left: 80; padding-top: 30; padding-bottom: 20;">
			<tr>
				<td align="left"><a href="index.jsp">首页</a></td>
			</tr>
		</table>
		<table style="margin-left: 70; margin-right: 70; padding: 20"
			bgcolor="#ffffff">
			<tr height="40">
				<td class="text">总额：</td>
				<td class="text"><s:label name="amount" value="%{#session.sum}"></s:label></td>
			</tr>
			<tr height="40">
				<td class="text">收件人地址：</td>
				<td><s:textfield name="address" size="30"></s:textfield></td>
			</tr>
			<tr height="40">
				<td class="text">收件人</td>
				<td class="text"><s:textfield name="contact" size="30"></s:textfield></td>
			</tr>
			<tr height="40">
				<td class="text">电话</td>
				<td class="text"><s:textfield name="phone" size="30"></s:textfield></td>
			</tr>
			<tr height="40">
				<td colspan="2" align="right"><s:submit value="提交订单" cssClass="submit"></s:submit></td>
			</tr>
		</table>
	</s:form>
</body>
</html>
