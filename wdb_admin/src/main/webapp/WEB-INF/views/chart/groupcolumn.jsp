 
 <%@ page language="java" pageEncoding="UTF-8"%>
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://zlzkj.com/tags" prefix="z" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>”微“系列产品分期次数统计</title>
     <link type="text/css" rel="stylesheet" href="${__static__}/css/main.css" > 
        <script type="text/javascript" src="${__static__}/js/jquery.js"></script>
        <script src="${__static__}/js/highcharts.js"></script>
        <script src="${__static__}/js/data.js"></script>
		<script src="${__static__}/js/exporting.js"></script>
      <script type="text/javascript">
$(function () {
    $('#container').highcharts({
        data: {
            table: 'datatable'
        },
        chart: {
            type: 'column'
        },
        title: {
            text: '”微“系列产品分期次数统计'
        },
        yAxis: {
            allowDecimals: false,
            title: {
                text: 'Units'
            }
        },
        tooltip: {
            formatter: function () {
                return '<b>' + this.series.name + '</b><br/>' +
                    this.point.y + ' ' + this.point.name.toLowerCase();
            }
        }
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
					<%--   <ul>
							<li><img src="${__static__}/images/home.png"></li>
								<li style="margin-left:25px;">您当前的位置：</li>
								<li><a href="#">首页</a></li>
								<li></li>
								<li><a href="#">订单列表</a></li>
						</ul> --%>
			</div>  
			<div class="main">
				<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">数据统计</a></li>
    <li><a href="#">”微“系列产品分期次数统计</a></li>
    </ul>
    </div>
    <!--  图表的呈现区域，和常规图表选项设置中的renderTo: 'container'对应-->
   <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

<table id="datatable"  style="margin-left:80px;align:center;">
    <thead>
        <tr>
            <th style="width:60px;"></th>
            <th style="width:60px;">微分期</th>
            <th style="width:60px;">微贷款</th>
			<th style="width:60px;">微未来</th>
			<th style="width:60px;">微拼团</th>
			<th style="width:60px;">微生活</th>
        </tr>
    </thead>
    <tbody>
    <c:set var="count1" value="${0}"/>
   <c:set var="count2" value="${0}"/>
   <c:set var="count3" value="${0}"/>
   <c:set var="count4" value="${0}"/>
   <c:set var="count5" value="${0}"/>
   <c:forEach items="${timesData}" var="timesData">
   
<c:if test="${timesData.Times eq 3 }">
<c:if test="${timesData.FunctionId eq 1 }">
<c:set var="count1" value="${count1+1}"/>
</c:if>
<c:if test="${timesData.FunctionId eq 2 }">
<c:set var="count2" value="${count2+1}"/>
</c:if>
<c:if test="${timesData.FunctionId eq 3 }">
<c:set var="count3" value="${count3+1}"/>

</c:if>
<c:if test="${timesData.FunctionId eq 4 }">
<c:set var="count4" value="${count4+1}"/>

</c:if>
<c:if test="${timesData.FunctionId eq 5 }">
<c:set var="count5" value="${count5+1}"/>
</c:if>
</c:if>

</c:forEach>

    <c:set var="loop" value="${3}"/>
<c:forEach begin="1" end="9"  var="i">
  <c:set var="count2" value="${loop*(i-1) }"/>
  

<c:choose>
        
         <c:when test="${i eq 1 }">
         <tr>
            <th style="width:60px;">${i }个月</th>
             <td  style="vertical-align:middle; text-align:center;">${ count1}</td>
            <td  style="vertical-align:middle; text-align:center;">${ count2}</td>
			 <td  style="vertical-align:middle; text-align:center;">${ count3}</td>
			  <td  style="vertical-align:middle; text-align:center;">${ count4}</td>
			   <td  style="vertical-align:middle; text-align:center;">${ count5}</td>
			   </tr>
           </c:when> 
           <c:otherwise> 
           <tr>
           <th style="width:60px;"> ${loop*(i-1) }个月</th>
           
           
            <c:set var="c1" value="${0}"/>
   <c:set var="c2" value="${0}"/>
   <c:set var="c3" value="${0}"/>
   <c:set var="c4" value="${0}"/>
   <c:set var="c5" value="${0}"/>
   <c:forEach items="${timesData}" var="timesData">
   
<c:if test="${timesData.Times eq loop*(i-1) }">
<c:if test="${timesData.FunctionId eq 1 }">
<c:set var="c1" value="${c1+1}"/>
</c:if>
<c:if test="${timesData.FunctionId eq 2 }">
<c:set var="c2" value="${c2+1}"/>
</c:if>
<c:if test="${timesData.FunctionId eq 3 }">
<c:set var="c3" value="${c3+1}"/>

</c:if>
<c:if test="${timesData.FunctionId eq 4 }">
<c:set var="c4" value="${c4+1}"/>

</c:if>
<c:if test="${timesData.FunctionId eq 5 }">
<c:set var="c5" value="${c5+1}"/>
</c:if>
</c:if>

</c:forEach>
           
           
           
            <td  style="vertical-align:middle; text-align:center;">${c1 }</td>
            <td  style="vertical-align:middle; text-align:center;">${c2 }</td>
			 <td  style="vertical-align:middle; text-align:center;">${c3 }</td>
			  <td  style="vertical-align:middle; text-align:center;">${c4 }</td>
			   <td  style="vertical-align:middle; text-align:center;">${c5 }</td>
			   </tr>
			    </c:otherwise>
       </c:choose>
        </c:forEach>
    
    </tbody>
</table>
</div>
</div>
</div>
<div class="bottom"></div>
<div id="footer"><p>微你而生后台管理系统</p></div>
    </body>
</html>
 