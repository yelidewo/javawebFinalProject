<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path_top = request.getContextPath();
	String basePath_top = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path_top + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script type="text/javascript">
	
</script>
<style type="text/css">
.textfile {
	font-family: 楷体;
	font-weight: bold;
	color: #ff5990;
	size: 50;
	padding: 5;
	border-width: 0;
}

.textfile_1 {
	font-family: 楷体;
	font-weight: bold;
	border-width: 0;
	font-size: 14;
	size: 4;
}

.textfile_2 {
	font-family: 楷体;
	font-weight: bold;
	border-width: 0;
	font-size: 14;
	background-color: transparent;
}

.submit {
	font-family: 楷体;
	font-weight: bold;
	color: #ff5990;
	border-width: 0;
	height: 30;
	width: 36;
}

a {
	text-decoration: none;
	color: #333;
}

a:hover {
	color: #1974A1;
	text-decoration: none;
}

.div {
	background-image: url("img/toplogo/toplogo.png");
}
</style>
<head>
<base href="<%=basePath_top%>">

<title>My JSP 'top.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0">
	<table id="__01" width="1367" height="211" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td colspan="5"><img src="img/toplogo/toplogo_01.gif"
				width="1367" height="18" alt=""></td>
		</tr>
		<tr>
			<td colspan="2" rowspan="2"><img
				src="img/toplogo/toplogo_02.gif" width="906" height="87" alt=""></td>

			<td colspan="2" width="286" background="img/toplogo/toplogo_03.gif">
				<s:form theme="simple" action="user_doIntent.action"
					value="#session.userName">
					<table align="center">
						<tr>
							<td width="34" class="textfile_1"><a href="init.action">首页</a></td>
							<s:if test="#session.id==null">
								<td height="10"><s:submit cssClass="textfile_2"
										value="登录" id="login"></s:submit></td>
							</s:if>
							<s:if test="#session.id!=null">
								<td width="31"><s:property value="#session.userName" /></td>
							</s:if>
							<s:if test="#session.id!=null">
								<td width="68" class="textfile_1"><a
									href="user_doExit.action">退出登录</a></td>
							</s:if>
							<s:if test="#session.id==null">
								<td width="34" class="textfile_1"><a href="regist.jsp">注册</a></td>
							</s:if>
							<s:if test="#session.id!=null">
								<td width="51" class="textfile_1"><a
									href="cart_doSearchCart.action">购物车</a></td>
							</s:if>
							<s:if test="#session.id==null">
								<td width="51" class="textfile_1"><a href="login.jsp">购物车</a></td>
							</s:if>
							<s:if test="#session.id!=null">
								<td width="68" class="textfile_1"><a
									href="order_doSearchOrder.action">我的订单</a></td>
							</s:if>
							<s:if test="#session.id==null">
								<td width="68" class="textfile_1"><a href="login.jsp">我的订单</a></td>
							</s:if>
						</tr>
					</table>
				</s:form>
			</td>

			<td rowspan="4"><img src="img/toplogo/toplogo_04.gif"
				width="175" height="192" alt=""></td>
		</tr>
		<tr>
			<td colspan="2"><img src="img/toplogo/toplogo_05.gif"
				width="286" height="45" alt=""></td>
		</tr>
		<tr>
			<td rowspan="2"><img src="img/toplogo/toplogo_06.gif"
				width="714" height="105" alt=""></td>
			<s:form theme="simple" action="goods_doSearch.action">
				<td colspan="2" width="351" height="36"><s:textfield
						name="keyword" cssClass="textfile"></s:textfield> <s:submit
						type="image" src="img/toplogo/toplogo_10.png" cssClass="submit"></s:submit></td>
			</s:form>
			<td rowspan="2"><img src="img/toplogo/toplogo_08.gif"
				width="127" height="105" alt=""></td>
		</tr>
		<tr>
			<td colspan="2"><img src="img/toplogo/toplogo_09.gif"
				width="351" height="66" alt=""></td>
		</tr>
		<tr>
			<td><img src="images/jgf.gif" width="714" height="1" alt=""></td>
			<td><img src="images/jgf.gif" width="192" height="1" alt=""></td>
			<td><img src="images/jgf.gif" width="159" height="1" alt=""></td>
			<td><img src="images/jgf.gif" width="127" height="1" alt=""></td>
			<td><img src="images/jgf.gif" width="175" height="1" alt=""></td>
		</tr>
	</table>
</body>
</html>
