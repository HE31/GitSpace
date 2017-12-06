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

 <script type="text/javascript" src="${__static__}/js/jquery-1.8.3.min.js"></script>

<script>
		var ZLZ = window.ZLZ = {
			"ROOT"   : "${__root__}",
			"URL"    : "${__url__}",
			"STATIC" : "${__static__}"
		}
	</script>
<script type="text/javascript">
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
					<%-- <ul>
							<li><img src="${__static__}/images/home.png"></li>
								<li style="margin-left:25px;">您当前的位置：</li>
								<li><a href="#">系统公告</a></li>
								<li></li>
								<li><a href="#">最新公告</a></li>
						</ul> --%>
			</div>
			<div class="main">
			
			
			<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="JavaScript:void(0)">首页</a></li>
    <li><a href="JavaScript:void(0)">用户管理</a></li>
    <li><a href="JavaScript:void(0)">用户列表</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="${__static__}/images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="${__static__}/images/t02.png" /></span>修改</li>
        <li><span><img src="${__static__}/images/t03.png" /></span>删除</li>
        <li ><span><img src="${__static__}/images/t04.png" /></span>统计</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li onclick="showHideCode()"><span><img src="${__static__}/images/t05.png" /></span>
        <div  class= "showbtn1" style="display:inline;">切换详情/精简视图</div>
        </li>
        </ul>
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>用户编号<i class="sort"><img src="${__static__}/images/px.gif" /></i></th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">用户昵称</div></th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">真实姓名</div></th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">联系方式</div></th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">所在院校</div></th>
        <th>审核状态</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${page.data}" var="user">
        <script type="text/javascript">
        
        
       
          function showHideCode(){
          var showCust="show"+${user.CustomerId };
         
             $(".showCust").toggle();
              $(".showNow").toggle();
            
          }
        
</script> 
        <tr >
        <td><input name="" type="checkbox" value="" /></td>
        <td><div style="float:left;">${user.CustomerId }</div> <div  class= "showCust" style="display:none;padding-top:10px;padding-bottom:10px;"><img src="${user.CustHead}" style="width:80px;height:80px;"/></div>
  </td>
        <td><div  class= "showCust" style="display:none;float:left;">用户昵称：</div>${user.CustNick} <div  class= "showCust" style="display:none;">注册日期：${user.CustRegDate}</div> <div  class= "showCust" style="display:none;">信用额度：${user.CustCreditRest}</div></td>
        <td><div  class= "showCust" style="display:none;float:left;">真实姓名：</div>${user.CustName} <div  class="showCust" style="display:none;">身份证号：${user.CustIdCard}</div> <div  class= "showCust" style="display:none;">学历水平：${user.CustEducation}</div></td>
        <td><div  class= "showCust" style="display:none;float:left;">联系方式：</div>${user.CustPhoneNum } <div  class="showCust" style="display:none;">邮箱地址：${user.CustEmail}</div> <div  class= "showCust" style="display:none;">邮编地址：${user.CustZipCode}</div></td>
        <td><div  class= "showCust" style="display:none;float:left;">所在院校：</div>${user.CustUniversity } <div  class="showCust" style="display:none;">家庭地址：${user.CustAddress}</div> <div  class= "showCust" style="display:none;">在校时间：${user.CustInUniversity}</div></td>
        <td>已审核</td>
        <td><a href="${pageContext.request.contextPath }/chart/circlechart.action?customerid=${user.CustomerId}" class="tablelink">消费报表</a>  &nbsp;&nbsp;  
         <a href="${pageContext.request.contextPath }/customer/customerorder.action?customerid=${user.CustomerId}" class="tablelink" > 订单记录</a>
         &nbsp;&nbsp;   <a href="javascript:void(0);" class="tablelink" > 用户管理</a>
        </td>
       </tr>
      
         
        
       
        </c:forEach>
        
        </tbody>
    </table>
    
   
   <div class="pagin">
        <ul class="paginList">
       
           <jsp:include page="../public/page.jsp">
                <jsp:param value="${pageContext.request.contextPath }/customer/customerlist.action" name="url"/>
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
<div id="footer"><p>大学生信用生活服务平台后台管理系统</p></div>

<!-- <script>navList(12);</script> -->

</body>
</html>
