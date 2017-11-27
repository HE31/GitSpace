<%@ page language="java"  import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
   
    
   <link rel="icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../css/base.css">
	 <link rel="stylesheet" type="text/css" href="../css/register.css">
   <!-- <link rel="stylesheet" type="text/css" href="../css/global.css">
    <link rel="stylesheet" type="text/css" href="../css/view.css">-->

<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/goods.css" />
    <script charset="utf-8" src="../js/v.js"></script>
    <!-- requirejs main -->
<link rel="stylesheet" type="text/css" href="../css/index1.css">

<link rel="stylesheet" type="text/css" href="../css/goods.css?t=20150915">
<link rel="stylesheet" type="text/css" href="../css/cs-select.css" />
		<link rel="stylesheet" type="text/css" href="../css/cs-skin-rotate.css" />

<style>
ul { list-style-type: none;}
li { display: inline-block;}
li { margin: 15px 0;margin-left:20px;}
input.labelauty + label { font: 25px "Microsoft Yahei";color:#47AFEF;padding-top:20px;padding-bottom:20px;padding-left:30px;padding-right:30px;}
</style>
</head>
<script>
    var timeoutID = null,
      j=0;
     
      
function calculate(){
    var  temp = document.getElementsByTagName("input"), 
       
       
        month=document.getElementById("month");
 
   
   for(var i=0;i<=temp.length-1;i++){
       if(temp[i].type=="radio"){
	   
       	if(temp[i].checked){
		
		v=temp[i].value;
		
		}
       	}
   } 

   
  
   profit.value= parseInt(eval(v*0.01*month.value*0.5));
 
  //由于js方法和选择分期选项冲突，不能通过onchange方法触发，故只能通过settimeout延迟执行递归触发解决

  if(j<=500){

  j++; 
 timeoutID=setTimeout(function() { calculate(); },500);
   }else{
  /* alert(j); */
  clearTimeout(timeoutID); 
  } 
  setTimeout(function() { calculate(); },500);
 monthpay.value=(parseInt(v)+parseInt(profit.value))/month.value;
 
  if(month.value=="0"){
  profit.innerHTML="请选择分期";
   monthpay.innerHTML="请选择分期";
   //设置按钮不可选
   document.getElementById("getloan").disabled=true;
  }else if(month.value=="1"&&v=="1000.0"){
   profit.innerHTML="￥0.00";
   monthpay.innerHTML="￥1000.00";
   document.getElementById("getloan").disabled=false;
  }else{
  profit.innerHTML="￥"+profit.value.toFixed(2);
   monthpay.innerHTML="￥"+monthpay.value.toFixed(2);
    document.getElementById("getloan").disabled=false;
  }

}

   




</script>

<body>
	
    <!-- begin topbar -->
    <div class="clearfix header-help-tel">
        <div class="layout1200">
            <div class="fl fs12">
            ${custnick},欢迎来到微你而生</div>
            <div class="fr fs12">
                <a class="fl mr20" href="${pageContext.request.contextPath }/customer/Personal.action" target="_blank">个人中心</a>
                <span class="fl mr20">咨询热线：888-888-8888</span>
                <span class="fl orange-color hand" id="J_Report">我要举报</span>
            </div>
        </div>
    </div>
	
	
    <!-- end topbar -->    <!-- begin header -->
    <div id="header">
        <div class="header-top">
            <div class="layout1200">
                <div class="clearfix">
                    <a class="fl header-logo"  title="微你而生——大学生理想分期贷款服务平台"></a>
               
				
				  <div class="fr header-search">
                        <form class="clearfix header-search-box" action="${pageContext.request.contextPath }/products/productsSearch.action" method="get" target="_blank">
                            <input type="text" class="fl header-search-input" id="text" name="searchkey" placeholder="同学们都在热搜 iphone6s" value="" />
                            <input type="submit" class="fl block header-search-btn bigfs" value="搜索" />
                        </form>
				 </div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="layout1200 clearfix">
               
            </div>
        </div>
    </div>
    <!-- end header -->

    <!-- begin menu -->
   
       <div class="header-bottom">
            <div class="layout1200 clearfix">
                <div class="layout1200 clearfix">
                <div class="header-nav-box fl">
                    <div class="fl first hand noIndexMenu">商品分类</div>
                    <a class="fl " href="${pageContext.request.contextPath }/products/weidaiba.action">首页</a>

                    <a class="fl  " href="${pageContext.request.contextPath }/products/productsList.action">微分期</a>
                    <a class="fl current" href="${pageContext.request.contextPath }/products/loan.action">微贷款</a> 
					 <a class="fl " href="${pageContext.request.contextPath }/products/travel.action">微拼团</a>
					  <a class="fl " href="${pageContext.request.contextPath }/products/train.action">微未来</a>
                    <a class="fl " href="${pageContext.request.contextPath }/products/appdownload.action">App下载</a> 
                    <a class="fl " href="/merchantintroduce.html">客服中心</a>
                    
                </div>
                <div class="header-user-box fr">
	                <a class="fl mr5" href="/goreg.html">注册</a> 
	                <a class="fl ml10 split" href="/login.html">登录</a>
                    <a class="fl ml15 go-paypage-btn" href="${pageContext.request.contextPath }/customer/Personal.action">我要还款</a>                 
               </div>
            </div>
        </div>
    </div>
    <!-- end header -->

   
    
    
	
	
	
	<div class="pay-box">
<div class="pay-wrap">
<div class="pay-main">
	<center><img src="../images/loanad.png"></center>
	
	<br><br><br><br>
	<form action="${pageContext.request.contextPath }/order/loanOrderSubmit.action" method="post">
	<div class="pay-grid">
				 <h3 class="pay-method">&nbsp;&nbsp;&nbsp;&nbsp;微贷款</h3><br>
				</div>
				 <div class="hrStyle"></div>
				
				<div class="pay-grid"><br><br>
					
					<div class="ziti2 "><font color="#FF7F00">贷款金额：</font></div>
			 		
	    <ul class="dowebok">  
	    <c:forEach items="${wdbProductsList }" var="product">  
	<!--     取整 -->
	    <fmt:parseNumber integerOnly="true" value="${product.getQuotoprice()}" var="price" />
        <li><input type="radio" name="loan"    value="${product.getQuotoprice()}" data-labelauty="${price}元" onchange="calculate()"></li>
           
	
	</c:forEach> 
		</ul> 
</p>
   

<script src="../js/jquery-1.8.3.min.js"></script>
<script src="../js/jquery-labelauty.js"></script>
<script>
$(function(){
	$(':input').labelauty();
});
</script>

 </div><br><br><br>                          
	<div class="pay-grid">
	<div class="ziti2 "><font color="#FF7F00">分期选项：</font></div><br>
			<section>
				
			
  


<select class="cs-select cs-skin-rotate" name="times" id="month" onchange="calculate()">
					<option value="0" >选择分期：</option>
					
					<option value="1" selected>1个月</option>
					<option value="3">3个月</option>
					<option value="6">6个月</option>
					<option value="9">9个月</option>
					<option value="12">12个月</option>
					<option value="15">15个月</option>
					<option value="18">18个月</option>
				</select>
			</section>
		</div><!-- /container -->
		 <script src="../js/classie.js"></script> 
		 <script src="../js/selectFx.js"></script> 
		 <script>
			(function() {
				[].slice.call( document.querySelectorAll( 'select.cs-select' ) ).forEach( function(el) {	
					new SelectFx(el);
				} );
			})();
			
			
			
		</script> <br><br><br><br><br><br><br>
		
		
			
					<div class="hrStyle"></div>
<br><br>
					<div class="pay-grid">
				 <p class="pay-font">贷款手续费：<font color="#FF7F00" id="profit">￥0.00</font></p>
					<p class="pay-font">每期应还：<font color="#FF7F00" id="monthpay">￥1000.00</font></p>
					<input type="submit"  class="common-btn orange eleb " id="getloan" value="立即贷款">	
					</div>		
<br><br><br>
</form>

<div class="videobox"><div class="ziti2 "><div class="ziti2 "><font color="#FF7F00">微贷款说明：</font></div><br>
<p class="pay-font">1.微贷款功能需绑定用户银行卡，未绑定将打款失败。</p>
<p class="pay-font">2.微你而生转账至您银行卡账户后，账单即生成。</p>
<p class="pay-font">3.微贷款不支持退换货。</p>



</div>
</div>

	
<br><br>

	</div></div>
	

    <!-- begin footer -->
    <div class="footer">
        <div class="layout1200">
            <div class="clearfix">
            <div class="fl bdLine">
                <ul class="fl unit ml15" style="width:120px">
                    <li class="first"><em>微你而生</em></li>
                    <li><a href="#" target="_blank">关于我们</a></li>
                    <li><a href="#" target="_blank">加入我们</a></li>
                    <li><a href="#" target="_blank">联系我们</a></li>
                    <li><a href="#" target="_blank">网站地图</a></li>
                </ul>
            </div>
            <div class="fl bdLine">
                <ul class="fl unit ml30" style="width:140px">
                    <li class="first"><em>新手上路</em></li>
                    <li><a href="#" target="_blank">如何领取信用额度</a></li>
                    <li><a href="#" target="_blank">办理需要的资料</a></li>
                    <li><a href="#" target="_blank">审核需要多久</a></li>
                </ul>
        
                </div>
                <div class="fl bdLine">
                <ul class="fl unit ml30" style="width:155px">
                    <li class="first"><em>关于账户</em></li>
                    <li><a href="#" target="_blank">账单什么时候生成</a></li>
                    <li><a href="#" target="_blank">如何申请分期还款</a></li>
                    <li><a href="#" target="_blank">如何申请账单延期</a></li>
                </ul>
          
                </div>
                <div class="fl bdLine">
                <ul class="fl unit ml30" style="width:230px">
                     <li class="first"><em>常见问题</em></li>
                    <li><a href="#" target="_blank">你们的商品都是正品吗？</a></li>
                    <li><a href="#" target="_blank">消费后什么时候能还款？</a></li>
                    <li><a href="#" target="_blank">什么是信用支付？</a></li>
                    <li><a href="#" target="_blank">如何申请售后问题？</a></li>
                </ul>
                
                </div>
                   <div class="fl bdLine">
                <ul class="fl unit ml30" style="width:175px">
                   <li class="first"><em>手机微你而生</em></li>
                    <li></li>
                    <li><a href="JavaScript:;" target="_blank"><img src="../images/ip_icon.jpg"></a></li>
                    <li><a href="http://www.weidaiba.com/download/app"><img src="../images/ad_icon.jpg"></a></li>
                  
                </ul>
                    </div>
                <div class="fl ml30">
                    <div class="clearfix">
                        <div class="kefu-bottom fs18 gc6 fl">
                            <div class="clearfix">
                                <div class="common-icon fl footer-cell-icon"></div>
                               
                            </div>
                        </div>
                    </div>
                    
                    </div>
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom tac gc6">
        
    </div>
    <!-- end footer -->
    
   	<script type="text/javascript">
	    var aixuedai = {
	    	path:'/',
	        staticpath: '#',
	        paydomain: '#',
	        versions: '20150919715000',
	        userid: "",
	        useraccounts: ""
	    };
	    var _hmt = _hmt || [];
	    (function() {
	      var hm = document.createElement("script");
	      hm.src = "//hm.baidu.com/hm.js?05bc75e091a9ad86db4cf6f1e1fe6927";
	      var s = document.getElementsByTagName("script")[0]; 
	      s.parentNode.insertBefore(hm, s);
	    })();
        </script>
	<!-- requirejs main -->
	
        
        
        <script src="../js/list.js"></script>
       <!--  头部下拉列表js -->
   <script type="text/javascript" src="../js/jia.js" charset="utf-8"></script>
<script type="text/javascript">
requirejs(['../js/detail.js?v=20150915']);
</script> 
<div id="userdata_el" _oklj_uj="4UTX7O3REAERDF6A" style="visibility: hidden; position: absolute;"></div></body></html>