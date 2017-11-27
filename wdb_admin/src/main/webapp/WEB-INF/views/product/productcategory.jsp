<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://zlzkj.com/tags" prefix="z" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>微你而生后台管理系统</title>

<link type="text/css" rel="stylesheet" href="${__static__}/css/main.css" >
<link type="text/css" rel="stylesheet" href="${__static__}/css/select.css" >
 <script type="text/javascript" src="${__static__}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${__static__}/js/select-ui.min.js"></script>
<script>
		var ZLZ = window.ZLZ = {
			"ROOT"   : "${__root__}",
			"URL"    : "${__url__}",
			"STATIC" : "${__static__}"
		}
	</script>
<!-- <script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script> -->

 <script type="text/javascript">
$(document).ready(function() {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
	
});
</script> 
  
</head>

<body>

<div class="top"></div>
<div id="header">
 <jsp:include page="../public/top.jsp"></jsp:include> 
</div>
<div id="content">
	<!-- <div class="left_menu"> -->
		
  <jsp:include page="../public/left.jsp"></jsp:include>
		<!-- </div> -->
		<div class="m-right">
			<div class="right-nav">
			</div>
			<div class="main">
			
			
			<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="JavaScript:void(0)">首页</a></li>
    <li><a href="JavaScript:void(0)">商品管理</a></li>
    <li><a href="JavaScript:void(0)">商品属性</a></li>
    </ul>
    </div>
    
   <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="${__static__}/images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="${__static__}/images/t02.png" /></span>修改</li>
        <li><span><img src="${__static__}/images/t03.png" /></span>删除</li>
        <li><span><img src="${__static__}/images/t04.png" /></span>统计</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="${__static__}/images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    
    <ul class="classlist">
    <c:forEach items="${page.data}" var="product">
    <li>
    <span><img src="${product.ImageUrls }" style="height:125px;"/></span>
    <div class="lright">
    <h2>${product.ProductName }</h2>
    <p>商品描述：${product.ProductDescription }<br>价格：${product.QuotoPrice}<br>库存：${product.QuantityOnHand }</p>
    <a class="enter"  href="${pageContext.request.contextPath }/product/productedit.action?productnumber=${product.ProductNumber }">开始编辑</a>
    <p><a class="enter" href="javascript:if(confirm('确实要删除该产品吗?'))location='${pageContext.request.contextPath }/product/productdelete.action?productnumber=${product.ProductNumber }&&categoryid=${product.CategoryId}'">删除该项</a></p>
    </div>
    </li>
    <c:set var="categoryid" value="${product.CategoryId}"/>
    </c:forEach>
    <li>
    <span><img src="${__static__}/images/addproduct.png" style="height:125px;"/></span>
    <div class="lright">
    <h2>商品名称：待编辑</h2>
    <p>商品描述：待编辑<br>价格：待编辑<br>库存：待编辑</p>
    <a class="enter"" href="${pageContext.request.contextPath }/product/productadd.action?categoryid=<c:out value="${categoryid}"/>">添加商品</a>
    </div>
    </li>
    </ul>
    <div class="clear"></div>
   <div class="pagin">
        <ul class="paginList" >
       
           <jsp:include page="../public/page.jsp">
                <jsp:param value="${pageContext.request.contextPath }/product/productcategory.action" name="url"/>
                <jsp:param value="${strParam}" name="paramlist"/>
                <jsp:param value="目前还没有内容..." name="tip"/>
               
            </jsp:include>
       
        </ul>
    </div>
    
    
  
    
    
    
    </div>
    
     <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script> 
			
	
 </div>
			</div>

		</div>
		
		
<div class="bottom"></div>
<div id="footer"><p>微贷吧后台管理系统</p></div>

<!-- <script>navList(12);</script> -->

</body>
</html>
