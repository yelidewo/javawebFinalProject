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

<title>修改叮当状态页面</title>

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
			<td align="left"><a href="index.jsp">首页</a></td>
		</tr>
	</table>
	<s:iterator value="#session.orderNew" status="st">
		<s:hidden name="id"></s:hidden>
			<table style="margin-left: 70; margin-right: 70; padding: 20" bgcolor="#ffffff">
				<tr height="40">
					<td class="text">订单ID：</td>
					<td class="text"><s:property value="id" /></td>
				</tr>
				<tr height="40">
					<td class="text">收货人：</td>
					<td class="text"><s:property value="contact" /></td>
				</tr>
				<tr height="40">
					<td class="text">联系电话：</td>
					<td class="text"><s:property value="phone" /></td>
				</tr>
				<tr height="40">
					<td class="text">收货地址：</td>
					<td class="text"><s:property value="address" /></td>
				</tr>
				<tr height="40">
					<td class="text">总钱数：</td>
					<td class="text"><s:property value="amount" /></td>
				</tr>
				<tr height="40">
					<td class="text">下单时间：</td>
					<td class="text"><s:property value="time" /></td>
				</tr>
				<tr height="40">
					<td class="text">订单状态（下拉）:</td>
					<td class="text"><s:select list="#{1:'取消订单',2:'确认订单'}" name="statusWord" headerKey="-1" headerValue="-请选择-"></s:select></td>
				</tr>
				<tr height="40">
					<td class="text" colspan="2" align="right"><s:submit value="提交订单"></s:submit></td>
				</tr>
			</table>
		
	</s:iterator>
</body>
</html>
