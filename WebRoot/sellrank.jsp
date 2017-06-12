<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path_sellrank = request.getContextPath();
	String basePath_sellrank = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path_sellrank + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath_sellrank%>">

<title>My JSP 'sellrank.jsp' starting page</title>

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
	<table style="padding: 30">
		<tr>
			<td
				style="font-family: 楷体; font-weight: bold; font-size: 24; color: #ff5990">热销排行</td>
		</tr>
		<tr>
			<td colspan="5"><hr
					style="border-width: 100%; border-color: #efefef;" /></td>
		</tr>
		<tr>
			<s:iterator value="goodsListSell" status="st">
				<td width="220" height="384" style="padding-right: 40; color: #ff5990; padding-top: 10;"><a
					href="goods_toDetail.action?id=<s:property value="id"/>"><img
						width="220" height="
					356" alt=""
						src="upload/<s:property value="img"/>" /> </a><br /> <a
					href="goods_toDetail.action?id=<s:property value="id"/>"><s:property
							value="goodsName" /> </a><br /> ¥<s:property value="price" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;♥&nbsp;<s:property value="sumCount" /></td>
				<s:if test="#st.count%5==0">
		</tr>
		<tr>
			</s:if>
			</s:iterator>
		</tr>
	</table>

	<table style="padding-left: 30; padding-top: 10dp">
		<tr>
			<td
				style="font-family: 楷体; font-weight: bold; font-size: 24; color: #ff5990;">热门推荐</td>
		</tr>
		<tr>
			<td colspan="5"><hr
					style="border-width: 100%; border-color: #efefef;" /></td>
		</tr>
		<tr>
			<s:iterator value="goodsListCommend" status="st">
				<td width="220" height="384" style="padding-right: 40; color: #ff5990; padding-top: 10;"><a
					href="goods_toDetail.action?id=<s:property value="id"/>"><img
						width="220" height="
					356" alt=""
						src="upload/<s:property value="img"/>" /> </a><br /><br /> <a
					href="goods_toDetail.action?id=<s:property value="id"/>"><s:property
							value="goodsName" /> </a><br /> ¥<s:property value="price" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;♥&nbsp;<s:property value="sumCount" /></td>
				<s:if test="#st.count%5==0">
		</tr>
		<tr>
			</s:if>
			</s:iterator>
		</tr>
	</table>
</body>
</html>
