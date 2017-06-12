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

<title>管理员主页面</title>

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
	<table border="0" width="100%" height="100%" cellpadding="0"
		cellspacing="0">
		<tr height="100">
			<td colspan="2"><%@ include file="top.jsp"%></td>
		</tr>
		<tr>
			<td align="left" style="width: 65px"><%@ include
					file="manager_left.jsp"%></td>
			<td width="400" align="center"><table>
					<tr>
						<td width="214" align="center" class="text">用户名</td>
						<td width="214" align="center" class="text">密码</td>
						<td width="214" align="center" class="text">手机号</td>
						<td width="214" align="center" class="text">用户类型</td>
					</tr>
					<tr>
						<td colspan="4"><hr
								style="border-width: 100%; border-color: #efefef;" /></td>
					</tr>
					<s:iterator value="#userListAll" status="st">
						<tr>
							<td width="214" align="center" class="text"><s:property
									value="userName" /></td>
							<td width="214" align="center" class="text"><s:property
									value="password" /></td>
							<td width="214" align="center" class="text"><s:property
									value="usernum" /></td>
							<td width="214" align="center" class="text"><s:if
									test="usertype==null">普通用户
								</s:if> <s:if test="usertype!=null">
									管理员
								</s:if></td>
						</tr>
						<tr>
							<td colspan="4" height="10"></td>
						</tr>
					</s:iterator>
				</table></td>
		</tr>
	</table>
</body>

</html>
