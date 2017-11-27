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
    KE.show({
        id : 'content7',
        cssPath : '${__static__}/css/main.css'
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
    <li><a href="JavaScript:void(0)">商品列表</a></li>
    </ul>
    </div>
		
    
     <div class="formbody">
    
    
    <div id="usual1" class="usual"> 
    
    <div class="itab">
  	<ul> 
    <li><a href="#tab0" class="selected">所有商品</a></li> 
    <li><a href="#tab1">微分期商品</a></li> 
    <li><a href="#tab2">微贷款商品</a></li> 
     <li><a href="#tab3">微未来商品</a></li>
      <li><a href="#tab4">微拼团商品</a></li>
       <li><a href="#tab5">微生活商品</a></li>
	
  	</ul>
    </div>  
    <div id="tab0" class="tabson">

      <ul class="seachform">
    
    <li><label>综合查询</label><input name="search" type="text" class="scinput" /></li>
    <li><label>最低月供</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>首付比例</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>所属分类</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>&nbsp;</label><input name="" type="button" class="scbtn" value="查询"/></li>
    
    </ul>
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li><a href="${pageContext.request.contextPath }/product/productadd.action"><span><img src="${__static__}/images/t01.png" /></span>添加 </a></li>
        <li class="click"><span><img src="${__static__}/images/t02.png" /></span>修改</li>
        <li><span><img src="${__static__}/images/t03.png" /></span>删除</li>
        <li><span><img src="${__static__}/images/t04.png" /></span>统计</li>
        </ul>
        
        
        <ul class="toolbar1">
       <li onclick="showHideCode()"><span><img src="${__static__}/images/t05.png" /></span>
 <div  class= "showbtn1" style="display:inline;">切换详情/精简视图</div></li>       
        </ul>
    
    </div>
   
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>商品编号<i class="sort"><img src="${__static__}/images/px.gif" /></i></th>
        <th>商品名称</th>
        <th>商品属性</th>
        <th>商品价格</th>
        <th>最低月供</th>
        <th>所属分类</th>
        <th>操作</th>
        </tr>
        </thead>
     
        
        
          <tbody>
      
        <c:forEach items="${page.data}" var="product">
          <script type="text/javascript">
        
        
       
          function showHideCode(){
          var showCust="show"+${product.ProductNumber };
         
             $(".showCust").toggle();
              $(".showNow").toggle();
            
          }
          </script>
       
      
        <tr >
        <td><input name="" type="checkbox" value="" /></td>
        <td><div style="float:left;">${product.ProductNumber }</div> <div  class= "showCust" style="display:none;padding-top:10px;padding-bottom:10px;"><img src="${product.ImageUrls}" style="width:80px;"/></div></td>
        <td>${product.ProductName }<div  class= "showCust" style="display:none;">剩余库存：${product.QuantityOnHand }件</div></td>
        <td>${product.ProductDescription }</td>
        <td>￥${product.QuotoPrice }</td>
        <td>￥${product.RetailPrice }</td>
        <td><c:choose>
        <c:when test="${product.FunctionId eq 1 }">微分期</c:when>
        <c:when test="${product.FunctionId eq 2 }">微贷款</c:when>
        <c:when test="${product.FunctionId eq 3 }">微未来</c:when>
        <c:when test="${product.FunctionId eq 4 }">微拼团</c:when>
        <c:otherwise>微生活</c:otherwise>
        </c:choose>
       </td>
        <td><a href="${pageContext.request.contextPath }/product/productview.action?productnumber=${product.ProductNumber }" class="tablelink">查看</a>&nbsp;&nbsp;&nbsp;
    <a href="${pageContext.request.contextPath }/product/productedit.action?productnumber=${product.ProductNumber }" class="tablelink">编辑</a>
         
          </td>
        </tr> 
       
        </c:forEach>
        
        </tbody>
        
    </table>
    
   
     <div class="pagin">
        <ul class="paginList">
         <jsp:include page="../public/page.jsp">
                <jsp:param value="${pageContext.request.contextPath }/product/productlist.action" name="url"/>
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
    
    <li><label>综合查询</label><input name="" type="text" class="scinput" /></li>
    <li><label>最低月供</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>首付比例</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>所属分类</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>&nbsp;</label><input name="" type="button" class="scbtn" value="查询"/></li>
    
    </ul>
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="${__static__}/images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="${__static__}/images/t02.png" /></span>修改</li>
        <li><span><img src="${__static__}/images/t03.png" /></span>删除</li>
        <li><span><img src="${__static__}/images/t04.png" /></span>统计</li>
        </ul>
        
        
        <ul class="toolbar1">
       <li onclick="showHideCode()"><span><img src="${__static__}/images/t05.png" /></span>
         <div  class= "showbtn1" style="display:inline;">切换详情/精简视图</div></li> 
        </ul>
    
    </div>
   
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>商品编号<i class="sort"><img src="${__static__}/images/px.gif" /></i></th>
        <th>商品名称</th>
        <th>商品属性</th>
        <th>商品价格</th>
        <th>最低月供</th>
        <th>所属分类</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="count1" value="${0 }"/>
        <c:forEach items="${page.data}" var="product">
        
        <c:if test="${product.FunctionId eq 1 }">
        <c:set var="count1" value="${count1+1 }"/>
        <tr >
        <td><input name="" type="checkbox" value="" /></td>
        <td><div style="float:left;">${product.ProductNumber }</div><div  class= "showCust" style="display:none;padding-top:10px;padding-bottom:10px;"><img src="${product.ImageUrls}" style="width:80px;"/></div></td>
        <td>${product.ProductName }<div  class= "showCust" style="display:none;">剩余库存：${product.QuantityOnHand }件</div></td>
        <td>${product.ProductDescription }</td>
        <td>￥${product.QuotoPrice }</td>
        <td>￥${product.RetailPrice }</td>
        <td><c:choose>
        <c:when test="${product.FunctionId eq 1 }">微分期</c:when>
        <c:when test="${product.FunctionId eq 2 }">微贷款</c:when>
        <c:when test="${product.FunctionId eq 3 }">微未来</c:when>
        <c:when test="${product.FunctionId eq 4 }">微拼团</c:when>
        <c:otherwise>微生活</c:otherwise>
        </c:choose>
       </td>
        <td><a href="${pageContext.request.contextPath }/product/productview.action?productnumber=${product.ProductNumber }" class="tablelink">查看</a>&nbsp;&nbsp;&nbsp;
    <a href="${pageContext.request.contextPath }/product/productedit.action?productnumber=${product.ProductNumber }" class="tablelink">编辑</a>
         
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
        <li>
         当前页
         </li>
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
    
    <li><label>综合查询</label><input name="" type="text" class="scinput" /></li>
    <li><label>最低月供</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>首付比例</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>所属分类</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>&nbsp;</label><input name="" type="button" class="scbtn" value="查询"/></li>
    
    </ul>
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="${__static__}/images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="${__static__}/images/t02.png" /></span>修改</li>
        <li><span><img src="${__static__}/images/t03.png" /></span>删除</li>
        <li><span><img src="${__static__}/images/t04.png" /></span>统计</li>
        </ul>
        
        
        <ul class="toolbar1">
       <li onclick="showHideCode()"><span><img src="${__static__}/images/t05.png" /></span>
         <div  class= "showbtn1" style="display:inline;">切换详情/精简视图</div></li> 
        </ul>
    
    </div>
   
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>商品编号<i class="sort"><img src="${__static__}/images/px.gif" /></i></th>
        <th>商品名称</th>
        <th>商品属性</th>
        <th>商品价格</th>
        <th>最低月供</th>
        <th>所属分类</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="count2" value="${0 }"/>
        <c:forEach items="${page.data}" var="product">
        <c:if test="${product.FunctionId eq 2 }">
        <c:set var="count2" value="${count2+1 }"/>
        <tr >
        <td><input name="" type="checkbox" value="" /></td>
        <td><div style="float:left;">${product.ProductNumber }</div><div  class= "showCust" style="display:none;padding-top:10px;padding-bottom:10px;"><img src="${product.ImageUrls}" style="width:80px;"/></div></td>
        <td>${product.ProductName }<div  class= "showCust" style="display:none;">剩余库存：${product.QuantityOnHand }件</div></td>
        <td>${product.ProductDescription }</td>
        <td>￥${product.QuotoPrice }</td>
        <td>￥${product.RetailPrice }</td>
        <td><c:choose>
        <c:when test="${product.FunctionId eq 1 }">微分期</c:when>
        <c:when test="${product.FunctionId eq 2 }">微贷款</c:when>
        <c:when test="${product.FunctionId eq 3 }">微未来</c:when>
        <c:when test="${product.FunctionId eq 4 }">微拼团</c:when>
        <c:otherwise>微生活</c:otherwise>
        </c:choose>
       </td>
        <td><a href="${pageContext.request.contextPath }/product/productview.action?productnumber=${product.ProductNumber }" class="tablelink">查看</a>&nbsp;&nbsp;&nbsp;
      
         <a href="${pageContext.request.contextPath }/product/productedit.action?productnumber=${product.ProductNumber }" class="tablelink">编辑</a>
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
        <li>
         当前页
         </li>
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
    
    <li><label>综合查询</label><input name="" type="text" class="scinput" /></li>
    <li><label>最低月供</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>首付比例</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>所属分类</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>&nbsp;</label><input name="" type="button" class="scbtn" value="查询"/></li>
    
    </ul>
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="${__static__}/images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="${__static__}/images/t02.png" /></span>修改</li>
        <li><span><img src="${__static__}/images/t03.png" /></span>删除</li>
        <li><span><img src="${__static__}/images/t04.png" /></span>统计</li>
        </ul>
        
        
        <ul class="toolbar1">
       <li onclick="showHideCode()"><span><img src="${__static__}/images/t05.png" /></span>
         <div  class= "showbtn1" style="display:inline;">切换详情/精简视图</div></li> 
        </ul>
    
    </div>
   
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>商品编号<i class="sort"><img src="${__static__}/images/px.gif" /></i></th>
        <th>商品名称</th>
        <th>商品属性</th>
        <th>商品价格</th>
        <th>最低月供</th>
        <th>所属分类</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="count3" value="${0 }"/>
        <c:forEach items="${page.data}" var="product">
        <c:if test="${product.FunctionId eq 3 }">
        <c:set var="count3" value="${count3+1 }"/>
        <tr >
        <td><input name="" type="checkbox" value="" /></td>
        <td><div style="float:left;">${product.ProductNumber }</div> <div  class= "showCust" style="display:none;padding-top:10px;padding-bottom:10px;"><img src="${product.ImageUrls}" style="width:80px;"/></div></td>
        <td>${product.ProductName }<div  class= "showCust" style="display:none;">剩余库存：${product.QuantityOnHand }件</div></td>
        <td>${product.ProductDescription }</td>
        <td>￥${product.QuotoPrice }</td>
        <td>￥${product.RetailPrice }</td>
        <td><c:choose>
        <c:when test="${product.FunctionId eq 1 }">微分期</c:when>
        <c:when test="${product.FunctionId eq 2 }">微贷款</c:when>
        <c:when test="${product.FunctionId eq 3 }">微未来</c:when>
        <c:when test="${product.FunctionId eq 4 }">微拼团</c:when>
        <c:otherwise>微生活</c:otherwise>
        </c:choose>
       </td>
        <td><a href="${pageContext.request.contextPath }/product/productview.action?productnumber=${product.ProductNumber }" class="tablelink">查看</a>&nbsp;&nbsp;&nbsp;
      <a href="${pageContext.request.contextPath }/product/productedit.action?productnumber=${product.ProductNumber }" class="tablelink">编辑</a>
         
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
        <li>
         当前页
         </li>
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
    
    <li><label>综合查询</label><input name="" type="text" class="scinput" /></li>
    <li><label>最低月供</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>首付比例</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>所属分类</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>&nbsp;</label><input name="" type="button" class="scbtn" value="查询"/></li>
    
    </ul>
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="${__static__}/images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="${__static__}/images/t02.png" /></span>修改</li>
        <li><span><img src="${__static__}/images/t03.png" /></span>删除</li>
        <li><span><img src="${__static__}/images/t04.png" /></span>统计</li>
        </ul>
        
        
        <ul class="toolbar1">
       <li onclick="showHideCode()"><span><img src="${__static__}/images/t05.png" /></span>
        <div  class= "showbtn1" style="display:inline;">切换详情/精简视图</div></li> 
        </ul>
    
    </div>
   
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>商品编号<i class="sort"><img src="${__static__}/images/px.gif" /></i></th>
        <th>商品名称</th>
        <th>商品属性</th>
        <th>商品价格</th>
        <th>最低月供</th>
        <th>所属分类</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
          <c:set var="count4" value="${0 }"/>
        <c:forEach items="${page.data}" var="product">
        <c:if test="${product.FunctionId eq 4 }">
          <c:set var="count4" value="${count4+1 }"/>
        <tr >
        <td><input name="" type="checkbox" value="" /></td>
        <td><div style="float:left;">${product.ProductNumber }</div> <div  class= "showCust" style="display:none;padding-top:10px;padding-bottom:10px;"><img src="${product.ImageUrls}" style="width:80px;"/></div></td>
        <td>${product.ProductName }<div  class= "showCust" style="display:none;">剩余库存：${product.QuantityOnHand }件</div></td>
        <td>${product.ProductDescription }</td>
        <td>￥${product.QuotoPrice }</td>
        <td>￥${product.RetailPrice }</td>
        <td><c:choose>
        <c:when test="${product.FunctionId eq 1 }">微分期</c:when>
        <c:when test="${product.FunctionId eq 2 }">微贷款</c:when>
        <c:when test="${product.FunctionId eq 3 }">微未来</c:when>
        <c:when test="${product.FunctionId eq 4 }">微拼团</c:when>
        <c:otherwise>微生活</c:otherwise>
        </c:choose>
       </td>
        <td><a href="${pageContext.request.contextPath }/product/productview.action?productnumber=${product.ProductNumber }" class="tablelink">查看</a>&nbsp;&nbsp;&nbsp;
     <a href="${pageContext.request.contextPath }/product/productedit.action?productnumber=${product.ProductNumber }" class="tablelink">编辑</a>
         
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
        <li>
         当前页
         </li>
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
    
    <li><label>综合查询</label><input name="" type="text" class="scinput" /></li>
    <li><label>最低月供</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>首付比例</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>所属分类</label>  
    <div class="vocation">
    <select class="select3">
    <option>全部</option>
    <option>其他</option>
    </select>
    </div>
    </li>
    
    <li><label>&nbsp;</label><input name="" type="button" class="scbtn" value="查询"/></li>
    
    </ul>
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="${__static__}/images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="${__static__}/images/t02.png" /></span>修改</li>
        <li><span><img src="${__static__}/images/t03.png" /></span>删除</li>
        <li><span><img src="${__static__}/images/t04.png" /></span>统计</li>
        </ul>
        
        
        <ul class="toolbar1">
       <li onclick="showHideCode()"><span><img src="${__static__}/images/t05.png" /></span>
        <div  class= "showbtn1" style="display:inline;">切换详情/精简视图</div>
        </ul>
    
    </div>
   
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>商品编号<i class="sort"><img src="${__static__}/images/px.gif" /></i></th>
        <th>商品名称</th>
        <th>商品属性</th>
        <th>商品价格</th>
        <th>最低月供</th>
        <th>所属分类</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
         <c:set var="count5" value="${0 }"/>
        <c:forEach items="${page.data}" var="product">
        
        <c:if test="${product.FunctionId eq 5 }">
         <c:set var="count5" value="${count5+1 }"/>
        <tr >
        <td><input name="" type="checkbox" value="" /></td>
        <td><div style="float:left;">${product.ProductNumber }</div> <div  class= "showCust" style="display:none;padding-top:10px;padding-bottom:10px;"><img src="${product.ImageUrls}" style="width:80px;"/></div></td>
        <td>${product.ProductName }<div  class= "showCust" style="display:none;">剩余库存：${product.QuantityOnHand }件</div></td>
        <td>${product.ProductDescription }</td>
        <td>￥${product.QuotoPrice }</td>
        <td>￥${product.RetailPrice }</td>
        <td><c:choose>
        <c:when test="${product.FunctionId eq 1 }">微分期</c:when>
        <c:when test="${product.FunctionId eq 2 }">微贷款</c:when>
        <c:when test="${product.FunctionId eq 3 }">微未来</c:when>
        <c:when test="${product.FunctionId eq 4 }">微拼团</c:when>
        <c:otherwise>微生活</c:otherwise>
        </c:choose>
       </td>
        <td><a href="${pageContext.request.contextPath }/product/productview.action?productnumber=${product.ProductNumber }" class="tablelink">查看</a>&nbsp;&nbsp;&nbsp;
     <a href="${pageContext.request.contextPath }/product/productedit.action?productnumber=${product.ProductNumber }" class="tablelink">编辑</a>
         
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
        <li>
         当前页
         </li>
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
