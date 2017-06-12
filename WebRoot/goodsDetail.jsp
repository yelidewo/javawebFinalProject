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
	font-size: 32;
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
				height="631" alt="" src="upload/<s:property value="img"/>">
			</td>
			<td align="left" width="650" style="padding-top: 30">
				<table>
					<tr>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;">商品ID：</td>
						<td style="font-family: 楷体; font-weight: bold; font-size: 32; "><s:property
								value="id" /><br />
						</td>
					</tr>
					<tr>
						<td height="9"></td>
					</tr>
					<tr>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;">商品名称：</td>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;"
							align="left"><s:property value="goodsName" /> <br />
						</td>
					</tr>
					<tr>
						<td height="9"></td>
					</tr>
					<tr>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;">商品类别：</td>
						<td
							style="font-family: 楷体; font-weight: bold; font-size: 28; color: #ff5990"
							width="190" align="left"><s:if test="goodsType.id==1">
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
					</s:elseif><br />
						</td>
					</tr>
					<tr>
						<td height="9"></td>
					</tr>
					<tr>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;">商品价格：</td>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;"
							width="190" align="left"><s:property value="price" /> <br />
						</td>
					</tr>
					<tr>
						<td height="9"></td>
					</tr>
					<tr>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;">商品折扣：</td>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;"
							width="190" align="left"><s:property value="discount" /> <br />
						</td>
					</tr>
					<tr>
						<td height="9"></td>
					</tr>
					<tr>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;">商品总量：</td>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;"
							width="190" align="left"><s:property value="sumCount" /> <br />
						</td>
					</tr>
					<tr>
						<td height="9"></td>
					</tr>
					<tr>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;">上架时间：</td>
						<td style="font-family: 楷体; font-weight: bold; font-size: 24;"
							width="190" align="left"><s:property value="createTime" />
							<br />
						</td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>
</html>
