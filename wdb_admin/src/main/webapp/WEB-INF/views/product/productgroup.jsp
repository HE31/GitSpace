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
    <li><a href="JavaScript:void(0)">商品分类</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar1">
      
        </ul>
    
   <div class="vocation" style="margin-left:95px;">
    <select class="select1" onchange="window.location=this.value;" id="t1">
    <option value="${pageContext.request.contextPath }/product/productgroup.action?functionid=0">选择产品类型</option>
    <option value="${pageContext.request.contextPath }/product/productgroup.action?functionid=0">查看全部</option>
     <option value="${pageContext.request.contextPath }/product/productgroup.action?functionid=1">微分期</option>
     <option value="${pageContext.request.contextPath }/product/productgroup.action?functionid=2">微贷款</option>
    <option value="${pageContext.request.contextPath }/product/productgroup.action?functionid=3">微未来</option>
    <option value="${pageContext.request.contextPath }/product/productgroup.action?functionid=4">微拼团</option>
    <option value="${pageContext.request.contextPath }/product/productgroup.action?functionid=5">微生活</option>
    </select>
  <script>
       var i=${functionid}+0+1;
	 $("#t1").get(0).selectedIndex=i;
</script>
    </div>
 
   
   
   
   
     </div>  
    
    
    
    <ul class="imglist">
    <c:forEach items="${page.data}" var="product">
    <li>
    <span ><div align="center"><img src="${product.ImageUrls }" style="width:126px;" /></div></span>
    <h2><a href="${pageContext.request.contextPath }/product/productcategory.action?categoryid=${product.CategoryId }">${product.ProductName }</a></h2>
    <p><a href="${pageContext.request.contextPath }/product/productcategory.action?categoryid=${product.CategoryId }">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="javascript:if(confirm('确实要删除该内容吗?\n\n该操作将删除次商品下的所有子类产品！\n\n'))location='${pageContext.request.contextPath }/product/groupdelete.action?categoryid=${product.CategoryId}'">删除</a></p>
    </li>
    </c:forEach>
   <li>
    <span ><div align="center"><img src="${__static__}/images/addproduct.png" style="width:126px;" /></div></span>
    <h2><a href="${pageContext.request.contextPath }/product/productadd.action">&nbsp;</a></h2>
    <p><a href="${pageContext.request.contextPath }/product/productadd.action">添加商品</a></p>
    </li>
    </ul>
   
   <div class="pagin">
        <ul class="paginList">
       
           <jsp:include page="../public/page.jsp">
                <jsp:param value="${pageContext.request.contextPath }/product/productgroup.action" name="url"/>
                <jsp:param value="${strParam}" name="paramlist"/>
                <jsp:param value="目前还没有内容..." name="tip"/>
               
            </jsp:include>
       
        </ul>
    </div>
    
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="${__static__}/images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>        </div>
      </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
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
