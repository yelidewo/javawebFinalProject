<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path_regist = request.getContextPath();
	String basePath_regist = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path_regist + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<style type="text/css">
.submit {
	font-family: 楷体;
	font-weight: bold;
	color: #ff5990;
}

.text_label {
	font-family: 楷体;
	font-weight: bold;
	color: #ff5990;
	size: 50;
	border-width: 0;
	padding: 5;
}

a {
	text-decoration: none;
}
</style>
<head>
<base href="<%=basePath_regist%>">

<title>My JSP 'regist_below.jsp' starting page</title>

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
	<s:fielderror cssStyle="color:red; font-family: 楷体; font-weight: bold;"></s:fielderror>
	<s:actionerror cssStyle="color:red; font-family: 楷体; font-weight: bold;" />
	<br>
	<s:form theme="simple" action="user_doRegist.action" method="post">
		<table>
			<tr>
				<td
					style="height: 40; font-family: 楷体; font-size:larger; font-weight: bold; color: #ff5990"
					align="center"><s:text name="新用户注册"></s:text></td>
			</tr>
			<tr style="height: 30" align="center">
				<td><s:label cssClass="text_label" value="手机号："></s:label></td>
				<td><s:textfield name="usernum" size="30" cssClass="text_label"></s:textfield></td>
				<td width="50" style="color: red; font-family: 楷体;"><s:label
						value="*必填"></s:label></td>
			</tr>
			<tr style="height: 30" align="center">
				<td><s:label cssClass="text_label" value="创建昵称："></s:label></td>
				<td><s:textfield name="userName" size="30"
						cssClass="text_label"></s:textfield></td>
				<td width="50" style="color: red; font-family: 楷体;"><s:label
						value="*必填"></s:label></td>
			</tr>
			<tr style="height: 30" align="center">
				<td><s:label cssClass="text_label" value="创建密码："></s:label></td>
				<td><s:password name="password" size="30" cssClass="text_label"></s:password></td>
				<td width="50" style="color: red; font-family: 楷体;"><s:label
						value="*必填"></s:label></td>
			</tr>
			<tr style="height: 30" align="center">
				<td><s:label cssClass="text_label" value="确认密码："></s:label></td>
				<td><s:password name="reuserpwd" size="30"
						cssClass="text_label"></s:password></td>
				<td width="50" style="color: red; font-family: 楷体;"><s:label
						value="*必填"></s:label></td>
			</tr>
			<tr style="height: 50" align="center">
				<td></td>
				<td><s:submit cssClass="submit" value="注册"></s:submit>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<s:reset cssClass="submit" value="取消"></s:reset></td>
			</tr>
		</table>
	</s:form>
</body>
</html>
