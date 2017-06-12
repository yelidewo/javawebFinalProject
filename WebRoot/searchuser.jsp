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

<title>查询用户</title>
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
	<table style="margin-left: 70; margin-right: 70; padding: 20"
		bgcolor="#ffffff">
		<s:form action="user_doSearch" theme="simple">
			<tr>
				<td colspan="5" align="center"><s:textfield name="keyword"
						size="50"></s:textfield></td>
				<td align="center"><s:submit type="image"
						src="img/toplogo/toplogo_10.png"></s:submit></td>
			</tr>
			<tr>
				<td colspan="2">
					<table>
						<s:iterator value="#userList" status="st">
							<tr>
								<td class="text_sub">用户名：</td>
								<td><a
									href="user_toDetail.action?id=<s:property value="id"/>"><s:property
											value="userName" /> </a></td>
							</tr>
							<tr>
								<td class="text_sub">用户类型：</td>
								<td><a href="user_toDetail.action?id=<s:property value="id"/>"><s:property
											value="usertype" /></a></td>
							</tr>
						</s:iterator>
					</table>
				</td>
			<tr>
				<td colspan="2" height="60" align="right"><a
					href="user_doSearch.action?keyword=${keyword }&pageNum=${pageNum-1}">上一页</a>&nbsp;&nbsp;
					&nbsp; &nbsp; &nbsp; <a
					href="iser_doSearch.action?keyword=${keyword }&pageNum=${pageNum+1}">下一页</a></td>
			</tr>
		</s:form>
	</table>
</body>
</html>
