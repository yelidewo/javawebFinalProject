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

<title>添加商品详情</title>

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
	<s:form action="goods_upload.action" method="post"
		enctype="multipart/form-data">
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
				<s:textfield name="goodsName" size="50dp" label="商品名称"></s:textfield>
			</tr>
			<tr>
				<s:select list="#goodsTypeList" listKey="id" listValue="typeName"
					name="goodsType.id" label="所属类别" headerKey="-1" headerValue="-请选择-"></s:select>
			</tr>
			<tr>
				<s:textfield name="price" size="50dp" label="商品价格"></s:textfield>
			</tr>
			<tr>
				<s:textfield name="discount" size="50dp" label="商品折扣"></s:textfield>
			</tr>
			<tr>
				<s:textfield name="sumCount" size="50dp" label="商品总数"></s:textfield>
			</tr>
			<tr>
				<s:file name="file" label="商品图片"></s:file>
			</tr>
			<tr align="right">
				<s:submit value="提交"></s:submit>
			</tr>
		</table>
	</s:form>
</body>
</html>
