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
<script type="text/javascript" src="${__static__}/js/jquery.idTabs.min.js"></script>
<!-- 模糊查询高亮显示插件 -->
<script type="text/javascript" src="${__static__}/js/jquery.highlighter.js"></script>
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


<script type="text/javascript">
$(document).ready(function(e) {
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

<script>
 $(document).ready(function () {
 
         $("#tabid"+${tabid}).click();
  
			        });
</script>


<script>
function gosubmit(i)
{
var searchkey=document.getElementById("searchkey"+i).value;
var tid=document.getElementById("tid"+i).value;
var orderStatus=document.getElementById("orderStatus").value;
 location.href="${pageContext.request.contextPath }/order/orderquery.action?searchkey="+searchkey+"&&tabid="+tid+"&&orderStatus="+orderStatus+"";  
}</script>
 <script type="text/javascript"> 
    //查询关键字高亮显示 
      $(function(){
        var someKeyWords ="${searchkey}";
         $("#tabid"+${tabid}).click();
        $("body>div>div>div>div>div>div>div").highlight(someKeyWords); 
         
        }); 
    </script> 

<script type="text/javascript">
    function setCookie3(name, value) {
        var exp = new Date();
        //设置cookie有效时间
        exp.setTime(exp.getTime() + 10 * 60 * 1000);
        document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
    }
    function getCookie3(name)
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
				  <ul>
		
    </ul>
			</div> 
			<div class="main">
			<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="JavaScript:void(0)">首页</a></li>
    <li><a href="${pageContext.request.contextPath }/order/ordertype.action">订单管理</a></li>
     <c:if test="${orderStatus eq 0 }"> <li><a href="JavaScript:void(0)">待发货订单</a></li></c:if>
    <c:if test="${orderStatus eq 1 }"> <li><a href="JavaScript:void(0)">发货中订单</a></li></c:if>
    <c:if test="${orderStatus eq 2 }"> <li><a href="JavaScript:void(0)">还款中订单</a></li></c:if>
     <c:if test="${orderStatus eq 3 }"> <li><a href="JavaScript:void(0)">已完成订单</a></li></c:if>
    </ul>
    </div>
		
    
     <div class="formbody">
    
    
    <div id="usual1" class="usual"> 
    
    <div class="itab">
  	<ul> 
   <c:if test="${orderStatus eq 0 }">
    <li><a href="#tab0" class="selected" id="tabid0"> 所有待发货订单</a></li> 
   <li><a href="#tab1" id="tabid1">微分期待发货订单</a></li> 
    <li><a href="#tab2" id="tabid2">微贷款待发货订单</a></li> 
     <li><a href="#tab3" id="tabid3">微未来待发货订单</a></li>
      <li><a href="#tab4" id="tabid4">微拼团待发货订单</a></li>
       <li><a href="#tab5" id="tabid5">微生活待发货订单</a></li>
   </c:if>
   
   
    <c:if test="${orderStatus eq 1 }">
     <li><a href="#tab0" class="selected" id="tabid0"> 所有发货中订单</a></li>
      <li><a href="#tab1" id="tabid1">微分期发货中订单</a></li> 
    <li><a href="#tab2" id="tabid2">微贷款发货中订单</a></li> 
     <li><a href="#tab3" id="tabid3">微未来发货中订单</a></li>
      <li><a href="#tab4" id="tabid4">微拼团发货中订单</a></li>
       <li><a href="#tab5" id="tabid5">微生活发货中订单</a></li>
      </c:if>
      
     <c:if test="${orderStatus eq 2 }">
      <li><a href="#tab0" class="selected" id="tabid0"> 所有还款中订单</a></li>
       <li><a href="#tab1" id="tabid1">微分期还款中订单</a></li> 
    <li><a href="#tab2" id="tabid2">微贷款还款中订单</a></li> 
     <li><a href="#tab3" id="tabid3">微未来还款中订单</a></li>
      <li><a href="#tab4" id="tabid4">微拼团还款中订单</a></li>
       <li><a href="#tab5" id="tabid5">微生活还款中订单</a></li>
       </c:if>
       
      <c:if test="${orderStatus eq 3 }">
       <li><a href="#tab0" class="selected" id="tabid0">所有已完成订单</a></li> 
        <li><a href="#tab1" id="tabid1">微分期已完成订单</a></li> 
    <li><a href="#tab2" id="tabid2">微贷款已完成订单</a></li> 
     <li><a href="#tab3" id="tabid3">微未来已完成订单</a></li>
      <li><a href="#tab4" id="tabid4">微拼团已完成订单</a></li>
       <li><a href="#tab5" id="tabid5">微生活已完成订单</a></li>
       </c:if>
    
    
    
  
	
  	</ul>
    </div>  
    <div id="tab0" class="tabson">
      <ul class="seachform">
    
    <li><label>分期次数</label>  
    <div class="vocation">
    <select class="select3" onchange="window.location=this.value;setCookie3('select_3',this.selectedIndex);" id="select_3">
    <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=0&&orderStatus=${orderStatus }">全部</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=0&&orderStatus=${orderStatus }">查看全部</option>
    <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=1&&tabid=0&&orderStatus=${orderStatus }">1个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=3&&tabid=0&&orderStatus=${orderStatus }">3个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=6&&tabid=0&&orderStatus=${orderStatus }">6个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=9&&tabid=0&&orderStatus=${orderStatus }">9个月</option>
      <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=12&&tabid=0&&orderStatus=${orderStatus }">12个月</option>
       <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=15&&tabid=0&&orderStatus=${orderStatus }">15个月</option>
        <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=18&&tabid=0&&orderStatus=${orderStatus }">18个月</option>
         <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=21&&tabid=0&&orderStatus=${orderStatus }">21个月</option>
          <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=24&&tabid=0&&orderStatus=${orderStatus }">24个月</option>
    </select>
     <script type="text/javascript">
    var selectedIndex = getCookie3("select_3");
    if(selectedIndex != null) {
        document.getElementById("select_3").selectedIndex = selectedIndex;
    }
</script>
    </div>
    </li>
    
    <li><label>近期订单</label>  
    <div class="vocation">
    <select class="select3" onchange="window.location=this.value;setCookie4('select_4',this.selectedIndex);" id="select_4">
    <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=0&&orderStatus=${orderStatus}">全部</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=0&&orderStatus=${orderStatus}">查看全部</option>
    <option value="${pageContext.request.contextPath }/order/typerecent.action?times=0&&tabid=0&&orderStatus=${orderStatus}">今日订单</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=1&&tabid=0&&orderStatus=${orderStatus}">昨日订单</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=2&&tabid=0&&orderStatus=${orderStatus}">本月订单</option>
       <option value="${pageContext.request.contextPath }/order/typerecent.action?times=3&&tabid=0&&orderStatus=${orderStatus}">上月订单</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=4&&tabid=0&&orderStatus=${orderStatus}">近一星期</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=5&&tabid=0&&orderStatus=${orderStatus}">近一个月</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=6&&tabid=0&&orderStatus=${orderStatus}">近三个月</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=7&&tabid=0&&orderStatus=${orderStatus}">近一年</option> 
    </select>
    </div>
    </li>
    
    <li><label>订单状态</label>  
    <div class="vocation">
    <select class="select3" onchange="window.location=this.value;">
    <option>全部</option>
    <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=0">待发货</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=1">发货中</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=2">还款中</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=3">已完成</option>
    </select>
    </div>
    </li>  
     <li><label>综合查询</label><input name="searchkey" id="searchkey0"  type="text" class="scinput" value="${searchkey }"/></li>
     <li><input name="tabid" id="tid0" type="hidden" value="0" /></li><li><input name="orderStatus" id="orderStatus" type="hidden" value="${orderStatus }" /></li>
    <li><label>&nbsp;</label><input name="querybtn" type="button" class="scbtn" onclick="gosubmit(0);" value="查询"/></li>  
    </ul>
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li ><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=OrderDate&&sorttype=asc&&tabid=0"><span><img src="${__static__}/images/asc.png" /></span>按时间升序</a></li>
        <li ><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=OrderDate&&sorttype=desc&&tabid=0"><span><img src="${__static__}/images/desc.png" /></span>按时间降序</a></li>
        <li><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=Times&&sorttype=asc&&tabid=0"><span><img src="${__static__}/images/asc2.png" /></span>按分期次数升序</a></li>
        <li><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=Times&&sorttype=desc&&tabid=0"><span><img src="${__static__}/images/desc2.png" /></span>按分期次数降序</a></li>
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
        <th>订单编号<i class="sort"><img src="${__static__}/images/px.gif" /></i></th>
        <th>下单日期</th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">用户编号</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">用户信息</div> 
        </th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">产品编号</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">产品信息</div></th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">分期次数</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">分期详情</div></th>
        <th>订单状态</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
         <c:choose>
    <c:when test="${!empty page.data  }">
        <c:forEach items="${page.data}" var="order">
          <script type="text/javascript">  
          function showHideCode(){
          var showCust="show"+${order.OrderNumber };
             $(".showCust").toggle();
              $(".showNow").toggle();
          }
          </script>
        <tr >
        <td><div style="float:left;"><input name="" type="checkbox" value="" /></div><div  class= "showCust" style="display:none;padding-top:10px;padding-bottom:10px;"><img src="${order.ImageUrls}" style="width:80px;"/></div></td>
        <td>${order.OrderNumber }</td>
        <td><fmt:formatDate value='${order.OrderDate}' pattern='yyyy-MM-dd HH:mm:ss'/></td>
         <td><div class= "showCust" style="display:none;float:left;">用户编号：</div><a href="#" class="tablelink">${order.CustomerId}</a>
        <div  class= "showCust" style="display:none;">用户昵称：${order. CustNick }</div>
        <div  class= "showCust" style="display:none;">真实姓名：${order. CustName }</div>
        <div  class= "showCust" style="display:none;">联系方式：${order. CustParentPhoneNum }</div>
        <div  class= "showCust" style="display:none;">收货地址：${order. CustAddress }</div>
        </td>
        
        <td><div class= "showCust" style="display:none;float:left;">商品编号：</div><a href="${pageContext.request.contextPath }/product/productview.action?productnumber=${order.ProductNumber }" class="tablelink">${order.ProductNumber }</a>
         <div  class= "showCust" style="display:none;">商品名称：${order. ProductName }</div>
        <div  class= "showCust" style="display:none;">商品价格：￥${order. QuotoPrice }</div>
        <div  class= "showCust" style="display:none;">商品规格：${order. ProductDescription }</div> 
        </td>
        <td><div class= "showCust" style="display:none;float:left;">分期次数：</div>${order.Times }
        
        <div  class= "showCust" style="display:none;">首付金额：￥${order. HasFirstPay }</div>
        <div  class= "showCust" style="display:none;">每期应还：￥${order. Repayment }</div>
        </td>
        <td><c:choose>
        <c:when test="${order.OrderStatus eq 0 }">待发货</c:when>
        <c:when test="${order.OrderStatus eq 1 }">发货中</c:when>
        <c:when test="${order.OrderStatus eq 2 }">还款中</c:when>
        <c:otherwise>订单完成</c:otherwise>
        </c:choose>
       </td>
          <td><a href="${pageContext.request.contextPath }/customer/customerstage.action?ordernumber=${order.OrderNumber }&&customerid=${order.CustomerId}" class="tablelink">查看明细</a>&nbsp;&nbsp;&nbsp;
      <c:choose>
        <c:when test="${order.OrderStatus eq 0 }"> <a href="javascript:if(confirm('您确认要执行该操作吗?'))location='${pageContext.request.contextPath }/order/statusChange.action?ordernumber=${order.OrderNumber }&&orderstatus=1'" class="tablelink "> 确认发货</a></c:when>
        <c:when test="${order.OrderStatus eq 1 }"><a href="#" class="tablelink click"> 查看物流</a></c:when>
        <c:when test="${order.OrderStatus eq 2 }"><a href="javascript:if(confirm('您确认要执行该操作吗?'))location='${pageContext.request.contextPath }/order/statusChange.action?ordernumber=${order.OrderNumber }&&orderstatus=3'" class="tablelink "> 确认收款</a></c:when>
        <c:otherwise>订单完成</c:otherwise>
        </c:choose>
         
          </td>
        </tr> 
        </c:forEach>
           </c:when>
         <c:otherwise>
         <tr>
         <td><input name="" type="checkbox" value="" /></td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         </tr>
         </c:otherwise>
         </c:choose>
        </tbody>
    </table>
    
   
     <div class="pagin">
        <ul class="paginList">
         <jsp:include page="../public/page.jsp">
                <jsp:param value="${pageContext.request.contextPath }/order/ordertype.action" name="url"/>
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
	</div>

<!-- 微分期订单 -->
	<div id="tab1" class="tabson">
	
	 <ul class="seachform">
    <li><label>分期次数</label>  
    <div class="vocation">
    <select class="select3" onchange="window.location=this.value;setCookie3('select_3',this.selectedIndex);" id="select_3">
    <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=1&&orderStatus=${orderStatus }">全部</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=1&&orderStatus=${orderStatus }">查看全部</option>
    <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=1&&tabid=1&&orderStatus=${orderStatus }">1个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=3&&tabid=1&&orderStatus=${orderStatus }">3个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=6&&tabid=1&&orderStatus=${orderStatus }">6个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=9&&tabid=1&&orderStatus=${orderStatus }">9个月</option>
      <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=12&&tabid=1&&orderStatus=${orderStatus }">12个月</option>
       <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=15&&tabid=1&&orderStatus=${orderStatus }">15个月</option>
        <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=18&&tabid=1&&orderStatus=${orderStatus }">18个月</option>
         <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=21&&tabid=1&&orderStatus=${orderStatus }">21个月</option>
          <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=24&&tabid=1&&orderStatus=${orderStatus }">24个月</option>
    </select>
    </div>
    </li>
    
    <li><label>近期订单</label>  
    <div class="vocation">
    <div class="vocation">
    <select class="select3" onchange="window.location=this.value;setCookie4('select_4',this.selectedIndex);" id="select_4">
    <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=1&&orderStatus=${orderStatus}">全部</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=1&&orderStatus=${orderStatus}">查看全部</option>
    <option value="${pageContext.request.contextPath }/order/typerecent.action?times=0&&tabid=1&&orderStatus=${orderStatus}">今日订单</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=1&&tabid=1&&orderStatus=${orderStatus}">昨日订单</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=2&&tabid=1&&orderStatus=${orderStatus}">本月订单</option>
       <option value="${pageContext.request.contextPath }/order/typerecent.action?times=3&&tabid=1&&orderStatus=${orderStatus}">上月订单</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=4&&tabid=1&&orderStatus=${orderStatus}">近一星期</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=5&&tabid=1&&orderStatus=${orderStatus}">近一个月</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=6&&tabid=1&&orderStatus=${orderStatus}">近三个月</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=7&&tabid=1&&orderStatus=${orderStatus}">近一年</option> 
    </select>
    </div>
    </div>
    </li>
    
    <li><label>订单状态</label>  
    <div class="vocation">
    <select class="select3" onchange="window.location=this.value;">
    <option>全部</option>
    <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=0">待发货</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=1">发货中</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=2">还款中</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=3">已完成</option>
    </select>
    </div>
    </li>
    
    <li><label>综合查询</label><input name="searchkey" id="searchkey1"  type="text" class="scinput" value="${searchkey }"/></li>
     <li><input name="tabid" id="tid1" type="hidden" value="1" /></li><li><input name="orderStatus" id="orderStatus" type="hidden" value="${orderStatus}" /></li>
    <li><label>&nbsp;</label><input name="querybtn" type="button" class="scbtn" onclick="gosubmit(1);" value="查询"/></li>  
    </ul>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li ><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=OrderDate&&sorttype=asc&&tabid=1"><span><img src="${__static__}/images/asc.png" /></span>按时间升序</a></li>
        <li ><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=OrderDate&&sorttype=desc&&tabid=1"><span><img src="${__static__}/images/desc.png" /></span>按时间降序</a></li>
        <li><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=Times&&sorttype=asc&&tabid=1"><span><img src="${__static__}/images/asc2.png" /></span>按分期次数升序</a></li>
        <li><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=Times&&sorttype=desc&&tabid=1"><span><img src="${__static__}/images/desc2.png" /></span>按分期次数降序</a></li>
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
        <th>订单编号<i class="sort"><img src="${__static__}/images/px.gif" /></i></th>
         <th>下单日期</th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">用户编号</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">用户信息</div> 
        </th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">产品编号</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">产品信息</div></th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">分期次数</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">分期详情</div></th>
        <th>订单状态</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="count1" value="${0 }"/>
        <c:forEach items="${page.data}" var="order">
        
        <c:if test="${order.FunctionId eq 1 }">
        <c:set var="count1" value="${count1+1 }"/>
        <tr >
        <td><div style="float:left;"><input name="" type="checkbox" value="" /></div><div  class= "showCust" style="display:none;padding-top:10px;padding-bottom:10px;"><img src="${order.ImageUrls}" style="width:80px;"/></div></td>
        <td>${order.OrderNumber }</td>
        <td><fmt:formatDate value='${order.OrderDate}' pattern='yyyy-MM-dd HH:mm:ss'/></td>
          <td><div class= "showCust" style="display:none;float:left;">用户编号：</div><a href="#" class="tablelink">${order.CustomerId}</a>
        <div  class= "showCust" style="display:none;">用户昵称：${order. CustNick }</div>
        <div  class= "showCust" style="display:none;">真实姓名：${order. CustName }</div>
        <div  class= "showCust" style="display:none;">联系方式：${order. CustParentPhoneNum }</div>
        <div  class= "showCust" style="display:none;">收货地址：${order. CustAddress }</div>
        </td>
        
        <td><div class= "showCust" style="display:none;float:left;">商品编号：</div><a href="${pageContext.request.contextPath }/product/productview.action?productnumber=${order.ProductNumber }" class="tablelink">${order.ProductNumber }</a>
         <div  class= "showCust" style="display:none;">商品名称：${order. ProductName }</div>
        <div  class= "showCust" style="display:none;">商品价格：￥${order. QuotoPrice }</div>
        <div  class= "showCust" style="display:none;">商品规格：${order. ProductDescription }</div> 
        </td>
        <td><div class= "showCust" style="display:none;float:left;">分期次数：</div>${order.Times }
        
        <div  class= "showCust" style="display:none;">首付金额：￥${order. HasFirstPay }</div>
        <div  class= "showCust" style="display:none;">每期应还：￥${order. Repayment }</div>
        </td>
        <td><c:choose>
        <c:when test="${order.OrderStatus eq 0 }">待发货</c:when>
        <c:when test="${order.OrderStatus eq 1 }">发货中</c:when>
        <c:when test="${order.OrderStatus eq 2 }">还款中</c:when>
        <c:otherwise>订单完成</c:otherwise>
        </c:choose>
       </td>
         <td><a href="${pageContext.request.contextPath }/customer/customerstage.action?ordernumber=${order.OrderNumber }&&customerid=${order.CustomerId}" class="tablelink">查看明细</a>&nbsp;&nbsp;&nbsp;
      <c:choose>
        <c:when test="${order.OrderStatus eq 0 }"> <a href="javascript:if(confirm('您确认要执行该操作吗?'))location='${pageContext.request.contextPath }/order/statusChange.action?ordernumber=${order.OrderNumber }&&orderstatus=1'" class="tablelink "> 确认发货</a></c:when>
        <c:when test="${order.OrderStatus eq 1 }"><a href="#" class="tablelink click"> 查看物流</a></c:when>
        <c:when test="${order.OrderStatus eq 2 }"><a href="javascript:if(confirm('您确认要执行该操作吗?'))location='${pageContext.request.contextPath }/order/statusChange.action?ordernumber=${order.OrderNumber }&&orderstatus=3'" class="tablelink "> 确认收款</a></c:when>
        <c:otherwise>订单完成</c:otherwise>
        </c:choose>
         
          </td>
        </tr> 
        </c:if>
        </c:forEach>
         <c:if test="${count1 eq 0 }">
           <tr>
         <td><input name="" type="checkbox" value="" /></td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         </tr>
         </c:if>
        </tbody>
    </table>
    
   
    <div class="pagin">
    	 <ul class="paginList">
       
           <li>当前页</li>
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
   </div>
<!--    微贷款订单 -->
	<div id="tab2" class="tabson">
	 <ul class="seachform">
    
    <li><label>分期次数</label>  
    <div class="vocation">
    <select class="select3" onchange="window.location=this.value;setCookie3('select_3',this.selectedIndex);" id="select_3">
    <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=2&&orderStatus=${orderStatus }">全部</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=2&&orderStatus=${orderStatus }">查看全部</option>
    <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=1&&tabid=2&&orderStatus=${orderStatus }">1个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=3&&tabid=2&&orderStatus=${orderStatus }">3个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=6&&tabid=2&&orderStatus=${orderStatus }">6个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=9&&tabid=2&&orderStatus=${orderStatus }">9个月</option>
      <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=12&&tabid=2&&orderStatus=${orderStatus }">12个月</option>
       <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=15&&tabid=2&&orderStatus=${orderStatus }">15个月</option>
        <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=18&&tabid=2&&orderStatus=${orderStatus }">18个月</option>
         <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=21&&tabid=2&&orderStatus=${orderStatus }">21个月</option>
          <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=24&&tabid=2&&orderStatus=${orderStatus }">24个月</option>
    </select>
    </div>
    </li>
    
    <li><label>近期订单</label>  
    <div class="vocation">
    
    <select class="select3" onchange="window.location=this.value;setCookie4('select_4',this.selectedIndex);" id="select_4">
    <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=2&&orderStatus=${orderStatus}">全部</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=2&&orderStatus=${orderStatus}">查看全部</option>
    <option value="${pageContext.request.contextPath }/order/typerecent.action?times=0&&tabid=2&&orderStatus=${orderStatus}">今日订单</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=1&&tabid=2&&orderStatus=${orderStatus}">昨日订单</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=2&&tabid=2&&orderStatus=${orderStatus}">本月订单</option>
       <option value="${pageContext.request.contextPath }/order/typerecent.action?times=3&&tabid=2&&orderStatus=${orderStatus}">上月订单</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=4&&tabid=2&&orderStatus=${orderStatus}">近一星期</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=5&&tabid=2&&orderStatus=${orderStatus}">近一个月</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=6&&tabid=2&&orderStatus=${orderStatus}">近三个月</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=7&&tabid=2&&orderStatus=${orderStatus}">近一年</option> 
    </select>
    </div>
   
    </li>
    
    <li><label>订单状态</label>  
    <div class="vocation">
    <select class="select3" onchange="window.location=this.value;">
    <option>全部</option>
    <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=0">待发货</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=1">发货中</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=2">还款中</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=3">已完成</option>
    </select>
    </div>
    </li>
    
   <li><label>综合查询</label><input name="searchkey" id="searchkey2"  type="text" class="scinput" value="${searchkey }"/></li>
     <li><input name="tabid" id="tid2" type="hidden" value="2" /></li><li><input name="orderStatus" id="orderStatus" type="hidden" value="orderStatus" /></li>
    <li><label>&nbsp;</label><input name="querybtn" type="button" class="scbtn" onclick="gosubmit(2);" value="查询"/></li>  
    
    </ul>
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li ><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=OrderDate&&sorttype=asc&&tabid=2"><span><img src="${__static__}/images/asc.png" /></span>按时间升序</a></li>
        <li ><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=OrderDate&&sorttype=desc&&tabid=2"><span><img src="${__static__}/images/desc.png" /></span>按时间降序</a></li>
        <li><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=Times&&sorttype=asc&&tabid=2"><span><img src="${__static__}/images/asc2.png" /></span>按分期次数升序</a></li>
        <li><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=Times&&sorttype=desc&&tabid=2"><span><img src="${__static__}/images/desc2.png" /></span>按分期次数降序</a></li>
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
        <th>订单编号<i class="sort"><img src="${__static__}/images/px.gif" /></i></th>
         <th>下单日期</th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">用户编号</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">用户信息</div> 
        </th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">产品编号</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">产品信息</div></th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">分期次数</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">分期详情</div></th>
        <th>订单状态</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="count2" value="${0 }"/>
        <c:forEach items="${page.data}" var="order">
        <c:if test="${order.FunctionId eq 2 }">
        <c:set var="count2" value="${count2+1 }"/>
        <tr >
        <td><div style="float:left;"><input name="" type="checkbox" value="" /></div><div  class= "showCust" style="display:none;padding-top:10px;padding-bottom:10px;"><img src="${order.ImageUrls}" style="width:80px;"/></div></td>
        <td>${order.OrderNumber }</td>
        <td><fmt:formatDate value='${order.OrderDate}' pattern='yyyy-MM-dd HH:mm:ss'/></td>
         <td><div class= "showCust" style="display:none;float:left;">用户编号：</div><a href="#" class="tablelink">${order.CustomerId}</a>
        <div  class= "showCust" style="display:none;">用户昵称：${order. CustNick }</div>
        <div  class= "showCust" style="display:none;">真实姓名：${order. CustName }</div>
        <div  class= "showCust" style="display:none;">联系方式：${order. CustParentPhoneNum }</div>
        <div  class= "showCust" style="display:none;">收货地址：${order. CustAddress }</div>
        </td>
        
        <td><div class= "showCust" style="display:none;float:left;">商品编号：</div><a href="${pageContext.request.contextPath }/product/productview.action?productnumber=${order.ProductNumber }" class="tablelink">${order.ProductNumber }</a>
         <div  class= "showCust" style="display:none;">商品名称：${order. ProductName }</div>
        <div  class= "showCust" style="display:none;">商品价格：￥${order. QuotoPrice }</div>
        <div  class= "showCust" style="display:none;">商品规格：${order. ProductDescription }</div> 
        </td>
        <td><div class= "showCust" style="display:none;float:left;">分期次数：</div>${order.Times }
        
        <div  class= "showCust" style="display:none;">首付金额：￥${order. HasFirstPay }</div>
        <div  class= "showCust" style="display:none;">每期应还：￥${order. Repayment }</div>
        </td>
        <td><c:choose>
        <c:when test="${order.OrderStatus eq 0 }">待发货</c:when>
        <c:when test="${order.OrderStatus eq 1 }">发货中</c:when>
        <c:when test="${order.OrderStatus eq 2 }">还款中</c:when>
        <c:otherwise>订单完成</c:otherwise>
        </c:choose>
       </td>
         <td><a href="${pageContext.request.contextPath }/customer/customerstage.action?ordernumber=${order.OrderNumber }&&customerid=${order.CustomerId}" class="tablelink">查看明细</a>&nbsp;&nbsp;&nbsp;
      <c:choose>
        <c:when test="${order.OrderStatus eq 0 }"> <a href="javascript:if(confirm('您确认要执行该操作吗?'))location='${pageContext.request.contextPath }/order/statusChange.action?ordernumber=${order.OrderNumber }&&orderstatus=1'" class="tablelink "> 确认发货</a></c:when>
        <c:when test="${order.OrderStatus eq 1 }"><a href="#" class="tablelink click"> 查看物流</a></c:when>
        <c:when test="${order.OrderStatus eq 2 }"><a href="javascript:if(confirm('您确认要执行该操作吗?'))location='${pageContext.request.contextPath }/order/statusChange.action?ordernumber=${order.OrderNumber }&&orderstatus=3'" class="tablelink "> 确认收款</a></c:when>
        <c:otherwise>订单完成</c:otherwise>
        </c:choose>
         
          </td>
        </tr> 
        </c:if>
        </c:forEach>
         <c:if test="${count2 eq 0 }">
           <tr>
         <td><input name="" type="checkbox" value="" /></td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         </tr>
         </c:if>
        </tbody>
    </table>
    
   
    <div class="pagin">
     <ul class="paginList">
       
           <li>当前页</li>
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
   </div>
	
	<!-- 微未来订单 -->
	<div id="tab3" class="tabson">
<ul class="seachform">
    
    <li><label>分期次数</label>  
    <div class="vocation">
    <select class="select3" onchange="window.location=this.value;setCookie3('select_3',this.selectedIndex);" id="select_3">
    <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=3&&orderStatus=${orderStatus }">全部</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=3&&orderStatus=${orderStatus }">查看全部</option>
    <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=1&&tabid=3&&orderStatus=${orderStatus }">1个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=3&&tabid=3&&orderStatus=${orderStatus }">3个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=6&&tabid=3&&orderStatus=${orderStatus }">6个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=9&&tabid=3&&orderStatus=${orderStatus }">9个月</option>
      <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=12&&tabid=3&&orderStatus=${orderStatus }">12个月</option>
       <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=15&&tabid=3&&orderStatus=${orderStatus }">15个月</option>
        <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=18&&tabid=3&&orderStatus=${orderStatus }">18个月</option>
         <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=21&&tabid=3&&orderStatus=${orderStatus }">21个月</option>
          <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=24&&tabid=3&&orderStatus=${orderStatus }">24个月</option>
    </select>
    </div>
    </li>
    
    <li><label>近期订单</label>  
    <div class="vocation">
    <select class="select3" onchange="window.location=this.value;setCookie4('select_4',this.selectedIndex);" id="select_4">
    <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=3&&orderStatus=${orderStatus}">全部</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=3&&orderStatus=${orderStatus}">查看全部</option>
    <option value="${pageContext.request.contextPath }/order/typerecent.action?times=0&&tabid=3&&orderStatus=${orderStatus}">今日订单</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=1&&tabid=3&&orderStatus=${orderStatus}">昨日订单</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=2&&tabid=3&&orderStatus=${orderStatus}">本月订单</option>
       <option value="${pageContext.request.contextPath }/order/typerecent.action?times=3&&tabid=3&&orderStatus=${orderStatus}">上月订单</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=4&&tabid=3&&orderStatus=${orderStatus}">近一星期</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=5&&tabid=3&&orderStatus=${orderStatus}">近一个月</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=6&&tabid=3&&orderStatus=${orderStatus}">近三个月</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=7&&tabid=3&&orderStatus=${orderStatus}">近一年</option> 
    </select>
    </div>
    </li>
    
    <li><label>订单状态</label>  
    <div class="vocation">
    <select class="select3" onchange="window.location=this.value;">
    <option>全部</option>
    <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=0">待发货</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=1">发货中</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=2">还款中</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=3">已完成</option>
    </select>
    </div>
    </li>
    
    <li><label>综合查询</label><input name="searchkey" id="searchkey3"  type="text" class="scinput" value="${searchkey }"/></li>
     <li><input name="tabid" id="tid3" type="hidden" value="3" /></li><li><input name="orderStatus" id="orderStatus" type="hidden" value="${orderStatus }" /></li>
    <li><label>&nbsp;</label><input name="querybtn" type="button" class="scbtn" onclick="gosubmit(3);" value="查询"/></li>  
    
    </ul>
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li ><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=OrderDate&&sorttype=asc&&tabid=3"><span><img src="${__static__}/images/asc.png" /></span>按时间升序</a></li>
        <li ><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=OrderDate&&sorttype=desc&&tabid=3"><span><img src="${__static__}/images/desc.png" /></span>按时间降序</a></li>
        <li><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=Times&&sorttype=asc&&tabid=3"><span><img src="${__static__}/images/asc2.png" /></span>按分期次数升序</a></li>
        <li><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=Times&&sorttype=desc&&tabid=3"><span><img src="${__static__}/images/desc2.png" /></span>按分期次数降序</a></li>
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
        <th>订单编号<i class="sort"><img src="${__static__}/images/px.gif" /></i></th>
        <th>下单日期</th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">用户编号</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">用户信息</div> 
        </th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">产品编号</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">产品信息</div></th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">分期次数</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">分期详情</div></th>
        <th>订单状态</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="count3" value="${0 }"/>
        <c:forEach items="${page.data}" var="order">
        <c:if test="${order.FunctionId eq 3 }">
        <c:set var="count3" value="${count3+1 }"/>
        <tr >
        <td><div style="float:left;"><input name="" type="checkbox" value="" /></div><div  class= "showCust" style="display:none;padding-top:10px;padding-bottom:10px;"><img src="${order.ImageUrls}" style="width:80px;"/></div></td>
        <td>${order.OrderNumber }</td>
        <td><fmt:formatDate value='${order.OrderDate}' pattern='yyyy-MM-dd HH:mm:ss'/></td>
         <td><div class= "showCust" style="display:none;float:left;">用户编号：</div><a href="#" class="tablelink">${order.CustomerId}</a>
        <div  class= "showCust" style="display:none;">用户昵称：${order. CustNick }</div>
        <div  class= "showCust" style="display:none;">真实姓名：${order. CustName }</div>
        <div  class= "showCust" style="display:none;">联系方式：${order. CustParentPhoneNum }</div>
        <div  class= "showCust" style="display:none;">收货地址：${order. CustAddress }</div>
        </td>
        
        <td><div class= "showCust" style="display:none;float:left;">商品编号：</div><a href="${pageContext.request.contextPath }/product/productview.action?productnumber=${order.ProductNumber }" class="tablelink">${order.ProductNumber }</a>
         <div  class= "showCust" style="display:none;">商品名称：${order. ProductName }</div>
        <div  class= "showCust" style="display:none;">商品价格：￥${order. QuotoPrice }</div>
        <div  class= "showCust" style="display:none;">商品规格：${order. ProductDescription }</div> 
        </td>
        <td><div class= "showCust" style="display:none;float:left;">分期次数：</div>${order.Times }
        
        <div  class= "showCust" style="display:none;">首付金额：￥${order. HasFirstPay }</div>
        <div  class= "showCust" style="display:none;">每期应还：￥${order. Repayment }</div>
        </td>
        <td><c:choose>
        <c:when test="${order.OrderStatus eq 0 }">待发货</c:when>
        <c:when test="${order.OrderStatus eq 1 }">发货中</c:when>
        <c:when test="${order.OrderStatus eq 2 }">还款中</c:when>
        <c:otherwise>订单完成</c:otherwise>
        </c:choose>
       </td>
         <td><a href="${pageContext.request.contextPath }/customer/customerstage.action?ordernumber=${order.OrderNumber }&&customerid=${order.CustomerId}" class="tablelink">查看明细</a>&nbsp;&nbsp;&nbsp;
      <c:choose>
        <c:when test="${order.OrderStatus eq 0 }"> <a href="javascript:if(confirm('您确认要执行该操作吗?'))location='${pageContext.request.contextPath }/order/statusChange.action?ordernumber=${order.OrderNumber }&&orderstatus=1'" class="tablelink "> 确认发货</a></c:when>
        <c:when test="${order.OrderStatus eq 1 }"><a href="#" class="tablelink click"> 查看物流</a></c:when>
        <c:when test="${order.OrderStatus eq 2 }"><a href="javascript:if(confirm('您确认要执行该操作吗?'))location='${pageContext.request.contextPath }/order/statusChange.action?ordernumber=${order.OrderNumber }&&orderstatus=3'" class="tablelink "> 确认收款</a></c:when>
        <c:otherwise>订单完成</c:otherwise>
        </c:choose>
         
          </td>
        </tr> 
        </c:if>
        </c:forEach>
         <c:if test="${count3 eq 0 }">
           <tr>
         <td><input name="" type="checkbox" value="" /></td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         </tr>
         </c:if>
        </tbody>
    </table>
    
   
    <div class="pagin">
    	 <ul class="paginList">
       
           <li>当前页</li>
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
	</div>
	<!-- 微未来订单 -->
	<div id="tab4" class="tabson">
	<ul class="seachform">
    <li><label>分期次数</label>  
    <div class="vocation">
    <select class="select3" onchange="window.location=this.value;setCookie3('select_3',this.selectedIndex);" id="select_3">
    <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=4&&orderStatus=${orderStatus }">全部</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=4&&orderStatus=${orderStatus }">查看全部</option>
    <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=1&&tabid=4&&orderStatus=${orderStatus }">1个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=3&&tabid=4&&orderStatus=${orderStatus }">3个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=6&&tabid=4&&orderStatus=${orderStatus }">6个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=9&&tabid=4&&orderStatus=${orderStatus }">9个月</option>
      <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=12&&tabid=4&&orderStatus=${orderStatus }">12个月</option>
       <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=15&&tabid=4&&orderStatus=${orderStatus }">15个月</option>
        <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=18&&tabid=4&&orderStatus=${orderStatus }">18个月</option>
         <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=21&&tabid=4&&orderStatus=${orderStatus }">21个月</option>
          <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=24&&tabid=4&&orderStatus=${orderStatus }">24个月</option>
    </select>
    </div>
    </li>
    
    <li><label>近期订单</label>  
    <div class="vocation">
     <select class="select3" onchange="window.location=this.value;setCookie4('select_4',this.selectedIndex);" id="select_4">
    <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=4&&orderStatus=${orderStatus}">全部</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=4&&orderStatus=${orderStatus}">查看全部</option>
    <option value="${pageContext.request.contextPath }/order/typerecent.action?times=0&&tabid=4&&orderStatus=${orderStatus}">今日订单</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=1&&tabid=4&&orderStatus=${orderStatus}">昨日订单</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=2&&tabid=4&&orderStatus=${orderStatus}">本月订单</option>
       <option value="${pageContext.request.contextPath }/order/typerecent.action?times=3&&tabid=4&&orderStatus=${orderStatus}">上月订单</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=4&&tabid=4&&orderStatus=${orderStatus}">近一星期</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=5&&tabid=4&&orderStatus=${orderStatus}">近一个月</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=6&&tabid=4&&orderStatus=${orderStatus}">近三个月</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=7&&tabid=4&&orderStatus=${orderStatus}">近一年</option> 
    </select>
    </div>
    </li>
    
    <li><label>订单状态</label>  
    <div class="vocation">
    <select class="select3" onchange="window.location=this.value;">
    <option>全部</option>
    <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=0">待发货</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=1">发货中</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=2">还款中</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=3">已完成</option>
    </select>
    </div>
    </li>
    
    <li><label>综合查询</label><input name="searchkey" id="searchkey4"  type="text" class="scinput" value="${searchkey }"/></li>
     <li><input name="tabid" id="tid4" type="hidden" value="4" /></li><li><input name="orderStatus" id="orderStatus" type="hidden" value="${orderStatus }" /></li>
    <li><label>&nbsp;</label><input name="querybtn" type="button" class="scbtn" onclick="gosubmit(4);" value="查询"/></li>  
    
    </ul>
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li ><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=OrderDate&&sorttype=asc&&tabid=4"><span><img src="${__static__}/images/asc.png" /></span>按时间升序</a></li>
        <li ><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=OrderDate&&sorttype=desc&&tabid=4"><span><img src="${__static__}/images/desc.png" /></span>按时间降序</a></li>
        <li><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=Times&&sorttype=asc&&tabid=4"><span><img src="${__static__}/images/asc2.png" /></span>按分期次数升序</a></li>
        <li><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=Times&&sorttype=desc&&tabid=4"><span><img src="${__static__}/images/desc2.png" /></span>按分期次数降序</a></li>
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
        <th>订单编号<i class="sort"><img src="${__static__}/images/px.gif" /></i></th>
        <th>下单日期</th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">用户编号</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">用户信息</div> 
        </th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">产品编号</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">产品信息</div></th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">分期次数</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">分期详情</div></th>
        <th>订单状态</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
          <c:set var="count4" value="${0 }"/>
        <c:forEach items="${page.data}" var="order">
        <c:if test="${order.FunctionId eq 4 }">
          <c:set var="count4" value="${count4+1 }"/>
        <tr >
        <td><div style="float:left;"><input name="" type="checkbox" value="" /></div><div  class= "showCust" style="display:none;padding-top:10px;padding-bottom:10px;"><img src="${order.ImageUrls}" style="width:80px;"/></div></td>
        <td>${order.OrderNumber }</td>
        <td><fmt:formatDate value='${order.OrderDate}' pattern='yyyy-MM-dd HH:mm:ss'/></td>
         <td><div class= "showCust" style="display:none;float:left;">用户编号：</div><a href="#" class="tablelink">${order.CustomerId}</a>
        <div  class= "showCust" style="display:none;">用户昵称：${order. CustNick }</div>
        <div  class= "showCust" style="display:none;">真实姓名：${order. CustName }</div>
        <div  class= "showCust" style="display:none;">联系方式：${order. CustParentPhoneNum }</div>
        <div  class= "showCust" style="display:none;">收货地址：${order. CustAddress }</div>
        </td>
        
        <td><div class= "showCust" style="display:none;float:left;">商品编号：</div><a href="${pageContext.request.contextPath }/product/productview.action?productnumber=${order.ProductNumber }" class="tablelink">${order.ProductNumber }</a>
         <div  class= "showCust" style="display:none;">商品名称：${order. ProductName }</div>
        <div  class= "showCust" style="display:none;">商品价格：￥${order. QuotoPrice }</div>
        <div  class= "showCust" style="display:none;">商品规格：${order. ProductDescription }</div> 
        </td>
        <td><div class= "showCust" style="display:none;float:left;">分期次数：</div>${order.Times }
        
        <div  class= "showCust" style="display:none;">首付金额：￥${order. HasFirstPay }</div>
        <div  class= "showCust" style="display:none;">每期应还：￥${order. Repayment }</div>
        </td>
        <td><c:choose>
        <c:when test="${order.OrderStatus eq 0 }">待发货</c:when>
        <c:when test="${order.OrderStatus eq 1 }">发货中</c:when>
        <c:when test="${order.OrderStatus eq 2 }">还款中</c:when>
        <c:otherwise>订单完成</c:otherwise>
        </c:choose>
       </td>
          <td><a href="${pageContext.request.contextPath }/customer/customerstage.action?ordernumber=${order.OrderNumber }&&customerid=${order.CustomerId}" class="tablelink">查看明细</a>&nbsp;&nbsp;&nbsp;
      <c:choose>
        <c:when test="${order.OrderStatus eq 0 }"> <a href="javascript:if(confirm('您确认要执行该操作吗?'))location='${pageContext.request.contextPath }/order/statusChange.action?ordernumber=${order.OrderNumber }&&orderstatus=1'" class="tablelink "> 确认发货</a></c:when>
        <c:when test="${order.OrderStatus eq 1 }"><a href="#" class="tablelink click"> 查看物流</a></c:when>
        <c:when test="${order.OrderStatus eq 2 }"><a href="javascript:if(confirm('您确认要执行该操作吗?'))location='${pageContext.request.contextPath }/order/statusChange.action?ordernumber=${order.OrderNumber }&&orderstatus=3'" class="tablelink "> 确认收款</a></c:when>
        <c:otherwise>订单完成</c:otherwise>
        </c:choose>
         
          </td>
        </tr> 
        </c:if>
        </c:forEach>
         <c:if test="${count4 eq 0 }">
           <tr>
         <td><input name="" type="checkbox" value="" /></td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         </tr>
         </c:if>
        </tbody>
    </table>
    
   
    <div class="pagin">
    	 <ul class="paginList">
       
           <li>当前页</li>
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
	</div>
	<!-- 微生活订单 -->
	<div id="tab5" class="tabson">
	<ul class="seachform">
    
    <li><label>分期次数</label>  
    <div class="vocation">
    <select class="select3" onchange="window.location=this.value;setCookie3('select_3',this.selectedIndex);" id="select_3">
    <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=5&&orderStatus=${orderStatus }">全部</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=5&&orderStatus=${orderStatus }">查看全部</option>
    <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=1&&tabid=5&&orderStatus=${orderStatus }">1个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=3&&tabid=5&&orderStatus=${orderStatus }">3个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=6&&tabid=5&&orderStatus=${orderStatus }">6个月</option>
     <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=9&&tabid=5&&orderStatus=${orderStatus }">9个月</option>
      <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=12&&tabid=5&&orderStatus=${orderStatus }">12个月</option>
       <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=15&&tabid=5&&orderStatus=${orderStatus }">15个月</option>
        <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=18&&tabid=5&&orderStatus=${orderStatus }">18个月</option>
         <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=21&&tabid=5&&orderStatus=${orderStatus }">21个月</option>
          <option value="${pageContext.request.contextPath }/order/typeclassify.action?times=24&&tabid=5&&orderStatus=${orderStatus }">24个月</option>
    </select>
    </div>
    </li>
    
    <li><label>近期订单</label>  
    <div class="vocation">
     <select class="select3" onchange="window.location=this.value;setCookie4('select_4',this.selectedIndex);" id="select_4">
    <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=5&&orderStatus=${orderStatus}">全部</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?tabid=5&&orderStatus=${orderStatus}">查看全部</option>
    <option value="${pageContext.request.contextPath }/order/typerecent.action?times=0&&tabid=5&&orderStatus=${orderStatus}">今日订单</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=1&&tabid=5&&orderStatus=${orderStatus}">昨日订单</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=2&&tabid=5&&orderStatus=${orderStatus}">本月订单</option>
       <option value="${pageContext.request.contextPath }/order/typerecent.action?times=3&&tabid=5&&orderStatus=${orderStatus}">上月订单</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=4&&tabid=5&&orderStatus=${orderStatus}">近一星期</option>
     <option value="${pageContext.request.contextPath }/order/typerecent.action?times=5&&tabid=5&&orderStatus=${orderStatus}">近一个月</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=6&&tabid=5&&orderStatus=${orderStatus}">近三个月</option>
      <option value="${pageContext.request.contextPath }/order/typerecent.action?times=7&&tabid=5&&orderStatus=${orderStatus}">近一年</option> 
    </select>
    </div>
    </li>
    
    <li><label>订单状态</label>  
    <div class="vocation">
    <select class="select3" onchange="window.location=this.value;">
    <option>全部</option>
    <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=0">待发货</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=1">发货中</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=2">还款中</option>
     <option value="${pageContext.request.contextPath }/order/ordertype.action?orderStatus=3">已完成</option>
    </select>
    </div>
    </li>
    
     <li><label>综合查询</label><input name="searchkey" id="searchkey5"  type="text" class="scinput" value="${searchkey }"/></li>
     <li><input name="tabid" id="tid5" type="hidden" value="5" /></li><li><input name="orderStatus" id="orderStatus" type="hidden" value="${orderStatus }" /></li>
    <li><label>&nbsp;</label><input name="querybtn" type="button" class="scbtn" onclick="gosubmit(5);" value="查询"/></li>  
    
    </ul>
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li ><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=OrderDate&&sorttype=asc&&tabid=5"><span><img src="${__static__}/images/asc.png" /></span>按时间升序</a></li>
        <li ><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=OrderDate&&sorttype=desc&&tabid=5"><span><img src="${__static__}/images/desc.png" /></span>按时间降序</a></li>
        <li><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=Times&&sorttype=asc&&tabid=5"><span><img src="${__static__}/images/asc2.png" /></span>按分期次数升序</a></li>
        <li><a href="${pageContext.request.contextPath }/order/typesort.action?orderStatus=${orderStatus }&&sortkey=Times&&sorttype=desc&&tabid=5"><span><img src="${__static__}/images/desc2.png" /></span>按分期次数降序</a></li>
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
        <th>订单编号<i class="sort"><img src="${__static__}/images/px.gif" /></i></th>
         <th>下单日期</th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">用户编号</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">用户信息</div> 
        </th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">产品编号</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">产品信息</div></th>
        <th><div  class= "showNow" style="display:block;font-weight:bold;">分期次数</div>
        <div  class= "showNow" style="display:none;font-weight:bold;">分期详情</div></th>
        <th>订单状态</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
         <c:set var="count5" value="${0 }"/>
        <c:forEach items="${page.data}" var="order">
        
        <c:if test="${order.FunctionId eq 5 }">
         <c:set var="count5" value="${count5+1 }"/>
        <tr >
        <td><div style="float:left;"><input name="" type="checkbox" value="" /></div><div  class= "showCust" style="display:none;padding-top:10px;padding-bottom:10px;"><img src="${order.ImageUrls}" style="width:80px;"/></div></td>
        <td>${order.OrderNumber }</td>
        <td><fmt:formatDate value='${order.OrderDate}' pattern='yyyy-MM-dd HH:mm:ss'/></td>
         <td><div class= "showCust" style="display:none;float:left;">用户编号：</div><a href="#" class="tablelink">${order.CustomerId}</a>
        <div  class= "showCust" style="display:none;">用户昵称：${order. CustNick }</div>
        <div  class= "showCust" style="display:none;">真实姓名：${order. CustName }</div>
        <div  class= "showCust" style="display:none;">联系方式：${order. CustParentPhoneNum }</div>
        <div  class= "showCust" style="display:none;">收货地址：${order. CustAddress }</div>
        </td>
        
        <td><div class= "showCust" style="display:none;float:left;">商品编号：</div><a href="${pageContext.request.contextPath }/product/productview.action?productnumber=${order.ProductNumber }" class="tablelink">${order.ProductNumber }</a>
         <div  class= "showCust" style="display:none;">商品名称：${order. ProductName }</div>
        <div  class= "showCust" style="display:none;">商品价格：￥${order. QuotoPrice }</div>
        <div  class= "showCust" style="display:none;">商品规格：${order. ProductDescription }</div> 
        </td>
        <td><div class= "showCust" style="display:none;float:left;">分期次数：</div>${order.Times }
        
        <div  class= "showCust" style="display:none;">首付金额：￥${order. HasFirstPay }</div>
        <div  class= "showCust" style="display:none;">每期应还：￥${order. Repayment }</div>
        </td>
        <td><c:choose>
        <c:when test="${order.OrderStatus eq 0 }">待发货</c:when>
        <c:when test="${order.OrderStatus eq 1 }">发货中</c:when>
        <c:when test="${order.OrderStatus eq 2 }">还款中</c:when>
        <c:otherwise>订单完成</c:otherwise>
        </c:choose>
       </td>
        <td><a href="${pageContext.request.contextPath }/customer/customerstage.action?ordernumber=${order.OrderNumber }&&customerid=${order.CustomerId}" class="tablelink">查看明细</a>&nbsp;&nbsp;&nbsp;
      <c:choose>
        <c:when test="${order.OrderStatus eq 0 }"> <a href="javascript:if(confirm('您确认要执行该操作吗?'))location='${pageContext.request.contextPath }/order/statusChange.action?ordernumber=${order.OrderNumber }&&orderstatus=1'" class="tablelink "> 确认发货</a></c:when>
        <c:when test="${order.OrderStatus eq 1 }"><a href="#" class="tablelink click"> 查看物流</a></c:when>
        <c:when test="${order.OrderStatus eq 2 }"><a href="javascript:if(confirm('您确认要执行该操作吗?'))location='${pageContext.request.contextPath }/order/statusChange.action?ordernumber=${order.OrderNumber }&&orderstatus=3'" class="tablelink "> 确认收款</a></c:when>
        <c:otherwise>订单完成</c:otherwise>
        </c:choose>
         
          </td>
        </tr> 
        
        </c:if>
         
        </c:forEach>
       
        <c:if test="${count5 eq 0}">
          <tr>
         <td><input name="" type="checkbox" value="" /></td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         <td>无</td>
         </tr>
        </c:if>
        </tbody>
    </table>
    
   
    <div class="pagin">
    	 <ul class="paginList">
       
           <li>当前页</li>
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
	</div>
	
<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>
		</div>
		</div>
		</div>
		</div></div>
		 <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script> 
<div class="bottom"></div>
<div id="footer"><p>微你而生后台管理系统</p></div>

<!-- <script>navList(12);</script> -->

</body>
</html>
