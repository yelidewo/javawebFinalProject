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

.error {
	color: red;
	font-family: 楷体;
	font-weight: bold;
}

a {
	text-decoration: underline;
	color: #ff5990;
	font-family: 楷体;
	font-weight: bold;
	font-family: 18;
}
</style>
<base href="<%=basePath%>">

<title>忘记密码</title>

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
	<s:form action="user_toUpdatePwdNew.action" theme="simple">
		<table>
			<tr>
				<td colspan="2"><%@ include file="top.jsp"%></td>
			</tr>
			<tr>
				<td style="width: 400;" align="right"><img
					src="img/login_below/login_below_img.png"></td>
				<td style="width: 380;height: 393;" align="left">
					<table>
						<tr>
							<td colspan="2"><s:fielderror cssStyle="error"></s:fielderror>
								<s:actionerror cssStyle="error" /> <br></td>
						</tr>
						<tr>
							<td colspan="2"
								style="height: 40; font-family: 楷体; font-size:larger; font-weight: bold; color: #ff5990"
								align="center"><s:text name="忘记密码了么？改吧！"></s:text></td>
						</tr>
						<tr>
							<td><s:fielderror cssStyle="error"></s:fielderror> <s:actionerror
									cssStyle="error" /> <br /></td>
						</tr>
						<tr style="height: 30" align="center">
							<td><s:label cssClass="text_label" value="用户名："></s:label></td>
							<td><s:textfield name="userName" size="20"
									cssClass="text_label" value="%{admin.userName}"
									readonly="readonly"></s:textfield></td>
						</tr>
						<tr style="height: 30" align="center">
							<td><s:label cssClass="text_label" value="密码："></s:label></td>
							<td><s:password name="password" size="20"
									cssClass="text_label"></s:password></td>
						</tr>
						<tr style="height: 30" align="center">
							<td><s:label cssClass="text_label" value="确认密码："></s:label></td>
							<td><s:password name="reuserpwd" size="20"
									cssClass="text_label"></s:password></td>
						</tr>
						<tr style="height: 50" align="center">
							<td></td>
							<td><s:submit cssClass="submit" value="提交"></s:submit>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:reset cssClass="submit"
									value="重置"></s:reset></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</s:form>
</body>
</html>
