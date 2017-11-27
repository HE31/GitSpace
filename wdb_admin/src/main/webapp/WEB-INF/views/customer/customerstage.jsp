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
     <li><a href="${pageContext.request.contextPath }/customer/customerorder.action?customerid=${wdbcustomers.customerid}">${wdbcustomers.custnick }的订单列表</a></li>
    <li><a href="JavaScript:void(0)">还款明细 订单号：${WdbOrders.ordernumber }</a></li>
    </ul>
    </div>
  <table class="filetable">
    
    <thead>
          <tr>
          <th width="20%"></th>
        <th width="20%"></th>
         <th width="20%">已还款记录</th>
       
         <th width="20%"></th>
         
        <th width="20%"></th>
      
       <!--  <th width="5%"></th> -->
        </tr>    	
    </thead>
    
    <tbody>
     <tr>
     <td>*</td>
     <td>还款开始时间</td>
     <td>还款截止时间</td>
     <td>本期还款金额</td>
     <td>实际还款时间</td>   
       </tr>
     <c:choose>
    <c:when test="${!empty customerstage  }"> 
     <c:set var="count" value="${0 }"></c:set>
    <c:forEach items="${customerstage }" var="custstage">
    <c:if test="${custstage.RepayStatus eq 1 }">
    <c:set var="count" value="${count+1 }"></c:set>
    	<tr>
    	<td>${count }</td>
        <td>${custstage.BeginDate }</td>
         <td>${custstage.EndDate }</td>
          <td>￥${custstage.money }
          <c:if test="${custstage.Time eq 0 }">(首付)</c:if>
          </td>
        <td>${custstage.PayDate }</td>
        </tr>
        </c:if>
        </c:forEach>
         <c:if test="${count eq 0 }"> <tr><td>无</td><td>无</td><td>无</td><td>无</td><td>无</td></tr></c:if>
        <tr><td>&nbsp;</td></tr>
       </c:when>
       <c:otherwise>
      <tr><td>无</td><td>无</td><td>无</td><td>无</td><td>无</td></tr>
     <br>
       </c:otherwise>
       </c:choose> 
    </tbody>
    </table>
		
		
		
	<table class="filetable">
    
    <thead>
          <tr>
          <th width="20%"></th>
        <th width="20%"></th>
         <th width="20%">未还款记录</th>
       
         <th width="20%"></th>
         
        <th width="20%"></th>
      
       <!--  <th width="5%"></th> -->
        </tr>    	
    </thead>
    
    <tbody>
    
    <tr>
     <td>*</td>
     <td>还款开始时间</td>
     <td>还款截止时间</td>
     <td>本期还款金额</td>   
     <td></td>
       </tr>
     <c:choose>
 
    <c:when test="${!empty customerstage  }"> 
      <c:set var="count1" value="${0 }"></c:set>
    <c:forEach items="${customerstage }" var="custstage">
    <c:if test="${custstage.RepayStatus eq 0 }">
    <c:set var="count1" value="${count1+1 }"></c:set>
    	<tr>
    	<td>${count1 }</td>
        <td>${custstage.BeginDate }</td>
         <td>${custstage.EndDate }</td>
        <td>￥${custstage.money }</td>
         <td></td>
        </tr>
        </c:if>
        </c:forEach>
           <c:if test="${count1 eq 0 }"> <tr><td>无</td><td>无</td><td>无</td><td>无</td><td>无</td></tr></c:if>
        <tr><td>&nbsp;</td></tr>
       </c:when>
       <c:otherwise>
      <tr><td>无</td><td>无</td><td>无</td><td>无</td><td></td></tr>
     <br>
       </c:otherwise>
       </c:choose> 
    </tbody>
    </table>
		
		
		
<div class="bottom"></div>
<div id="footer"><p>微贷吧后台管理系统</p></div>

<!-- <script>navList(12);</script> -->

</body>
</html>
