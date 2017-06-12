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
	text-decoration: line-through; font-family : 楷体;
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

<title>购物车</title>

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
	<table width="100%" style="padding-right: 80; padding-top: 30; padding-bottom: 20;">
		<tr>
			<td align="right"><a href="init.action">首页</a></td>
		</tr>
	</table>
	<table
		style="margin-left: 70; margin-right: 70; margin-top: 20; padding: 20"
		bgcolor="#ffffff">
		<tr>
			<td></td>
			<td width="214" align="center" class="text">商品</td>
			<td width="214" align="center" class="text">单价（元）</td>
			<td width="214" align="center" class="text">数量</td>
			<td width="214" align="center" class="text">小计</td>
			<td width="214" align="center" class="text">操作</td>
		</tr>
		<tr>
			<td colspan="6"><hr
					style="border-width: 100%; border-color: #efefef;" /></td>
		</tr>
		<s:iterator value="#session.cartList">
			<tr>
				<td style="padding-top: 20;" width="214" align="center"><img
					alt="" width="66" height="99"
					src="upload/<s:property value="goods.img"/>" /></td>
				<td width="214" style="padding-left: 20;" class="text_sub"><s:property
						value="goods.goodsName" /></td>
				<td width="214" align="center"><table>
						<tr>
							<td class="text_sub_1"><s:property value="goods.price" /><br /></td>
						</tr>
						<tr>
							<td class="text_sub"><s:property value="goods.discount" /></td>
						</tr>
					</table></td>
				<td width="214" align="center" class="text_sub"><s:property
						value="count" /></td>
				<td width="214" align="center" class="text_sub"><s:property
						value="sum" /></td>
				<td width="214" align="center" class="text_sub"><a
					href="cart_doDeleteCart.action?id=<s:property value="id"/>">删除</a></td>
			</tr>
		</s:iterator>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td align="right"><a href="">继续购物</a></td>
			<td align="center"><a
				href="order_toOrder.action?sum=<s:property value="#session.sum"/>">去结算</a></td>
		</tr>
	</table>
</body>
</html>
