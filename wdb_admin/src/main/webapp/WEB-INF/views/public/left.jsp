<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>微你而生后台管理系统</title>
 <link type="text/css" rel="stylesheet" href="${__static__}/css/style.css" /> 

<script type="text/javascript" src="${__static__}/js/menu.js"></script> 
  <script>
  window.onload=function(){

         var selectedIndex = getCookie("liname");    
      document.getElementById("li_"+selectedIndex).style.display="block";    
    setCookie("liname",selectedIndex);
      }
        </script>
 <script type="text/javascript">
     function setCookie(name, value) {
     var exp = new Date();
        exp.setTime(exp.getTime() + 10*60 * 1000);
        document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
    }  
    
      function getCookie(name)
    {
        var regExp = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
        var arr = document.cookie.match(regExp);
        if (arr == null) {
            return null;
        }
        return unescape(arr[2]);
    } 
</script>
  </head>
  
  <body>
	<div class="left_menu">
				<ul id="nav_dot">
      <li>
          <h4 class="M1"><span></span>商品管理</h4>
          <div class="list-item none"  onclick="setCookie('liname',1);" id="li_1">
          <a href='${pageContext.request.contextPath }/product/productlist.action'>商品列表</a> 
            <a href='${pageContext.request.contextPath }/product/productgroup.action?functionid=0' >商品分类</a>
            <a href='${pageContext.request.contextPath }/product/productadd.action'>商品添加</a>
            <a href='${pageContext.request.contextPath }/product/productcategory.action?categoryid=all'>商品属性</a>
          </div>
        </li>
        <li>
          <h4 class="M2"><span></span>订单管理</h4>
          <div class="list-item none" onclick="setCookie('liname',2);" id="li_2">
            <a href='${pageContext.request.contextPath }/order/orderlist.action' >订单列表</a>
            <a href='${pageContext.request.contextPath }/order/ordertype.action?orderStatus=0' >待发货订单</a>
             <a href='${pageContext.request.contextPath }/order/ordertype.action?orderStatus=1'>发货中订单</a>
            <%--  <a href='${pageContext.request.contextPath }/order/orderType.action?orderStatus=0' >已发货订单</a> --%>
            <a href='${pageContext.request.contextPath }/order/ordertype.action?orderStatus=2' >还款中订单</a>
            <a href='${pageContext.request.contextPath }/order/ordertype.action?orderStatus=3' >已完成订单</a>          
           </div>
        </li>
        <li>
          <h4 class="M3"><span></span>用户管理</h4>
          <div class="list-item none" onclick="setCookie('liname',3);" id="li_3">
            <a href='${pageContext.request.contextPath }/customer/customerlist.action' >用户列表</a>
            <a href='${pageContext.request.contextPath }/customer/customerlist.action' >注册设置</a>
            <a href='${pageContext.request.contextPath }/customer/customerlist.action' >审核设置</a>
            <a href='${pageContext.request.contextPath }/customer/customerlist.action' >用户管理</a>
             <a href='${pageContext.request.contextPath }/customer/customerlist.action' >用户等级</a>
          </div>
        </li>
				<li>
          <h4 class="M5"><span></span>数据统计</h4>
          <div class="list-item none" onclick="setCookie('liname',4);" id="li_4">
            <a href='${pageContext.request.contextPath }/chart/piechart.action' >产品销售比重统计</a>
            <%-- <a href='${pageContext.request.contextPath }/chart/circlechart.action'>个人购买记录统计</a> --%>
             <a href='${pageContext.request.contextPath }/chart/columnchart.action' >产品销售额统计 </a>
              <a href='${pageContext.request.contextPath }/chart/groupcolumn.action'>产品分期次数统计 </a>
               <a href='${pageContext.request.contextPath }/chart/schoolcolumn.action' >用户量统计 </a>
                <a href='${pageContext.request.contextPath }/chart/linechart.action' >近一年产品销量统计 </a>
          </div>
        </li>
				<!-- <li>
          <h4 class="M4"><span></span>调研问卷</h4>
          <div class="list-item none">
            <a href=''>调研问卷1</a>
          
          </div>
        </li>
				<li>
          <h4  class="M6"><span></span>数据统计</h4>
          <div class="list-item none">
            <a href=''>数据统计1</a>
           
          </div>
        </li>
				<li>
          <h4  class="M7"><span></span>奖励管理</h4>
          <div class="list-item none">
            <a href=''>奖励管理1</a>
            
          </div>
        </li> -->
				<li>
          <h4   class="M8"><span></span>系统设置</h4>
          <div class="list-item none">
            <a href='JavaScript:void(0)'>网站设置</a>
            <a href='JavaScript:void(0)'>管理员设置</a>
            <a href='JavaScript:void(0)'>模板设置</a>
						<a href='JavaScript:void(0)'>图片轮播</a>
           
          </div>
        </li>
				<!-- <li>
          <h4  class="M9"><span></span>内容管理</h4>
          <div class="list-item none">
            <a href=''>内容管理1</a>
            <a href=''>内容管理2</a>
            <a href=''>内容管理3</a>
          </div>
        </li>
				<li>
          <h4   class="M10"><span></span>系统管理</h4>
          <div class="list-item none">
            <a href=''>系统管理1</a>
            <a href=''>系统管理2</a>
            <a href=''>系统管理3</a>
          </div>
        </li> -->
  </ul>
   <!--  <script type="text/javascript">
    var selectedIndex = getCookie("liname");
     document.getElementById("li_"+selectedIndex).style.display="block";
</script> -->
		</div>
		
	<script>navList(12);</script>
  </body>
</html>
