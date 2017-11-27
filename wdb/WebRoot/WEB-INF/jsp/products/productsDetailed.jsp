<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
     


	
    
   <link rel="icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../css/base.css?t=20150915">
    <link rel="stylesheet" type="text/css" href="../css/view.css?t=20150915">
    <script  src="../js/frms-fingerprint-min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/index1.css?t=20150915">
<link rel="stylesheet" type="text/css" href="../css/goods.css?t=20150915">
<link rel="stylesheet" type="text/css" href="../css/global.css">

<style>
ul { list-style-type: none;}
li { display: inline-block;}
li { margin: 10px 0;margin-left:20px;}
input.labelauty + label { font: 14px "Microsoft Yahei";}
</style>


    <script>
  var thr;
function calculate(){
     var 
         firstpay = document.getElementById("firstpay"),
         month = document.getElementById("month"),
         pay,
         firstmoney,
         servicepay;
        /*      首付 */
        firstmoney=${wdbProductsCustom.getQuotoprice()}*firstpay.value/10;
      /* 本金   */
     pay = (${wdbProductsCustom.getQuotoprice()}-firstmoney)/month.value;//eval函数可计算某个字符串，并执行其中的的js代码
    /*  服务费 */
     servicepay=pay*0.12;

     monthpay.value= pay+servicepay;
   
    
 monthpay.innerHTML="￥"+monthpay.value.toFixed(2)+"<font  style='font-size:15px'>&nbsp;(本金：￥"+pay.toFixed(2)+"&nbsp;+&nbsp;服务费：￥"+servicepay.toFixed(2)+")&nbsp;</font><font style='font-size:12px'> +&nbsp;首付：￥"+firstmoney.toFixed(2)+"</font>";
 
 
}
/* 动态获取选择属性的值并累加 */
function myCount1(){
   var v=0;
   var temp = document.getElementsByTagName("input");

   //var temp = document.all.item("sec");
   for(var i=0;i<=temp.length-1;i++){
       if(temp[i].type=="radio"){
	   
       	if(temp[i].checked){
		
		v+=temp[i].value+"，";
		}
       	}
   }
  
   /* 去掉数字前面的0 */
   thr= v.substring(0,v.length-1).replace(/\b(0+)/gi,"");
  
	//thr.innerHTML=thr.value;
	
	 //遍历该类商品所有属性，若有符合用户选择的属性的商品，显示该商品的价格
 <c:forEach items="${wdbProductsList }" var="wdbProductsList"> 
if(thr=="${wdbProductsList.getProductdescription() }"){
 //price.value="${wdbProductsList.getQuotoprice() }";
 price.value="<fmt:formatNumber type="number" value="${wdbProductsList.getQuotoprice() }" maxFractionDigits="2"/>";
 price.innerHTML="￥"+price.value;
 } 
 
</c:forEach>	 
	
}
function prosub(){
	//提交form
	
	 var 
         firstpay = document.getElementById("firstpay"),
         month = document.getElementById("month");
         
	document.productForm.action="${pageContext.request.contextPath }/order/createOrder.action?productnumber=${wdbProductsCustom.getProductnumber() }&&thr="+thr+"&&hasfirstpay="+firstpay.value+"&&times="+month.value+"";
	document.productForm.submit();
}

  </script>
   

</head>
<body>
	
    <!-- begin topbar -->
    <div class="clearfix header-help-tel">
        <div class="layout1200">
            <div class="fl fs12">
            ${custnick },欢迎来到微你而生</div>
            <div class="fr fs12">
                <a class="fl mr20" href="/helpcenter.html" target="_blank">帮助中心</a>
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
                    <a class="fl header-logo" href="/" ></a>
                    <div class="fr header-search">
                        <form class="clearfix header-search-box" action="${pageContext.request.contextPath }/products/productsSearch.action" method="get" target="_blank">
                            <input type="text" class="fl header-search-input" id="searchkey" name="searchkey" placeholder="同学们都在热搜 iphone6s" value="" />
                            <input type="submit" class="fl block header-search-btn bigfs" value="搜索" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="layout1200 clearfix">
               <div class="layout1200 clearfix">
                <div class="header-nav-box fl">
                    <div class="fl first hand noIndexMenu">商品分类</div>
                    <a class="fl " href="${pageContext.request.contextPath }/products/weidaiba.action">首页</a>

                    <a class="fl current " href="${pageContext.request.contextPath }/products/productsList.action">微分期</a>
                    <a class="fl " href="${pageContext.request.contextPath }/products/loan.action">微贷款</a> 
					 <a class="fl " href="${pageContext.request.contextPath }/products/travel.action">微拼团</a>
					  <a class="fl " href="${pageContext.request.contextPath }/products/train.action">微未来</a>
                    <a class="fl " href="${pageContext.request.contextPath }/products/appdownload.action">App下载</a> 
                    <a class="fl " href="/merchantintroduce.html">客服中心</a>
                    
                </div>
                 <div class="header-user-box fr">
                  <c:choose>
                  <c:when test="${empty custnick }">
	                <a class="fl mr5" href="${pageContext.request.contextPath }/customer/Registered.action">注册</a> 
	                <a class="fl ml10 split" href="${pageContext.request.contextPath }/customer/Login.action">登录</a>
	                </c:when><c:otherwise>
	                <a class="fl ml10 split" href="${pageContext.request.contextPath }/customer/Personal.action" target="_blank">个人中心</a>
	                <a class="fl ml15 go-paypage-btn" href="${pageContext.request.contextPath }/customer/Personal.action" target="_blank">我要还款</a>
	              <a class="fl ml10 split" href="${pageContext.request.contextPath }/customer/Logout.action">退出</a>
	              </c:otherwise>
 </c:choose>
                                     
               </div>
            </div>
        </div>
    </div>
    <!-- end header -->

    <!-- begin menu -->
    <div class="menu fixed fs18" id="J_menuTable">
        <a href="/category/list.html?cat=10000001">
            <span class="H_iconBanner phone-icon vert_mid"></span><span class="ml25 fs18 vert_mid">手机</span>
        </a>
        <a href="/category/list.html?cat=10000018">
            <span class="H_iconBanner pc-icon vert_mid"></span><span class="ml25 fs18 vert_mid">电脑</span>
        </a>
        <a href="/category/list.html?cat=10000004">
            <span class="H_iconBanner camera-icon vert_mid"></span><span class="ml25 fs18 vert_mid">数码</span>
        </a>
        <a href="/category/list.html?cat=70000000">
            <span class="H_iconBanner sport-icon vert_mid"></span><span class="ml25 fs18 vert_mid">代步</span>
        </a>
        <a href="/category/list.html?cat=50000000">
           <span class="H_iconBanner cloth-icon vert_mid"></span><span class="ml25 fs18 vert_mid">服饰</span>
        </a>
        <a href="/category/list.html?cat=40000000">
            <span class="H_iconBanner beauty-icon vert_mid"></span><span class="ml25 fs18 vert_mid">乐器</span>
        </a>
        <a href="/category/list.html?cat=60000000">
            <span class="H_iconBanner bag-icon vert_mid"></span><span class="ml25 fs18 vert_mid">箱包</span>
        </a>
          
        <!--<a href="/category/list.html?cat=50000000">
            <b class="common-icon pubilcMenu menuOtherIcon"></b> 其他
        </a>-->
    </div>
    <div style="height:0px">
        <div class="layout1200 pr oh" style="height:0px">
            <div class="menu noIndexFixed fs18" id="J_noIndexMenuTable">
                <a href="/category/list.html?cat=10000001">
                    <span class="H_iconBanner phone-icon vert_mid"></span><span class="ml25 fs18 vert_mid">手机</span>
                </a>
                <a href="/category/list.html?cat=10000018">
                    <span class="H_iconBanner pc-icon vert_mid"></span><span class="ml25 fs18 vert_mid">电脑</span>
                </a>
                <a href="/category/list.html?cat=10000004">
                    <span class="H_iconBanner camera-icon vert_mid"></span><span class="ml25 fs18 vert_mid">数码</span>
                </a>
                <a href="/category/list.html?cat=70000000">
                    <span class="H_iconBanner sport-icon vert_mid"></span><span class="ml25 fs18 vert_mid">代步</span>
                </a>
                <a href="/category/list.html?cat=50000000">
                   <span class="H_iconBanner cloth-icon vert_mid"></span><span class="ml25 fs18 vert_mid">服饰</span>
                </a>
                <a href="/category/list.html?cat=40000000">
                    <span class="H_iconBanner beauty-icon vert_mid"></span><span class="ml25 fs18 vert_mid">乐器</span>
                </a>
                <a href="/category/list.html?cat=60000000">
                    <span class="H_iconBanner bag-icon vert_mid"></span><span class="ml25 fs18 vert_mid">箱包</span>
                </a>
                 
                <!--<a href="/category/list.html?cat=50000000">
                    <b class="common-icon pubilcMenu menuOtherIcon"></b> 其他
                </a>-->
            </div>
        </div>
    </div>
    <!-- end menu -->    <div class="layout1200">
        <div class="common-page-space goods-detail-box">
            <div class="goods-info-box clearfix mt20">
                <div class="goods-left fl">
                    <div class="goods-pic-box">
                   <%--  <img class="goods-big-pic" src="/pic/${wdbProductsCustom.getImageurls()}"> --%>
                    <img class="goods-big-pic" src="${wdbProductsCustom.getImageurls()}"> 
                    </div>
                    <div class="mt20">
                        <a class="listpic-pre fl"></a>
                        <div class="list-items fl">
                            <ul class="listpic fl" style="width:600px;">
                					<li><img data-oimg="${wdbProductsCustom.getImageurls()}" src="${wdbProductsCustom.getImageurls()}" alt="${productsCustom.getProductname()}"></li>
                            </ul>
                        </div>
                        <a class="listpic-next"></a>
                    </div>
                    <!-- begin share -->
                    <div class="mt15 ml20 share_box">
                        <a class="fs14 cc6 share-btn">分享</a>
                        <div class="share_holder dn" >
                            <div class="share_arrow"><div class="share_arrow_inner"></div></div>
                            <div class="share_content">
                                <!-- JiaThis Button BEGIN -->
                                <div class="jiathis_style clearfix">
                                    <a class="jiathis_button_qzone"></a>
                                    <a class="jiathis_button_tsina"></a>
                                    <a class="jiathis_button_tqq"></a>
                                    <a class="jiathis_button_weixin"></a>
                                    <a class="jiathis_button_renren"></a>         
                                </div>
                               
                                <!-- JiaThis Button END -->
                            </div>
                        </div>
                    </div>
                    <!-- end share -->
                </div>
                <div class="goods-right fr">
                    <h1 class="goods-name">${wdbProductsCustom.getProductname()}<br>
          			<span class="fw orange-color">
	          				【全场正品，假一赔三】          				</span></h1>
                    <div class="clearfix goods-attr-unit">
                        <label class="fl gray-color">爆抢价:</label>
                        <span class="orange-color fs18"></span> 	<div id="price" class="orange-color fs30 mr20 J_Price">  ￥<fmt:formatNumber type="number" value="${wdbProductsCustom.getQuotoprice() }" maxFractionDigits="2"/></div>
 </span>
                        <del class="intro-color fs14"> </del>
                    </div>
                       <form name="productForm" method="post">
                      <%-- <form action="javascript:document.write(<a href="${pageContext.request.contextPath }/order/createOrder.action?productnumber=${wdbProductsCustom.getProductnumber() }&&thr='+thr+'">)" method="post"> --%> 
                    <div>
                        <div>
                            <div>
                                <div class="goods-attr-unit clearfix Tom_subattributes">
                                    <label class="fl"><span class="goods-attr-label gray-color">月供:</span></label>
                                    <span class="fs14"></span><span class="fs24">	<div id="monthpay">
                                     ￥<fmt:formatNumber type="number" value="${wdbProductsCustom.getQuotoprice() /24}" maxFractionDigits="2"/>
                                    <span class="fs14" id="detailpay">&nbsp;起</span></div>
</span>
                                </div>
              <c:if test="${not empty type }">
                
              <c:forEach items="${type }" var="type" varStatus="tp"> 
               <ul class="dowebok">
            <label class="fl gray-color">${type.key}</label>
           
         
              
        
         
                              
         <c:forEach items="${type.value }" var="typev" > 
              
	<li><input type="radio" name="type${tp.index }"  value="${typev }" data-labelauty="${typev}" onchange="myCount1()"></li>
	</c:forEach>
		</ul> 
</c:forEach>

	</c:if> 
               

<script src="../js/jquery-1.8.3.min.js"></script>
<script src="../js/jquery-labelauty.js"></script>
<script>
$(function(){
	$(':input').labelauty();
});
</script>

                                
                                
                 <h1><div id="thr"></div></h1>
               
                               
                                <div class="goods-attr-unit clearfix Tom_subattributes">
                                    <label class="fl"><span class="goods-attr-label gray-color">运费:</span></label>
                                    <span class="gray-color">包邮</span>
                                </div>
                                <div class="goods-attr-unit clearfix Tom_subattributes">
                                    <label class="fl"><span class="goods-attr-label gray-color">数量:</span></label>
                                    
                                    <span class="counts count_input"><a href="javascript:;" class="sub unc">&ndash;</a><input id="J_InputNum" disabled="disabled" max-value="999" type="text" value="1"><a href="javascript:;" class="add"  >+</a></span><span id="J_Stock" class="intro-color fs12">&nbsp;&nbsp;库存<i>975</i>件
                             
                                    </span>
                                
                                   
                                </div>
                            
                  
                  
                            </div>
                        </div>
                    </div>
                 
                 
                
                 
                 
                   
               <br>
               
     
            
            <span class="goods-attr-label gray-color">
	首付比例：&nbsp;&nbsp;
	<select name="hasfirstpay" class="nice-select3" id="firstpay" onchange="calculate()">
	<option value="0">零首付</option>
	<option value="1">10%</option>
	<option value="2">20%</option>
	<option value="3">30%</option>
	<option value="4">40%</option>
	<option value="5">50%</option>
	</select>
	</span>&nbsp;&nbsp;&nbsp;&nbsp;
	    <span class="goods-attr-label gray-color">选择分期次数:</span>&nbsp;&nbsp;
	<select name="times" class="nice-select3" id="month" onchange="calculate()">
	
	<option value="3">3个月</option>
	<option value="6">6个月</option>
	<option value="9">9个月</option>
	<option value="12">12个月</option>
	<option value="24">24个月</option>
	</select>
	
				             <div class="clearfix mt20" style="height:58px;">
		                         	
		                         	 <input type="button"  class="common-btn orange eleb" value="立即购买" onclick="prosub()"  /> 
		                         
		                        </form>
		     
   <a  href="http://wpa.qq.com/msgrd?v=3&uin=848560447&site=qq&menu=yes" target="_blank" style="margin-left:30px; font-size:15px; text-decoration:none;"><img alt="" src="../images/chart2.png">&nbsp;&nbsp;联系客服</a>
<!-- <div class="what"><a class="fs14 blue-color">什么是分期？</a>
    <div class="decbox fl"><i></i>
        <p class="tipcont"><span class="col_222">微你而生分期介绍</span>
            <br> 微你而生分期，是由微你而生推出的赊购服务，先购物，慢慢还即刻拥有，无需等待。
            <br>面向用户：
            <br>面向全国正规统招全日制在校本/专科学生,包含研究生和博士生
            <br>产品特点：
            <br>（1）0首付，支持最高24期分期
            <br>（2）便捷还款<a class="fr blue-color">了解更多&gt;&gt;</a></p>
    </div>
</div>		      -->                </div>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          <div class="goods-attr-unit clearfix Tom_subattributes mt10 parent">
                        <label class="fl"><span class="goods-attr-label gray-color">支付方式:</span></label>
                        <div class="fl what-xin">
                            <a class="mr30 eleb mt5 hstate"><img src="../images/xinApay.png"></a>
                            <div class="fl xindec"><i></i>
                                <p class="tipcont">信用支付是微你而生提供给消费者“这月买、下月还”的信用消费服务。
                                    <br>产品特点：
                                    <br>1.当月买，下月再还款，分期消费无压力
                                    <br>2.免费使用消费额度购物
                                    <br>3.还款方便，支持自动还款</p>
                            </div>
                        </div>
                        <a id="J_kuaijie" class="eleb mt5 hstate"><img src="../images/quitApay.png"></a>
                    </div>
                    <p class="iconlist mt10">
                        <span class="sp1">正品保障</span><span class="sp2">闪电发货</span><span class="sp3">最长40天免息</span><span class="sp4">退货支持</span>
                    </p>
                </div>
            </div>
            <div class="clearfix mt10 wid1200">
                <div class="listRight mr10">
                    <div class="goods-des-box">
                        <div class="goods-detail-hd fs14">
                            <span class="cc6 mr10 fr">商家：微分期&nbsp;&nbsp;客户电话：888-888-8888</span>
                            <p>商品详情</p>
                        </div>
                        <div class="goods-detail-show clearfix" style="display:block;" id="J_GoodsDetailBox">
                    <p><img src="../images/default.gif" class="J_lazyload" original="../images/56de66ceNb6adcd2a.jpg"/>
					<!--<img src="../images/default.gif" class="J_lazyload" original="../images/FgMimxFxoE8mUfWjLKa8kQU3Ce3n.jpg!730x0.jpg"/><img src="../images/default.gif" class="J_lazyload" original="../images/FhyN-Ji59_JQH_1h4GR7ei03vq-1.jpg!730x0.jpg"/><img src="../images/default.gif" class="J_lazyload" original="../images/FpUisRr52b8T0ibbOJ8ZHe5uhyKb.jpg!730x0.jpg"/><img src="../images/default.gif" class="J_lazyload" original="../images/FjQibxKJsP2zjOwGDdXJaFxFP8WY.jpg!730x0.jpg"/><img src="../images/default.gif" class="J_lazyload" original="../images/FhJI5AIvUjpLYT110il26FYm483H.jpg!730x0.jpg"/></p> -->
                        </div>
                        <div class="goods-detail-show clearfix" id="J_GoodsParamBox">
                            <p>&nbsp;</p>
                        </div>
                    </div>
                </div>
                <div class="listLeft">
<div class="leftPart1 clearfix">
    <p class="fs14">热门推荐</p>
</div> <div class="leftPart1 clearfix mt10">
    <p class="fs14">最近浏览</p>
</div>                </div>
            </div>
        </div>
    </div>
    <input type="hidden" id="J_price" value="159900" />
   


    <!-- begin footer -->
    <div class="footer">
        <div class="layout1200">
            <div class="clearfix">
            <div class="fl bdLine">
                <ul class="fl unit ml15" style="width:120px">
                    <li class="first"><em>微你而生</em></li>
                    <li><a href="/aboutus.html" target="_blank">关于我们</a></li>
                    <li><a href="/joinus.html" target="_blank">加入我们</a></li>
                    <li><a href="/contactus.html#mark1" target="_blank">联系我们</a></li>
                    <li><a href="/sitemap.html" target="_blank">网站地图</a></li>
                </ul>
            </div>
            <div class="fl bdLine">
                <ul class="fl unit ml30" style="width:140px">
                    <li class="first"><em>新手上路</em></li>
                    <li><a href="/helpcenter.html" target="_blank">如何领取信用额度</a></li>
                    <li><a href="/helpcenter.html" target="_blank">办理需要的资料</a></li>
                    <li><a href="/helpcenter.html" target="_blank">审核需要多久</a></li>
                </ul>
        
                </div>
                <div class="fl bdLine">
                <ul class="fl unit ml30" style="width:155px">
                    <li class="first"><em>关于账户</em></li>
                    <li><a href="/help_2.html" target="_blank">账单什么时候生成</a></li>
                    <li><a href="/help_2.html" target="_blank">如何申请分期还款</a></li>
                    <li><a href="/help_2.html" target="_blank">如何申请账单延期</a></li>
                </ul>
          
                </div>
                <div class="fl bdLine">
                <ul class="fl unit ml30" style="width:230px">
                     <li class="first"><em>常见问题</em></li>
                    <li><a href="/help_1.html" target="_blank">你们的商品都是正品吗？</a></li>
                    <li><a href="/helpcenter.html" target="_blank">消费后什么时候能还款？</a></li>
                    <li><a href="/help_1.html" target="_blank">什么是信用支付？</a></li>
                    <li><a href="/help_1.html" target="_blank">如何申请售后问题？</a></li>
                </ul>
                
                </div>
                   <div class="fl bdLine">
                <ul class="fl unit ml30" style="width:175px">
                   <li class="first"><em>手机微你而生</em></li>
                    <li></li>
                    <li><a href="https://itunes.apple.com/cn/app/ai-xue-dai/id1029982187?mt=8" target="_blank"><img src="../images/ip_icon.jpg"></a></li>
                    <li><a href="/download/app"><img src="../images/ad_icon.jpg"></a></li>
                  
                </ul>
                    </div>
                <div class="fl ml30">
                    <div class="clearfix">
                        <div class="kefu-bottom fs18 gc6 fl">
                            <div class="clearfix">
                                <div class="common-icon fl footer-cell-icon"></div>
                                <div class="fl">客服热线</div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix mt5">
                        <div class="fs30 orange-color fl">400-867-1888</div>
                    </div>
                    <div class="clearfix mt5">
                        <div class="fs14 gc6 fl cc90">(服务时间 : 9:00~22:30)</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom tac gc6">
      
    </div>
    <!-- end footer -->
    
    <div id="J_RSide">
        <a class="common-icon qr-code-icon" href="javascript:;"></a>
        <a class="common-icon qr-code-icon-tip" href=""></a>
        <a class="common-icon qq-kefu-icon" href="http://crm2.qq.com/page/portalpage/wpa.php?uin=4001899151&amp;f=1&amp;ty=1&amp;aty=0" id="BizQQWPA" title="在线咨询" target="_blank"></a>
        <a class="common-icon to-top-icon"></a>
    </div>

	<script type="text/javascript">
	    var aixuedai = {
	    	path:'/',
	        staticpath: '#',
	        paydomain: '#',
	        versions: '20150915',
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
	<script src="../js/require.js" data-main="../js/common.js"></script>
         <!--  头部下拉列表js -->
       <!--  <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script> -->
<script type="text/javascript">
requirejs(['../js/detail.js?v=20150915']);
</script> 

        
    
        
        
</body>
</html>
