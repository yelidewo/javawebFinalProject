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
a {
	text-decoration: none;
	color: #ff5990;
	font-family: 楷体;
	font-size: 16;
	font-weight: bold;
}
.page {
	text-decoration: none;
	color: #ff5990;
	font-family: 楷体;
	font-size: 16;
	font-weight: bold;
}
</style>
<base href="<%=basePath%>">

<title>特色商品专卖</title>

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
	<table border="0" height="100" cellpadding="0" cellspacing="0">
		<tr height="100">
			<td><%@ include file="top.jsp"%></td>
		</tr>
	</table>
	<table style="padding-left: 50; padding-top: 10; padding-bottom: 20;">
		<tr>
			<td colspan="4"
				style="font-family: 楷体; font-weight: bold; font-size: 24; color: #ff5990">精品分类</td>
		</tr>
		<tr>
			<td colspan="4"><hr
					style="border-width: 100%; border-color: #efefef;" /></td>
		</tr>
		<tr>
			<s:iterator value="goodsList" status="st">
				<td
					style="padding-right: 40; color: #ff5990; padding-top: 20; font-weight: bold; font-family: 楷体;"><a
					href="goods_toDetail.action?id=<s:property value="id"/>"><img
						width="281" height="421" alt=""
						src="upload/<s:property value="img"/>" /></a><br /> <br /> <a
					href="goods_toDetail.action?id=<s:property value="id"/>"><s:property
							value="goodsName" /></a><br /> ¥<s:property value="price" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;♥&nbsp;<s:property
						value="sumCount" /></td>
				<s:if test="#st.count%4==0">
		</tr>
		<tr>
			</s:if>
			</s:iterator>
		</tr>
		<tr>
			<td colspan="4" align="center"><a
				href="goods_doSearchGoodsPaging.action?goodsType.id=<s:property value="goodsType.id"/>&pageNum=${pageNum-1}" class="page">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
				href="goods_doSearchGoodsPaging.action?goodsType.id=<s:property value="goodsType.id"/>&pageNum=${pageNum+1}" class="page">下一页</a></td>
		</tr>
	</table>


</body>
</html>
