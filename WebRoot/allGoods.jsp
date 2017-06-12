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
			<td width="214" align="center" class="text">商品名称</td>
			<td width="214" align="center" class="text">商品类别</td>
		</tr>
		<tr>
			<td colspan="6"><hr
					style="border-width: 100%; border-color: #efefef;" /></td>
		</tr>
		<s:iterator value="#goodsListAll" status="st">
			<tr>
				<td width="214"><a
					href="goods_toAdminDetail.action?id=<s:property value="id"/>"><s:property
							value="goodsName" /> </a></td>
				<td width="214" align="center" class="text">
					<s:if test="goodsType.id==1">
						衣服
					</s:if> <s:elseif test="goodsType.id==2">
						鞋子
					</s:elseif> <s:elseif test="goodsType.id==3">
						包包
					</s:elseif> <s:elseif test="goodsType.id==4">
						配饰
					</s:elseif> <s:elseif test="goodsType.id==5">
						护肤
					</s:elseif> <s:elseif test="goodsType.id==6">
						彩妆
					</s:elseif>
				</td>
			</tr>
			<tr>
				<td><hr style="border-width: 100%; border-color: #ffffff;" />
				</td>
				<td></td>
			</tr>
		</s:iterator>
		<tr>
			<td><a href="goods_doSearchAllGoods.action?pageNum=${pageNum-1}">上一页</a>
			</td>
			<td align="right"><a
				href="goods_doSearchAllGoods.action?pageNum=${pageNum+1}">下一页</a></td>
		</tr>
	</table>
</body>
</html>
