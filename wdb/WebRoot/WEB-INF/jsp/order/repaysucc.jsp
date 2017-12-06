<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<html><head>
<title>付款成功</title>
<link rel="icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/icon_wdb.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
   
  
    <link rel="stylesheet" type="text/css" href="../css/base.css"> 
  <link rel="stylesheet" type="text/css" href="../css/cart.css"> 
    <link rel="stylesheet" type="text/css" href="../css/register.css">
    <script charset="utf-8" src="../js/v.js"></script><script src="../js/hm.js"></script><script src="../js/frms-fingerprint-min.js"></script>
    <!-- requirejs main -->


<style type="text/css">
<!--
.a {
	font-family: "新宋体";
	font-size: 100px;
}

-->
</style>

</head>
<body >
	
    <!-- begin topbar -->
    <div class="clearfix header-help-tel">
        <div class="layout1200">
            <div class="fl fs12">
           ${custnick } 欢迎来到大学生信用生活服务平台</div>
            <div class="fr fs12">
	                <a class="fl mr20 J_cart" href="#"></a>
	                <div id="J_newsFont" class="fl mr20 newsFont"></a>
					   
	              	</div>
                <a class="fl mr20" href="#" target="_blank">帮助中心</a>
                <span class="fl mr20">咨询热线：888-888-8888</span>
                <span class="fl orange-color hand" id="J_Report">我要举报</span>
            </div>
        </div>
    </div>
   <div id="header">
    <div class="header-top">
        <div class="layout1200">
            <div class="clearfix">
                <a class="fl header-logo" href="#" ></a>
                <div class="fr complateBox mt10">
                   <span class="comTwo "></span><span class="comTwo ">还款</span><span class="comLast comTwobg">完成</span>
                </div>
            </div>
        </div>
    </div>
</div> 
    
 <div class="succbox">

<center>
<table width="45%" height="153" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="27%" rowspan="3"><img alt="" src="../images/success.png"></td>
    <td width="73%" height="71"><div class="ziti1">恭喜您，还款成功！</div></td>
  </tr>
  <tr>
  <c:choose>
  <c:when test="${lefttime eq 0}">
    <td height="38"><div class="ziti2 ">您所有分期订单都已还清！</div></td>
    </c:when>
    <c:otherwise>
    <td height="38"><div class="ziti2 ">您剩余<font color="#FF7F00"><strong>${lefttime }</strong></font>期还款未还</div></td>
   </c:otherwise>
   </c:choose>
  </tr>
  <tr>
    <td height="42"><a href="${pageContext.request.contextPath }/customer/Personal.action" class="common-btn orange inblock" >返回个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="${pageContext.request.contextPath }/products/productsList.action" class="mr30 blue-color aback fs14">去大学生信用生活服务平台逛逛</a>
    </td>
  </tr>
</table>

</center>
   
    
        </div>       
       
   
    <script type="text/x-tmpl" id="J_protocol">
       
    </script>
 <div class="loginFoot tac">
        <p class="fs14 mb10">
        <a class="mr15" href="#">关于大学生信用生活服务平台</a><b class="splitline mr15"></b>
        <a class="mr15" href="#">加入大学生信用生活服务平台</a><b class="splitline mr15"></b>
        <a class="mr15" href="#">联系我们</a><b class="splitline mr15"></b>
        <a class="mr15" href="#">帮助中心</a><b class="splitline mr15"></b>
        <a>客服电话：888-888-8888</a></p>
      
    </div>	
        

</div></body></html>