<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎光临我的购物网站</title>
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
  <h2>欢迎光临我的购物网站</h2>
  <a href="adminindex.jsp">管理员</a>
  <a href="cart_doSearchCart.action">我的购物车</a>
  <a href="order_doSearchOrder.action">我的订单</a>
  <hr/>
  
  
  <table border="1" width="100%" height="100%">
  	<tr>
  		<td rowspan="2" valign="top">
  		类别列表<br/><br/>
  		<s:iterator value="#typeList">
  			<p>
  				<a href="goods_doSearchByType.action?goodsType.id=<s:property value="id"/>"><s:property value="typeName"/></a>
  			</p>
  		</s:iterator>
  		</td>
  		<td>
  		<s:form action="goods_doSearch" theme="simple">
  		<s:textfield name="keyword" size="50"></s:textfield>
  		<s:submit value="搜索"></s:submit>
  		</s:form>
  		</td>  		
  	</tr>
  	<tr>
  		<td valign="top">
  		<table>
   		<tr>
   			<s:iterator value="goodsList" status="st">
   				<td>
   					<a href="goods_toDetail.action?id=<s:property value="id"/>"><img alt="" src="upload/<s:property value="img"/>" /></a><br/>
   					<a href="goods_toDetail.action?id=<s:property value="id"/>"><s:property value="goodsName"/></a><br/>
   					<s:property value="price"/>元
   				</td>
   				<s:if test="#st.count%5==0">
   					</tr><tr>
   				</s:if>
   			</s:iterator>
   		</tr>
   		<tr>
   		<td><%@ include file="sellrank.jsp" %></td>
   		</tr>
   </table>
   <a href="goods_doSearch.action?keyword=${keyword}&pageNum=${pageNum-1}">上一页</a>&nbsp;&nbsp;<a href="goods_doSearch.action?keyword=${keyword}&pageNum=${pageNum+1}">下一页</a>
  		</td>
  	</tr>
  </table>
  
   
  </body>
</html>
