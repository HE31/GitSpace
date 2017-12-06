<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
     

	<link rel="stylesheet" type="text/css" href="styles.css">
	
    
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


<script type="text/javascript">
var firstpay,
      month;
function calculate(){
//通过名字获取  getElementsByName
var obj = document.getElementsByName("hasfirstpay"),
         pay,
         firstmoney,
         servicepay;

//通过标签获取  getElementsByTagName
//var obj = document.getElementsByTagName("input");
    for(var i=0; i<obj.length; i ++){
        if(obj[i].checked){
            firstpay=obj[i].value;
        }
    }

var obj1 = document.getElementsByName("times");
//通过标签获取  getElementsByTagName
//var obj = document.getElementsByTagName("input");
    for(var j=0; j<obj1.length; j++){
        if(obj1[j].checked){
            month=obj1[j].value;
        }
    }
   firstmoney=${wdbProductsCustom.getQuotoprice()}*firstpay/10;
      pay = (${wdbProductsCustom.getQuotoprice()}-firstmoney)/month;//eval函数可计算某个字符串，并执行其中的的js代码
       servicepay=pay*0.12;
     monthpay.value= pay+servicepay;
 monthpay.innerHTML="￥"+monthpay.value.toFixed(2)+"<font  style='font-size:15px'>&nbsp;(本金：￥"+pay.toFixed(2)+"&nbsp;+&nbsp;服务费：￥"+servicepay.toFixed(2)+")&nbsp;</font><font style='font-size:12px'> +&nbsp;首付：￥"+firstmoney.toFixed(2)+"</font>";
}

function prosub(){
	//提交form
	
	
	calculate();
         
	document.productForm.action="${pageContext.request.contextPath }/order/createOrder.action?productnumber=${wdbProductsCustom.getProductnumber() }&&thr=1&&hasfirstpay="+firstpay+"&&times="+month+"";
	document.productForm.submit();
}


</script>
</head>
<body>
	
    <!-- begin topbar -->
    <div class="clearfix header-help-tel">
        <div class="layout1200">
            <div class="fl fs12">
            ${custnick },欢迎来到大学生信用生活服务平台</div>
            <div class="fr fs12">
                <a class="fl mr20" href="/helpcenter.html" target="_blank">帮助中心</a>
                <span class="fl mr20">咨询热线：***-***-****</span>
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
                            <input type="text" class="fl header-search-input" id="text" name="searchkey" placeholder="同学们都在热搜 iphone6s" value="" />
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

                    <a class="fl  " href="${pageContext.request.contextPath }/products/productsList.action">微分期</a>
                    <a class="fl " href="${pageContext.request.contextPath }/products/loan.action">微贷款</a> 
					 <a class="fl " href="${pageContext.request.contextPath }/products/travel.action">微拼团</a>
					  <a class="fl current" href="${pageContext.request.contextPath }/products/train.action">微未来</a>
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
	                <a class="fl ml15 split" href="${pageContext.request.contextPath }/customer/Personal.action" target="_blank">我要还款</a>
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
                                    <a class="../images/jiathis_button_qzone"></a>
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
                    <h1 class="goods-name">
          			<span class="fw orange-color">
	          				${wdbProductsCustom.getProductname()}        				</span></h1>
                    <div class="clearfix goods-attr-unit">
                        <label class="fl gray-color">分期价格:</label>
                        <span class="orange-color fs18"></span> <span class="orange-color fs30 mr20 J_Price">	 ￥<fmt:formatNumber type="number" value="${wdbProductsCustom.getQuotoprice() }" maxFractionDigits="2"/>
 </span>
                        <del class="intro-color fs14"> </del>
                    </div>
                       
                  
                                <div class="goods-attr-unit clearfix Tom_subattributes">
                                    <label class="fl"><span class="goods-attr-label gray-color">月供:</span></label>
                                    <span class="fs14"></span><span class="fs24" ><div id="monthpay">	￥<fmt:formatNumber type="number" value="${wdbProductsCustom.getQuotoprice() /21}" maxFractionDigits="2"/>
</span><span class="fs14">&nbsp;起</span>


</div>

                                </div>
             <br>
              <form name="productForm"   method="post">
               <ul class="dowebok">
            <label class="fl gray-color">首付比例：</label>
	<li><input type="radio" name="hasfirstpay"  value="0" data-labelauty="零首付" checked onchange="calculate()"></li>
	<li><input type="radio" name="hasfirstpay"  value="1" data-labelauty="10%" onchange="calculate()"></li>
	<li><input type="radio" name="hasfirstpay"  value="3" data-labelauty="30%" onchange="calculate()"></li>
	<li><input type="radio" name="hasfirstpay"  value="5" data-labelauty="50%" onchange="calculate()"></li>
	<li><input type="radio" name="hasfirstpay"  value="7" data-labelauty="70%" onchange="calculate()"></li>
		</ul> 
<br>
             <ul class="dowebok">
            <label class="fl gray-color">选择分期：</label>
	
	
	<li><input type="radio" name="times"  value="12" data-labelauty="12个月"  onchange="calculate()"></li>
	<li><input type="radio" name="times"  value="15" data-labelauty="15个月" onchange="calculate()"></li>
	<li><input type="radio" name="times"  value="18" data-labelauty="18个月" onchange="calculate()"></li>
	<li><input type="radio" name="times"  value="21" data-labelauty="21个月" checked onchange="calculate()"></li>
		</ul> 
               

<script src="../js/jquery-1.8.3.min.js"></script>
<script src="../js/jquery-labelauty.js"></script>
<script>
$(function(){
	$(':input').labelauty();
});
</script>





               <br>
				             <div class="clearfix mt20" style="height:58px;">
		                         	
		                         	 <input type="submit"  class="common-btn orange eleb" value="立即分期"  onclick="prosub()"  /> 
		                       
		                        </form>
		   <a  href="http://wpa.qq.com/msgrd?v=3&uin=848560447&site=qq&menu=yes" target="_blank" style="margin-left:30px; font-size:15px; text-decoration:none;"><img alt="" src="../images/chart2.png">&nbsp;&nbsp;联系客服</a>                
<!--  <a class="calculator fs14 mr10 <mt10 fl" href="javascript:;">分期计算器</a> -->
<div class="what"><a class="fs14 blue-color">&nbsp;</a>

</div>		                     </div                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            >
                    <div class="goods-attr-unit clearfix Tom_subattributes mt10 parent">
                        <label class="fl"><span class="goods-attr-label gray-color">支付方式:</span></label>
                        <div class="fl what-xin">
                            <a class="mr30 eleb mt5 hstate"><img src="../images/xinApay.png"></a>
                            <div class="fl xindec"><i></i>
                                <p class="tipcont">信用支付是大学生信用生活服务平台提供给消费者“这月买、下月还”的信用消费服务。
                                    <br>产品特点：
                                    <br>1.当月买，下月再还款，分期消费无压力
                                    <br>2.免费使用消费额度购物
                                    <br>3.还款方便，支持自动还款</p>
                            </div>
                        </div>
                        <a id="J_kuaijie" class="eleb mt5 hstate"><img src="../images/quitApay.png"></a>
                    </div>
                    <p class="iconlist mt10">
                        <span class="sp1">6+12/18分期</span><span class="sp2">七个月后还款</span><span class="sp3">考研考证</span><span class="sp4">培训机构合作</span>
                    </p>
                </div>
            </div>
            <div class="clearfix mt10 wid1200">
                <div class="listRight mr10">
                    <div class="goods-des-box">
                        <div class="goods-detail-hd fs14">
                            <span class="cc6 mr10 fr">商家：微未来&nbsp;&nbsp;客户电话：888-888-8888</span>
                            <p>商品详情</p>
                        </div>
                        <div class="goods-detail-show clearfix" style="display:block;" id="J_GoodsDetailBox">
                    <p><img src="../images/default.gif" class="J_lazyload" original="../images/train/it4.jpg"/>
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
    <script type="text/x-tmpl" id="calDialog">
        <div class="mb15 clearfix">
            <label class="fl fs16 h42">首付比例:</label>
            <div class="fl base-select-outer mr40 firstPay" id="J_GoodsFirstSelect">
                <div class="clearfix base-select-text-box">
	                <span class="fl base-select-text fs16" data-val="0" data-index="0" id="payBack">零首付</span>
	                <span class="common-icon select-down-arrow fr"></span>
	            </div> 
	            
	            <ul class="tBack">
                            <li><a href="javascript:;" data-val="0">零首付</a></li>
                            <li><a href="javascript:;" data-val="0.1">10%</a></li>
                            <li><a href="javascript:;" data-val="0.2">20%</a></li>
                            <li><a href="javascript:;" data-val="0.3">30%</a></li>
                            <li><a href="javascript:;" data-val="0.4">40%</a></li>
                            <li><a href="javascript:;" data-val="0.5">50%</a></li>
                            <li><a href="javascript:;" data-val="0.6">60%</a></li>
                            <li><a href="javascript:;" data-val="0.7">70%</a></li>
                            <li><a href="javascript:;" data-val="0.8">80%</a></li>
                            <li><a href="javascript:;" data-val="0.9">90%</a></li>
                            <li><a href="javascript:;" data-val="1.0">100%</a></li>
	            </ul>

            </div>
            <label class="fl fs16 h42 J_months">分期月数:</label>
            <div class="fl base-select-outer months " id="J_MonthSelect" >
                <div class="clearfix base-select-text-box">
	                <span class="fl base-select-text fs16" data-val="0" data-index="0" id="monthNum">1个月</span>
	                <span class="common-icon select-down-arrow fr"></span>
	            </div>
	          
	            <ul class="tMonth">
                     <li>
                     <a href="javascript:;" data-val="1" data-monthday="1">1个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="2" data-monthday="2">2个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="3" data-monthday="3">3个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="4" data-monthday="4">4个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="5" data-monthday="5">5个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="6" data-monthday="6">6个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="7" data-monthday="7">7个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="8" data-monthday="8">8个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="9" data-monthday="9">9个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="10" data-monthday="10">10个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="11" data-monthday="11">11个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="12" data-monthday="12">12个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="13" data-monthday="13">13个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="14" data-monthday="14">14个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="15" data-monthday="15">15个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="16" data-monthday="16">16个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="17" data-monthday="17">17个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="18" data-monthday="18">18个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="19" data-monthday="19">19个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="20" data-monthday="20">20个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="21" data-monthday="21">21个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="22" data-monthday="22">22个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="23" data-monthday="23">23个月</a>
                     </li>
                     <li>
                     <a href="javascript:;" data-val="24" data-monthday="24">24个月</a>
                     </li>
	            </ul>

            </div>
        </div>
        <div class="mb15 clearfix fs14 mb30">
            <label class="fs14">首付:</label>
            <span class="orange-color fs14">¥514.00</span>
            <span class="orange-color fs24 mr40" id="J_firstpay"></span>
            <label>每期月供:</label>
            <span class="orange-color fs14">¥</span>
            <span class="orange-color fs24"  id="J_monthpay">862.00</span>
            <span class=" gray-color" id="J_paytips">（每期月供:￥841.00 = 商品款:￥772.00 + 服务费:￥69.00）</span>
        </div>
    </script>


    <!-- begin footer -->
    <div class="footer">
        <div class="layout1200">
            <div class="clearfix">
            <div class="fl bdLine">
                <ul class="fl unit ml15" style="width:120px">
                    <li class="first"><em>大学生信用生活服务平台</em></li>
                    <li><a href="/aboutus.html" target="_blank">关于大学生信用生活服务平台</a></li>
                    <li><a href="/joinus.html" target="_blank">加入大学生信用生活服务平台 </a></li>
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
                   <li class="first"><em>手机大学生信用生活服务平台</em></li>
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
                        <div class="fs30 orange-color fl">888-888-8888</div>
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
