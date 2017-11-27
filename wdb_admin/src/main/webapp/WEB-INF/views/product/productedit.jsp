
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
<link rel="stylesheet" href="${__static__}/kindeditor/themes/default/default.css" />
<link rel="stylesheet" href="${__static__}/kindeditor/plugins/code/prettify.css" />
<script charset="utf-8"  src="${__static__}/kindeditor/kindeditor-all.js"></script>
<script charset="utf-8"  src="${__static__}/kindeditor/lang/zh_CN.js"></script>
<script charset="utf-8"  src="${__static__}/kindeditor/plugins/code/prettify.js"></script>
<script>

KindEditor.ready(function(K) {

var editor1 = K.create('textarea[name="imageurls"]', {

cssPath : '${__static__}/kindeditor/plugins/code/prettify.css',

uploadJson : '${__static__}/kindeditor/jsp/upload_json.jsp',

fileManagerJson : '${__static__}/kindeditor/jsp/file_manager_json.jsp',

allowFileManager : true,

afterCreate : function() {

var self = this;

K.ctrl(document, 13, function() {

self.sync();

document.forms['example'].submit();

});

K.ctrl(self.edit.doc, 13, function() {

self.sync();

document.forms['example'].submit();

});

}

});

prettyPrint();

});

</script>
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




<style type="text/css">

input[name="demo[]"]{     width: 200px;
    height: 32px;
   line-height: 32px;
    border-top: solid 1px #a7b5bc;
    border-left: solid 1px #a7b5bc;
    border-right: solid 1px #ced9df;
    border-bottom: solid 1px #ced9df;
    background: url(../images/inputbg.gif) repeat-x;
    background-image: url(${__static__}/images/inputbg.gif);  
    margin-left:86px;
    margin-right:10px;
    
     }
 input[name="demo2[]"]{     width: 200px;
    height: 32px;
   line-height: 32px;
    border-top: solid 1px #a7b5bc;
    border-left: solid 1px #a7b5bc;
    border-right: solid 1px #ced9df;
    border-bottom: solid 1px #ced9df;
    background: url(../images/inputbg.gif) repeat-x;
    background-image: url(${__static__}/images/inputbg.gif);  
    margin-right:10px;
     }
    .label2{
        margin-left: 124px;
    line-height: 34px;
    display: block;
    float: left;
    }
</style>

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
    <li><a href="#">首页</a></li>
    <li><a href="#">商品管理</a></li>
    <li><a href="#">商品编辑</a></li>
    </ul>
    </div> 
    
    <div class="rightinfo">
   
    
    
 <div class="formtext">Hi，<b>admin</b>，欢迎您使用商品发布功能！</div>
    <form action="${pageContext.request.contextPath }/product/editSubmit.action" method="post" enctype="multipart/form-data">
    <input type="hidden" name="productnumber" value="${product.productnumber}"/>
    <ul class="forminfo">
  
    <li><label>产品名称<b>*</b></label><input name="productname" type="text" class="dfinput" value="${product.productname }"  style="width:344.985px;"/></li>
   
    <li><label>产品编号<b>*</b></label>  
    <input name="categoryid" type="text" class="dfinput" value="${product.categoryid }"  style="width:344.985px;"/>
    </li>
     <li><label>产品库存<b>*</b></label>  
    <input name="quantityonhand" type="text" class="dfinput" value="${product.quantityonhand }"  style="width:344.985px;"/>
    </li>
     <li><label>产品属性<b>*</b></label>  
    <input name="productdescription" type="text" class="dfinput" value="${product.productdescription }"  style="width:344.985px;"/>
    </li>
    
     <li><label>产品价格<b>*</b></label>  
    <input name="quotoprice" type="text" class="dfinput" value="${product.quotoprice }"  style="width:344.985px;"/>
    </li>
     <li><label>最低月供<b>*</b></label>  
    <input name="retailprice" type="text" class="dfinput" value="${product.retailprice }"  style="width:344.985px;"/>
    </li>
   <li>
<label>是否上架<b>*</b></label>
<cite>
<input type="radio" checked="checked" value="" name="1" >
是  &nbsp;  &nbsp; &nbsp; &nbsp; 
<input type="radio" value="" name="1">
否
</cite>
</li>
     <li><label>商品图片<b>*</b></label>  
     <img alt="" src="${product.imageurls }" style="width:150px;">
    </li>
    
   
    
    
    
			
		
    <li><label>商品描述<b>*</b></label>
    
   <textarea name="imageurls" cols="100" rows="8" ></textarea>
    
    </li>
     <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="马上发布"/>&nbsp;&nbsp;
     <a href="${pageContext.request.contextPath }/product/productcategory.action?categoryid=${product.categoryid }">返回</a>
     </li>
 
    </ul>
    </form>
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
<div id="footer"><p>微你而生后台管理系统</p></div>

<!-- <script>navList(12);</script> -->

</body>
</html>
