<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path_indexshow = request.getContextPath();
String basePath_indexshow = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path_indexshow+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath_indexshow%>">
    
    <title>My JSP 'indexshow.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <link href="css/indexshow.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/koala.min.1.5.js"></script>
</head>
<body>
<div id="fsD1" class="focus" style="margin-left:270px">  
    <div id="D1pic1" class="fPic">  
        <div class="fcon" style="display: none;">
            <a target="_blank" href=""><img src="img/indexshow/01.jpg" style="opacity: 1; "></a>
        </div>
        
        <div class="fcon" style="display: none;">
            <a target="_blank" href=""><img src="img/indexshow/02.jpg" style="opacity: 1; "></a>
        </div>
        
        <div class="fcon" style="display: none;">
            <a target="_blank" href=""><img src="img/indexshow/03.jpg" style="opacity: 1; "></a>
        </div>
        
        <div class="fcon" style="display: none;">
            <a target="_blank" href=""><img src="img/indexshow/04.jpg" style="opacity: 1; "></a>
        </div>    
    </div>
    <div class="fbg">  
    <div class="D1fBt" id="D1fBt">  
        <a href="javascript:void(0)" hidefocus="true" target="_self" class=""><i>1</i></a>  
        <a href="javascript:void(0)" hidefocus="true" target="_self" class=""><i>2</i></a>  
        <a href="javascript:void(0)" hidefocus="true" target="_self" class="current"><i>3</i></a>  
        <a href="javascript:void(0)" hidefocus="true" target="_self" class=""><i>4</i></a>  
    </div>  
    </div>  
    <span class="prev"></span>   
    <span class="next"></span>    
</div>  
<script type="text/javascript">
	Qfast.add('widgets', { path: "js/terminator2.2.min.js", type: "js", requires: ['fx'] });  
	Qfast(false, 'widgets', function () {
		K.tabs({
			id: 'fsD1',   //焦点图包裹id  
			conId: "D1pic1",  //** 大图域包裹id  
			tabId:"D1fBt",  
			tabTn:"a",
			conCn: '.fcon', //** 大图域配置class       
			auto: 1,   //自动播放 1或0
			effect: 'fade',   //效果配置
			eType: 'click', //** 鼠标事件
			pageBt:true,//是否有按钮切换页码
			bns: ['.prev', '.next'],//** 前后按钮配置class                          
			interval: 3000  //** 停顿时间  
		}) 
	})  
</script>
</body>
</html>
