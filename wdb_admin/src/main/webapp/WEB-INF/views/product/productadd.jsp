
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

<script type="text/javascript">
$(function(){
	$("#demo1").easyinsert();//最简单的应用
	$("#demo2").easyinsert({
		name: ["demo[]", "demo2[]"],//可以同时添加两个（或更多），name值相同也必须分开设置，name数组的长度就是每组input的个数。type、value、maxlength、className四种属性，若同组组员的设置一样，可以只设置一次。
		//value: ["默认值2-1", "默认值2-2"],//可以给同组input分别设置默认值
		maxlength: 15,//每组input的maxlength都一样，无需使用数组
		classname: ["demo2", "demo2"],//不用我解释了吧
		
		toplimit: 0,//可以添加组数上限（默认是0，表示无上限），它是总管，so，name相当于小组组长
		initValue: [//初始化的时候，各input的value就是归它管，必须是数组
			["", ""]
		]
	});
	
});

;(function($){
	$.fn.extend({
		"easyinsert": function(o){
			o = $.extend({
				//触发器
				clicker: null,//根据class（或id）选择，默认.next()获取
				//父标签
				wrap: "li",
				name: "i-text",
				type: "text",
				value: "",
				maxlength: 20,
				className: "demo2",
				
				//新增上限值
				toplimit: 0,//0表示不限制
				//初始化值，二维数组
				initValue: null//用于修改某资料时显示已有的数据
			}, o || {});
			var oo = {
				remove: "<a href=\"#nogo\" class=\"remove\">移除</a>",
				error1: "参数配置错误，数组的长度不一致，请检查。",
				error2: "参数配置错误，每组初始化值都必须是数组，请检查。"
			}
			//容器
			var $container = $(this);
			var allowed = true;
			//把属性拼成数组（这步不知道是否可以优化？）
			var arrCfg = new Array(o.name, o.type, o.value, o.maxlength, o.className);
			//arr ==> [name, type, value, maxlength, className]
			var arr = new Array();
			$.each(arrCfg, function(i, n){
				if ( $.isArray(n) ) {
					arr[i] = n;
				} else {
					arr[i] = new Array();
					if ( i === 0 ) {
						arr[0].push(n);
					}else{
						//补全各属性数组（根据name数组长度）
						$.each(arr[0], function() {
							arr[i].push(n);
						});
					}
				}
				//判断各属性数组的长度是否一致
				if ( arr[i].length !== arr[0].length ) {
					allowed = false;
					$container.text(oo.error1);
				}
			});
			if ( allowed ) {
				//获取触发器
				var $Clicker = !o.clicker ? $container.next() : $(o.clicker);
				$Clicker.bind("click", function() {
					//未添加前的组数
					var len = $container.children(o.wrap).length;
					//定义一个变量，判断是否已经达到上限
					var isMax = o.toplimit === 0 ? false : (len < o.toplimit ? false : true);
					if ( !isMax ) {//没有达到上限才允许添加
						var $Item = $("<"+ o.wrap +">").appendTo( $container );
						$.each(arr[0], function(i) {
							switch ( arr[1][i] ) {
								case "select"://下拉框
									var option = "";
									$.each(arr[2][i], function(i, n) {
										option += "<option value='"+ n +"'>"+ i +"</option>";
									});
									$("<select>", {
										name: arr[0][i],
										className: arr[4][i]
									}).append( option ).appendTo( $Item );
									break;
								case "custom"://自定义内容，支持html
									$Item.append( arr[2][i] );
									break;
								default://默认是input
									$("<input>", {//jQuery1.4新增方法
										name: arr[0][i],
										type: arr[1][i],
										value: arr[2][i],
										maxlength: arr[3][i],
										className: arr[4][i]
									}).appendTo( $Item );
							}
						});
						$Item = $container.children(o.wrap);
						//新组数
						len = $Item.length;
						if ( len > 1 ) {
							$Item.last().append(oo.remove);
							if ( len === 2 ) {//超过一组时，为第一组添加“移除”按钮
								$Item.first().append(oo.remove);
							}
						}
						$Item.find(".remove").click(function(){
							//移除本组
							$(this).parent().remove();
							//统计剩下的组数
							len = $container.children(o.wrap).length;
							if ( len === 1 ) {//只剩一个的时候，把“移除”按钮干掉
								$container.find(".remove").remove();
							}
							//取消“移除”按钮的默认动作
							return false;
						});
					}
					//取消触发器的默认动作
					return false;
				});
				//初始化
				if ( $.isArray(o.initValue) ) {//判断初始值是否是数组（必需的）
					$.each(o.initValue, function(i, n) {
						if ( !$.isArray(n) ) {
							$container.empty().text(oo.error2);
							return false;
						}else{
							if ( n.length !== arr[0].length ) {
								$container.empty().text(oo.error1);
								return false;
							}
						}
						var arrValue = new Array();
						//初始值替换默认值
						$.each(n, function(j, m) {
							arrValue[j] = arr[2][j]
							arr[2][j] = m;
						});
						$Clicker.click();
						//默认值替换初始值
						$.each(arrValue, function(j, m) {
							arr[2][j] = m;
						});
						//上面这种[移形换位法]不知道效率怎么样，我想不出别的更好的方法
					});
				}else{
					$Clicker.click();
				}
			}
		}
	});
})(jQuery);


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
    background-image: url(http://localhost:8080/wdb_admin/static/images/inputbg.gif);  
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
    background-image: url(http://localhost:8080/wdb_admin/static/images/inputbg.gif);  
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
    <li><a href="JavaScript:void(0)">首页</a></li>
    <li><a href="JavaScript:void(0)">商品管理</a></li>
    <li><a href="JavaScript:void(0)">商品添加</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
   
    
    
 <div class="formtext">Hi，<b>admin</b>，欢迎您使用商品发布功能！</div>
    <form action="${pageContext.request.contextPath }/product/productaddCheck.action" method="post">
    <ul class="forminfo">
    <li><label>产品名称<b>*</b></label><input name="productname" type="text" class="dfinput" placeholder="请填写产品名称"  style="width:344.985px;"/></li>
   
    <li><label>产品编号<b>*</b></label>  
    <input name="categoryid" type="text" class="dfinput" placeholder="请填写产品编号,若不填写将自动填写"  style="width:344.985px;"/>
    </li>
     <li><label>产品库存<b>*</b></label>  
    <input name="quantityonhand" type="text" class="dfinput" placeholder="请填写产品库存"  style="width:344.985px;"/>
    </li>
    <li><label>产品分类<b>*</b></label>
    
    <div class="vocation">
    <select class="select1" name="functionid">
    <option value="1">微分期</option>
     <option value="2">微贷款</option>
    <option value="3">微未来</option>
    <option value="4">微拼团</option>
    <option value="5">微生活</option>
    </select>
    </div>
    
    
    
    </li>
    <li><label>产品价格<b>*</b></label>
    
     <div class="usercity"> 
    
    <div class="cityleft">
      <input name="quotoprice" type="text" class="dfinput" placeholder="请填写产品价格"  style="width:200px;"/>
    
    </div>
    
    <div class="cityright">
     <input name="retailprice" type="text" class="dfinput" placeholder="请填写月供价格"  style="width:200px;"/>
  
    </div>
    
    </div>
    </li>
    
   
     <li id="demo2">
      
     <label>商品属性<b>*</b></label> 
        <label>例：手机颜色</label> 
      <div class="label2">白色，黑色</div>
      </li>
     
     <a href="#">+ 添加属性</a>
  
    
    
			
		
    <li><label>商品描述<b>*</b></label>
    
   <textarea name="imageurls" cols="100" rows="8"></textarea>
    
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
   <!--  <li><label>&nbsp;</label><input name="" type="button" class="btn" value="马上发布"/></li> -->
     <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="马上发布"/></li>
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
<div id="footer"><p>微贷吧后台管理系统</p></div>

<!-- <script>navList(12);</script> -->

</body>
</html>
