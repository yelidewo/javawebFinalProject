<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path_login_below = request.getContextPath();
	String basePath_login_below = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path_login_below + "/";
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
	padding: 5;
}

a {
	text-decoration: underline;
	color: #ff5990;
	font-family: 楷体;
	font-weight: bold;
	font-family: 18;
}
</style>
<head>
<base href="<%=basePath_login_below%>">

<title>My JSP 'Login.jsp' starting page</title>

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
	<s:form theme="simple" action="user_doLogin.action" method="post">
		<table>
			<tr>
				<td style="width: 680;" align="right"><img
					src="img/login_below/login_below_img.png"></td>
				<td style="width: 380;height: 393;" align="center">
					<table>
						<tr>
							<td colspan="2"><s:fielderror
									cssStyle="color:red; font-family: 楷体; font-weight: bold;"></s:fielderror>
								<s:actionerror
									cssStyle="color:red; font-family: 楷体; font-weight: bold;" /> <br></td>
						</tr>
						<tr>
							<td
								style="height: 40; font-family: 楷体; font-size:larger; font-weight: bold; color: #ff5990"
								align="center"><s:text name="欢迎登录"></s:text></td>
						</tr>
						<tr style="height: 30" align="center">
							<td><s:label cssClass="text_label" value="用户名："></s:label></td>
							<td><s:textfield name="userName" size="20"
									cssClass="text_label"></s:textfield></td>
						</tr>
						<tr style="height: 30" align="center">
							<td><s:label cssClass="text_label" value="密码："></s:label></td>
							<td><s:password name="password" size="20"
									cssClass="text_label"></s:password></td>
						</tr>
						<tr style="height: 50" align="center">
							<td></td>
							<td><s:submit cssClass="submit" value="登录"></s:submit>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:reset cssClass="submit"
									value="取消"></s:reset></td>
						</tr>
						<tr>
							<td></td>
							<td align="right" height="90"><a href="forgetpwd.jsp">忘记密码</a></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</s:form>
</body>
</html>
