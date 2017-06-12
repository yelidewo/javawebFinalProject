<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path_left = request.getContextPath();
	String basePath_left = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path_left + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.js"></script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	list-style: none;
}

body {
	background: #fff;
	font: normal 12px/22px 楷体;
}

img {
	border: 0;
}

a {
	text-decoration: none;
	color: #333;
}

a:hover {
	color: #1974A1;
	text-decoration: underline;
}

.banner {
	padding-left: 5px;
	background: #fff;
	width: 0;
}

#nav {
	position: relative;
	z-index: 1;
	width: 250px;
	background: #F1F1F1;
}

#nav .mainCate {
	position: relative;
	padding: 10px 20px;
	zoom: 1;
	background: #ffd3e0;
}

#nav .mainIndex {
	position: relative;
	padding: 10px 20px;
	zoom: 1;
	background: #ffffff;
}

#nav .evenLeval {
	background: #fff;
}

#nav h3 {
	height: 28px;
	line-height: 28px;
	font-size: 16px;
	overflow: hidden;
}

#nav h3 span {
	width: 18px;
	height: 15px;
	line-height: 32px;
	font-weight: 200;
	font-size: 12px;
	float: right;
}

#nav p {
	height: 20px;
	line-height: 20px;
}

#nav p a {
	margin-right: 10px;
	color: #666;
}

#nav .subCate {
	display: none;
	background: url(images/nav_div_bg.jpg) 0 0 repeat-y #fff;
	position: absolute;
	left: 250px;
	top: 0;
	width: 230px;
	padding: 0 0 20px 20px;
	color: #333;
}

#nav .subCate h4 {
	height: 26px;
	line-height: 26px;
	margin: 0 0 10px 0;
	border-bottom: 1px solid #ccc;
	font-size: 16px;
	color: #333;
}

#nav .subCate ul {
	width: 230px;
	float: left;
	overflow: hidden;
	padding-top: 20px;
}

#nav .subCate li {
	width: 230px;
	float: left;
	display: inline;
}

#nav .subCate li a {
	display: block;
	float: left;
	padding: 0 5px;
	line-height: 25px;
	color: #666;
	word-break: keep-all;
	white-space: nowrap;
}

#nav .subCate #sub-ul-1 {
	width: 100%;
}

#nav .on {
	background: #ff5990;
	color: #fff;
	font-weight: bold;
	font-family: 楷体;
}

#nav .on h3 a,#nav .on p a {
	color: #fff;
}

#nav .on .subCate {
	display: block !important;
}

#mainCate-4 .subCate {
	top: -100px
}

#mainCate-5 .subCate {
	top: -164px;
}

#mainCate-6 .subCate {
	top: auto;
	bottom: 0;
}
</style>
<head>
<base href="<%=basePath_left%>">

<title>My JSP 'manager_left.jsp' starting page</title>

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
	<div class="banner" style="margin-left:20px">
		<ul id="nav">
			<li class="mainIndex"><h2>
					<a href="adminindex.jsp">首页</a>
				</h2></li>
			<li id="mainCate-1" class="mainCate">
				<h3>
					<span>&gt;</span>用户管理</a>
				</h3>
				<p>
					<a href="searchuser.jsp">查询用户</a><a href="regist.jsp">添加用户</a>
				</p>
				<p>
					<a href="searchuser.jsp">修改用户</a><a href="searchuser.jsp">删除用户</a>
				</p>
			</li>
			<li id="mainCate-2" class="mainCate evenLeval">
				<h3>
					<span>&gt;</span>商品管理</a>
				</h3>
				<p>
					<a href="goodstype_doSearchByType.action">查找商品类</a><a
						href="goods_doSearchAllGoods.action">查找商品详情</a>
				</p>
				<p>
					<a href="addGoodsType.jsp">添加商品类</a><a
						href="goods_doAddGood.action">添加商品详情</a>
				</p>
				<p>
					<a href="goodstype_doSearchDeleteGoodsType.action">删除商品类</a><a
						href="goods_doDeleteGoods.action">删除商品详情</a>
				</p>
			</li>
			<li id="mainCate-3" class="mainCate">
				<h3>
					<span>&gt;</span>订单管理</a>
				</h3>
				<p>
					<a href="order_doSearchAllOrder.action">修改订单状态</a>
				</p>
			</li>
		</ul>
	</div>
	<script type="text/javascript">
		jQuery("#nav").slide({
			type : "menu",
			titCell : ".mainCate",
			targetCell : ".subCate",
			delayTime : 0,
			triggerTime : 0,
			defaultPlay : false,
			returnDefault : true
		});
	</script>
</body>
</html>
