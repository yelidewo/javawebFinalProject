<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path_left_spclass = request.getContextPath();
	String basePath_left_spclass = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path_left_spclass + "/";
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
	padding-top: 5px;
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
<base href="<%=basePath_left_spclass%>">
<title>分类</title>
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
					<a href="index.jsp">首页</a>
				</h2></li>
			<li id="mainCate-1" class="mainCate">
				<h3>
					<span>&gt;</span><a href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">衣服</a>
				</h3>
				<p>
					<a
						href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">冬季热卖</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">暖冬美裙</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">呢外套</a>
				</p>
				<p>
					<a
						href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">毛衣</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">加绒卫衣</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">打底裤</a>
				</p>
				<div class="subCate" style="display: none;">
					<ul id="sub-ul-1">
						<h4>新品发布</h4>
						<li><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">羽绒服</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">棉衣</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1"
								style="color: #ff5990;">毛呢外套</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">暖冬美裙</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">显瘦裤子</a></span>
							<span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1"
								class="sub_width">长款外套</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">毛线裙</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">连衣裙</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">毛呢裙</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">小脚裤</a></span><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">裙子套装</a></span></li>
					</ul>
					<ul id="sub-ul-2">
						<h4>本季热卖</h4>
						<li><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">打底衫</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">长袖T恤</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1"
								style="color: #ff5990;">韩范美裙</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">保暖外套</a></span><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1"
								class="sub_width">哈伦裤</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">长袖连衣裙</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">针织裙</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">牛仔裤</a></span><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">半身裙</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1">套装</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=1&pageNum=1"
								style="color: #ff5990;">珊瑚绒睡衣</a></span></li>
					</ul>
				</div>
			</li>
			<li id="mainCate-2" class="mainCate evenLeval">
				<h3>
					<span>&gt;</span><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">鞋子</a>
				</h3>
				<p>
					<a
						href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">暖冬推荐</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">雪地靴</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">短靴</a>
				</p>
				<p>
					<a
						href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">运动</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">加绒鞋</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">及踝靴</a>
				</p>
				<div class="subCate" style="display: none;">
					<ul id="sub-ul-1">
						<h4>当季热卖</h4>
						<li><span><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="2"/>"
								style="color: #ff5990;">热卖排行榜</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">雪地靴</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">短靴</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">长靴</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">运动鞋</a></span>
							<span><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="2"/>"
								class="sub_width">马丁鞋</a><a href="shoe.jsp">高跟短靴</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">中筒靴</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">及踝靴</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">冬季必备</a></span><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">粗跟短靴</a></span></li>
					</ul>
					<ul id="sub-ul-2">
						<h4>经典直击</h4>
						<li><span><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="2"/>"
								style="color: #ff5990;">豆豆鞋</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">平底鞋</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">坡跟鞋</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">机车靴</a></span><span><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="2"/>"
								class="sub_width">骑士靴</a><a href="shoe.jsp">尖头鞋</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">流苏靴</a><a
								href="shoe.jsp">松糕鞋</a></span><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=2&pageNum=1">板鞋</a><a
								href="shoe.jsp">牛津鞋</a><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="2"/>"
								style="color: #ff5990;">圆头鞋</a></span></li>
					</ul>
				</div>
			</li>
			<li id="mainCate-3" class="mainCate">
				<h3>
					<span>&gt;</span><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">包包</a>
				</h3>
				<p>
					<a
						href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">单肩斜挎</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">双肩</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">新品</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">爆款</a>
				</p>
				<p>
					<a
						href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">手提</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">大包</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">爱精品</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">钱包</a>
				</p>
				<div class="subCate" style="display: none;">
					<ul id="sub-ul-1">
						<h4>款式</h4>
						<li><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">双肩包</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">单肩包</a>
								<a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">斜挎包</a>
								<a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">手提包</a>
								<a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1"></a></span>
							<span><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="3"/>"
								class="sub_width">钱包</a><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="3"/>"
								style="color: #ff5990;">旅行箱</a> <a href="bag.jsp">手拿包</a> <a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">零钱包</a>
								<a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">电脑包</a></span><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">化妆收纳</a></span></li>
					</ul>
					<ul id="sub-ul-2">
						<h4>流行</h4>
						<li><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">链条包</a><a
								href="">贝壳包</a><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="3"/>"
								style="color: #ff5990;">方形包</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">水桶包</a></span><span><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="3"/>"
								class="sub_width">邮差包</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">翅膀宝</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">卡通包</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">磨砂包</a></span><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">子母包</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">流苏包</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=3&pageNum=1">毛绒包</a></span></li>
					</ul>
				</div>
			</li>
			<li id="mainCate-4" class="mainCate evenLeval">
				<h3>
					<span>&gt;</span><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">配饰</a>
				</h3>
				<p>
					<a
						href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">围巾</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">帽子</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">项链</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">手机壳</a>
				</p>
				<p>
					<a
						href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">耳钉</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">手链</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">发箍</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">丝巾</a>
				</p>
				<div class="subCate" style="display: none;">
					<ul id="sub-ul-1">
						<h4>爱美首饰</h4>
						<li><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">戒指</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">锁骨链</a><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="4"/>"
								style="color: #ff5990;">耳钉</a><a href="ring.jsp">毛衣链</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">手镯</a></span>
							<span><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="4"/>"
								class="sub_width">手链</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">手表</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">手表链</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">脚链</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">项链</a></span><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">耳环</a></span></li>
					</ul>
					<ul id="sub-ul-2">
						<h4>加分配件</h4>
						<li><span><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="4"/>"
								style="color: #ff5990;">手机壳</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">短袜</a><a
								href="">腰带</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">晴雨伞</a></span><span><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="4"/>"
								class="sub_width">丝袜</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">墨镜</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">遮阳伞</a><a
								href="ring.jsp">耳罩</a></span><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">口罩</a><a
								href="ring.jsp">发箍</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=4&pageNum=1">刘海夹</a></span></li>
					</ul>
				</div>
			</li>
			<li id="mainCate-5" class="mainCate">
				<h3>
					<span>&gt;</span><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">护肤</a>
				</h3>
				<p>
					<a
						href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">清洁</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">滋润</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">保湿</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">身体</a>
				</p>
				<p>
					<a
						href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">深层清洁</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">精华精油</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">卸妆</a>
				</p>
				<div class="subCate" style="display: none;">
					<ul id="sub-ul-1">
						<h4>当季护理</h4>
						<li><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">防干燥</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">镇定舒缓</a><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="5"/>"
								style="color: #ff5990;">滋润保湿</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">深层修护</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">毛孔粗大</a></span>
							<span><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="5"/>"
								class="sub_width">敏感肌</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">出油肌</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">冬季修复</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">毛呢裙</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">红血丝</a></span><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">痘痘肌</a></span></li>
					</ul>
					<ul id="sub-ul-2">
						<h4>新品上市</h4>
						<li><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">卸妆</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">清洁</a><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="5"/>"
								style="color: #ff5990;">爽肤水</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">面膜</a></span><span><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="5"/>"
								class="sub_width">眼唇护理</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">保湿</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">乳霜</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">面部护理</a></span><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">身体滋润</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=5&pageNum=1">局部护理</a><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="5"/>"
								style="color: #ff5990;">身体护理</a></span></li>
					</ul>
				</div>
			</li>
			<li id="mainCate-6" class="mainCate evenLeval">
				<h3>
					<span>&gt;</span><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">彩妆</a>
				</h3>
				<p>
					<a
						href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">年末底妆</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">工具</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">眼唇</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">香体</a>
				</p>
				<p>
					<a
						href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">底妆</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">粉底</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">修容</a><a
						href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">美甲</a>
				</p>
				<div class="subCate" style="display: none;">
					<ul id="sub-ul-1">
						<h4>我爱</h4>
						<li><span><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">爱老店</a><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="6"/>"
								style="color: #ff5990;">爱精品</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">爱品牌</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">爱颜色</a></span></li>
					</ul>
					<ul id="sub-ul-2">
						<h4>本季热卖</h4>
						<li><span><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="6"/>"
								style="color: #ff5990;">口红唇彩</a><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="6"/>"
								style="color: #ff5990;">BB霜</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">香水</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">彩妆套装</a></span><span><a
								href="goods_doSearchByType.action?goodsType.id=<s:property value="6"/>"
								class="sub_width">眼线</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">遮瑕</a><a
								href="goods_doSearchGoodsPaging.action?goodsType.id=6&pageNum=1">美甲</a></span></li>
					</ul>
				</div>
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
