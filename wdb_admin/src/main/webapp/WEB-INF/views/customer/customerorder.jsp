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
<title>大学生信用生活服务平台后台管理系统</title>

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
    <li><a href="${pageContext.request.contextPath }/customer/customerlist.action">用户管理</a></li>
    <li><a href="JavaScript:void(0)">${custnick }的订单列表</a></li>
    </ul>
    </div>
  <table class="filetable">
    
    <thead>
    	<tr>
        <th width="25%">名称</th>
         <th width="10%">订单编号</th>
        <th width="13%">下单日期</th>
         <th width="9%">实付款</th>
          <th width="7%">分期次数</th>
        <th width="10%">订单状态</th>
        <th width="6%">操作</th>
        <th width="20%"></th>
        </tr>    	
    </thead>
    
    <tbody>
     <c:choose>
    <c:when test="${!empty page.data  }">
    <c:forEach items="${page.data }" var="custorder">
    	<tr>
        <td><img src="${custorder.ImageUrls }" style="width:24px;height:24px;"/>${custorder.ProductName }</td>
         <td>${custorder.OrderNumber }</td>
        <td>${custorder.OrderDate }</td>
        <td>￥${custorder.QuotoPrice }</td>
        <td>${custorder.Times }期</td>
        <td>  <c:choose>
        <c:when test="${custorder.OrderStatus eq 0 }"> <a href="javascript:if(confirm('您确认要执行该操作吗?'))location='${pageContext.request.contextPath }/order/statusChange.action?ordernumber=${custorder.OrderNumber }&&orderstatus=1'" class="tablelink "> 确认发货</a></c:when>
        <c:when test="${custorder.OrderStatus eq 1 }"><a href="#" class="tablelink click"> 查看物流</a></c:when>
        <c:when test="${custorder.OrderStatus eq 2 }"><a href="javascript:if(confirm('您确认要执行该操作吗?'))location='${pageContext.request.contextPath }/order/statusChange.action?ordernumber=${custorder.OrderNumber }&&orderstatus=3'" class="tablelink "> 确认收款</a></c:when>
        <c:otherwise>订单完成</c:otherwise>
        </c:choose></td>
        <td class="tdlast"><a href="${pageContext.request.contextPath }/customer/customerstage.action?ordernumber=${custorder.OrderNumber }&&customerid=${custorder.CustomerId}" class="tablelink "> 还款明细</a></td>
        <td></td>
        </tr>
        </c:forEach>
       </c:when>
       <c:otherwise>
       <td>该用户暂无任何订单记录</td>
       </c:otherwise>
       </c:choose>
    
    </tbody>
    
    
    
    
    </table>
		<div class="pagin">
        <ul class="paginList">
         <jsp:include page="../public/page.jsp">
                <jsp:param value="${pageContext.request.contextPath }/customer/customerorder.action" name="url"/>
                <jsp:param value="${strParam}" name="paramlist"/>
                <jsp:param value="目前还没有内容..." name="tip"/>   
            </jsp:include>
        </ul>
    </div>
		
<div class="bottom"></div>
<div id="footer"><p>大学生信用生活服务平台后台管理系统</p></div>

<!-- <script>navList(12);</script> -->

</body>
</html>
