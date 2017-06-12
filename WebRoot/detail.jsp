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
	color: white;
	font-family: 楷体;
	font-size: 24;
	font-weight: bold;
}
</style>
<base href="<%=basePath%>">

<title>商品详情页面</title>

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
	<table align="center">
		<tr>
			<td align="center" width="650" rowspan="2"><img width="422"
				height="631" alt="" src="upload/<s:property value="img"/>"></td>
			<td align="left" width="650" style="padding-top: 30">
				<table>
					<tr>
						<td style="font-family: 楷体; font-weight: bold; font-size: 32; "
							colspan="2"><s:property value="goodsName" /><br /></td>
					</tr>
					<tr>
						<td height="19"></td>
					</tr>
					<tr>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;"
							width="190">原价：</td>
						<td
							style="font-family: 楷体; font-weight: bold; font-size: 24; text-decoration: line-through;"
							align="left"><s:property value="price" /> <br /></td>
					</tr>
					<tr>
						<td height="9"></td>
					</tr>
					<tr>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;">现价：</td>
						<td
							style="font-family: 楷体; font-weight: bold; font-size: 28; color: #ff5990"
							align="left">¥<s:property value="discount" /> <br />
						</td>
					</tr>
					<tr>
						<td height="9"></td>
					</tr>
					<tr>
						<td colspan="2"><img alt="" src="images/01.png"></td>
					</tr>
					<tr>
						<td height="9"></td>
					</tr>
					<tr>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;">销量：</td>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;"
							align="left"><s:property value="sellCount" /> <br /></td>
					</tr>
					<tr>
						<td height="9"></td>
					</tr>
					<tr>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;">类别：</td>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;"
							align="left"><s:property value="goodsType.typeName" /> <br /></td>
					</tr>
					<tr>
						<td height="9"></td>
					</tr>
					<tr>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;">详情：</td>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;"
							align="left"><s:property value="goodsDesc" /> <br /></td>
					</tr>
					<tr>
						<td height="9"></td>
					</tr>
					<tr>
						<td></td>
						<td align="center"><table bgcolor="#ff5990">
								<tr>
									<s:if test="#session.id==null">
									<td><a href="login.jsp">放入购物车</a></td></s:if>
									<s:if test="#session.id!=null">
									<td><a
										href="cart_doAddToCart.action?goodsid=<s:property value="id" />&price=<s:property value="price"/>">放入购物车</a>
									</td></s:if>
								</tr>
							</table></td>
					<tr>
						<td height="9"></td>
					</tr>
					<tr>
						<td colspan="2"><img alt="" src="images/02.png"></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

</body>
</html>
