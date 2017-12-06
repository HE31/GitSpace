 
 <%@ page language="java" pageEncoding="UTF-8"%>
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://zlzkj.com/tags" prefix="z" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>大学生信用生活服务平台后台管理系统</title>
        <link type="text/css" rel="stylesheet" href="${__static__}/css/main.css" >
        <script type="text/javascript" src="${__static__}/js/jquery.js"></script>
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
    <li><a href="JavaScript:void(0)">首页</a></li>
 
    </ul>
    </div>
    <div class="mainindex">
    
    
    <div class="welinfo">
    <span><img src="${__static__}/images/sun.png" alt="天气" /></span>
    <b>${account }您好，欢迎使用大学生信用生活服务平台后台管理系统</b>
    <a href="JavaScript:void(0)">帐号设置</a>
    </div>
    
   
    
    <div class="xline"></div>
    
    <ul class="iconlist">
    
    <li><img src="${__static__}/images/ico01.png" /><p><a href="${pageContext.request.contextPath }/customer/customerlist.action">用户管理</a></p></li>
    <li><img src="${__static__}/images/ico02.png" /><p><a href='${pageContext.request.contextPath }/product/productgroup.action?functionid=0'>发布商品</a></p></li>
    <li><img src="${__static__}/images/ico03.png" /><p><a href="${pageContext.request.contextPath }/chart/linechart.action">数据统计</a></p></li>
    <li><img src="${__static__}/images/ico04.png" /><p><a href="${pageContext.request.contextPath }/product/productadd.action">产品上传</a></p></li>
    <li><img src="${__static__}/images/ico05.png" /><p><a href="${pageContext.request.contextPath }/order/orderlist.action">订单管理</a></p></li>
    <li><img src="${__static__}/images/ico06.png" /><p><a href="${pageContext.request.contextPath }/order/orderlist.action">查询</a></p></li> 
            
    </ul>
    
    <div class="ibox"><a class="ibtn"><img src="${__static__}/images/iadd.png" />添加新的快捷功能</a></div>
    
    <div class="xline"></div>
    <div class="box"></div>
    
    <div class="welinfo">
    <span><img src="${__static__}/images/dp.png" alt="提醒" /></span>
    <b>大学生信用生活服务平台后台管理系统使用指南</b>
    </div>
    
    <ul class="infolist">
    <li><span>您可以快速查看订单</span><a class="ibtn">审核或管理订单</a></li>
    <li><span>您可以快速发布产品</span><a class="ibtn">发布或管理产品</a></li>
    <li><span>您可以进行密码修改、账户设置等操作</span><a class="ibtn">账户管理</a></li>
    </ul>
    
    <div class="xline"></div>
    
    <div class="uimakerinfo"><b>查看大学生信用生活服务平台后台管理系统功能，您可以了解到更多后台管理界面,操作功能等相关信息</b></div>
    
    <ul class="umlist">
    <li><a href="${pageContext.request.contextPath }/product/productgroup.action?functionid=0">商品管理</a></li>
    <li><a href="${pageContext.request.contextPath }/customer/customerlist.action">用户管理</a></li>
    <li><a href="${pageContext.request.contextPath }/order/orderlist.action">订单管理</a></li>
    <li><a href="${pageContext.request.contextPath }/chart/groupcolumn.action">数据统计</a></li>
    <li><a href="JavaScript:void(0)">系统设置</a></li>
    </ul>
    
    </div></div></div>
    </div>
	<div class="bottom"></div>
<div id="footer"><p>大学生信用生活服务平台后台管理系统</p></div>
    </body>
</html>
 