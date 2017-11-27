<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<!DOCTYPE html>
<!-- saved from url=(0048)http://www.qufenqi.com/user/home?action=security -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>个人中心</title>
   
    <meta http-equiv="Cache-Control" content="no-transform ">
    <meta name="renderer" content="webkit">
    <link media="all" type="text/css" rel="stylesheet" href="../css/reset.css">
    
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="safe" src="../js/safe.js"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="home" src="../js/home.js"></script><script type="text/javascript" src="../js/qufenqi_audience_2.2.js"></script><script type="text/javascript" src="../a/t"></script><script type="text/javascript" src="../a/j"></script></head>
<link rel="stylesheet" type="text/css" href="../css/base.css">
    <link rel="stylesheet" type="text/css" href="../css/view.css">
    <script charset="utf-8" src="../js/v.js"></script><script src="../js/hm.js"></script><script src="../js/frms-fingerprint-min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/user.css">
<link rel="stylesheet" type="text/css" href="../css/goods1.css">

<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="common" src="../js/common.js"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="#" src="../js/user.js"></script></head>
<body>  

	
    <!-- begin topbar -->
    <div class="clearfix header-help-tel">
        <div class="layout1200">
            <div class="fl fs12">
            ${custnick } 欢迎来到微你而生</div>
            <div class="fr fs12">
	                <a class="fl mr20 J_cart" href="#"><b class="orange-color"></b></a>
	                <div id="J_newsFont" class="fl mr20 newsFont"><a href="#"><b class="orange-color H_newsNum"></b></a>
					   <div class="news">
					    	<img src="../images/loading_100.gif" class="loading">
			      		</div>
	              	</div>
                <a class="fl mr20" href="#" target="_blank">帮助中心</a>
                <span class="fl mr20">咨询热线：400-867-1888</span>
                <span class="fl orange-color hand" id="J_Report">我要举报</span>
            </div>
        </div>
    </div>
    <!-- end topbar -->    <!-- begin header -->
    <div id="header">
        <div class="header-top">
            <div class="layout1200">
                <div class="clearfix">
                    <a class="fl header-logo" href="#" ></a>
                    <div class="fr header-search">
                        <form class="clearfix header-search-box" action="${pageContext.request.contextPath }/products/productsSearch.action" method="get" target="_blank">
                            <input type="text" class="fl header-search-input" id="searchkey" name="text" placeholder="同学们都在热搜 iphone6s" value="">
                            <input type="submit" class="fl block header-search-btn bigfs" value="搜索">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom fixed">
            <div class="layout1200 clearfix">
                <div class="header-nav-box fl">
                    <div class="fl first hand noIndexMenu">商品分类</div>
                    
					<a class="fl " href="#">首页</a>
                    <a class="fl fwb " href="#">精选商品</a>
                    <a class="fl " href="#">小额贷款</a> 
                   
                    
                    
                     
                </div>
                <div class="header-user-box fr">
	                
                    <a class="fl mr5 split" href="#">个人中心</a>
                    <!--<a class="fl mr5 split" href="/mall/safe/safeCenter.html">个人中心</a> -->
	                <a class="fl ml10 mr10  split" href="#">退出</a>
	                <a class="fl go-paypage-btn" href="#">我要还款</a>
                    
               </div>
            </div>
        </div>
    </div>
    <!-- end header -->

    <!-- begin menu -->
    <div class="menu fixed fs18" id="J_menuTable" style="top: -347px;">
        <a href="#">
            <span class="H_iconBanner phone-icon vert_mid"></span><span class="ml25 fs18 vert_mid">手机</span>
        </a>
        <a href="#">
            <span class="H_iconBanner pc-icon vert_mid"></span><span class="ml25 fs18 vert_mid">电脑</span>
        </a>
        <a href="#">
            <span class="H_iconBanner camera-icon vert_mid"></span><span class="ml25 fs18 vert_mid">数码</span>
        </a>
        <a href="#">
            <span class="H_iconBanner sport-icon vert_mid"></span><span class="ml25 fs18 vert_mid">运动</span>
        </a>
        <a href="#">
           <span class="H_iconBanner cloth-icon vert_mid"></span><span class="ml25 fs18 vert_mid">服饰</span>
        </a>
        <a href="#">
            <span class="H_iconBanner beauty-icon vert_mid"></span><span class="ml25 fs18 vert_mid">美妆</span>
        </a>
        <a href="#">
            <span class="H_iconBanner bag-icon vert_mid"></span><span class="ml25 fs18 vert_mid">箱包</span>
        </a>
          <a href="#">
            <span class="H_iconBanner food-icon vert_mid"></span><span class="ml25 fs18 vert_mid">美食</span>
        </a>
        <!--<a href="/category/list.html?cat=50000000">
            <b class="common-icon pubilcMenu menuOtherIcon"></b> 其他
        </a>-->
    </div>
    <div style="height:0px">
        <div class="layout1200 pr oh" style="height:0px">
            <div class="menu noIndexFixed fs18" id="J_noIndexMenuTable">
                <a href="#">
                    <span class="H_iconBanner phone-icon vert_mid"></span><span class="ml25 fs18 vert_mid">手机</span>
                </a>
                <a href="#">
                    <span class="H_iconBanner pc-icon vert_mid"></span><span class="ml25 fs18 vert_mid">电脑</span>
                </a>
                <a href="#">
                    <span class="H_iconBanner camera-icon vert_mid"></span><span class="ml25 fs18 vert_mid">数码</span>
                </a>
                <a href="#">
                    <span class="H_iconBanner sport-icon vert_mid"></span><span class="ml25 fs18 vert_mid">运动</span>
                </a>
                <a href="#">
                   <span class="H_iconBanner cloth-icon vert_mid"></span><span class="ml25 fs18 vert_mid">服饰</span>
                </a>
                <a href="#">
                    <span class="H_iconBanner beauty-icon vert_mid"></span><span class="ml25 fs18 vert_mid">美妆</span>
                </a>
                <a href="#">
                    <span class="H_iconBanner bag-icon vert_mid"></span><span class="ml25 fs18 vert_mid">箱包</span>
                </a>
                  <a href="#">
                    <span class="H_iconBanner food-icon vert_mid"></span><span class="ml25 fs18 vert_mid">美食</span>
                </a>
                <!--<a href="/category/list.html?cat=50000000">
                    <b class="common-icon pubilcMenu menuOtherIcon"></b> 其他
                </a>-->
            </div>
        </div>
    </div>
    <!-- end menu -->    <link rel="stylesheet" type="text/css" href="../css/cash.css">
    <!-- begin account header -->
    <div class="personInfo clearfix">
        <div class="persInfobox clearfix">
            <span class="headPhone"><img src="../images/1.png"></span>
            <ul class="clearfix">
               <li class="li1">
                    <p class="fs18 mb5">你好，洪佳辉</p>
                    <p class="fs14 gray-color mb15">上次登录时间：2015-10-11 19:28:15</p>
                    </li>
                <li class="li2">
                    <p class="mb5">&nbsp;</p>  
	                    <!--已实名，未面签, 信用额度可用-->
		                    	<p>可用额度（元）&nbsp;<span class="fs24 vert_mid">￥200.00</span></p>
	                    	                  
                </li>
                <li class="li3 fs14">
                    <p class="mb5">&nbsp;</p>
                    <div><p class="quemark vert_mid" id="amount"></p><span class="vert_mid">可提现金额（元）</span><span class="fs24 vert_mid J_Return_Money cc9" data-money="￥0.00">￥0.00</span></div> 
                    
                </li>
            </ul> 
        </div>
    </div>

        <style>
.user-tit{height: 52px; line-height: 52px; background: #fff; font-size: 18px; padding-left: 16px;}
.user-info{display: none;}
.user-container{width:100%; background: #eeeeee; padding-top: 16px;}
.itm{
line-height: 70px;
text-indent:24em;
}
a{ color:#006600; text-decoration:none;}
a:hover{color:#990000;}
.top{ margin:5px auto; color:#990000; text-align:center;}
.info select{ border:1px #993300 solid; background:#FFFFFF;}
.info{ margin:5px; text-align:center;}
.info #show{ color:#3399FF; }
.bottom{ text-align:right; font-size:12px; color:#CCCCCC; width:1000px;}

</style>
<div class="user-container">
	<div class="main-container">
		<input type="hidden" value="nav-safe" id="current-nav">
		<div class="fl persMenu">
                <ul class="u-sidebar">
                       <li>
                        <a  href="../goods/goods_personal.jsp">
                            <div class="clearfix side-unit">
                                <span class="user-icon center-icon fl" style="cursor:pointer;"></span>
                                <span class="fl">个人中心</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a  href="../goods/goods_bill.jsp">
                            <div class="clearfix side-unit">
                                <span class="user-icon bill-icon fl"></span>
                                <span class="fl">我的账单</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a  href="../goods/goods_ordered.jsp">
                            <div class="clearfix side-unit">
                                <span class="user-icon order-icon fl"></span>
                                <span class="fl">我的订单</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a class="current" href="#">
                            <div class="clearfix side-unit">
                                <span class="user-icon safe-icon fl"></span>
                                <span class="fl">安全中心</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a  href="../goods/goods_red.jsp">
                            <div class="clearfix side-unit">
                                <span class="user-icon redbag-icon fl"></span>
                                <span class="fl">我的红包</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div class="clearfix side-unit">
                                <span class="user-icon protocol-icon fl"></span>
                                <span class="fl">我的合同</span>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
		<div id="content">
			<div class="user-info">
				<div class="limit info info_r">
					<div class="limit-item">
						<span class="label">剩余可用额度</span>
						<span class="money money1">0</span>
						<div class="line"><span style=""></span></div>
						<span class="money full">当前授信额度<i>0.00</i></span>
					</div>

					<div class="limit-item2">
						<a href="#"><button class="withdraw">提现</button></a>
												<a href="#" class="promote"><i></i>提升额度</a>
											</div>

				</div>
				<img src="../images/portrait.jpg" alt="头像" class="portrait">
				<div class="basc info">
					<span class="name"></span>
										<span class="v0">[未认证]</span>
										<br>
					<span class="school"></span>
					<span class="dormitory"></span><br>
					<span class="mobile">178****0425</span>
				</div>

			</div>
	                 <link media="all" type="text/css" rel="stylesheet" href="../css/safety.css">
	<div class="security">
		<h1>添加/修改家庭住址</h1>
		
			<form action="#" method="post" id="form_update_home_add">
				<div class="itm">
					<label>姓名：</label>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input name="real_name" class="text" type="text">
										<p class="error"></p>
				</div>
				<div class="itm">
					<label class="label">学校住址：</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<select id="province" name="province">
						<!-- <option>请选择省</option> -->
					</select>&nbsp;&nbsp;
					  <select id="city" name="city" >
						<option>请选择市</option>
					</select>&nbsp;&nbsp;
					<select id="county" name="county">

						<option>请选择县区</option>
					</select>
					 <script class="resources library" src="../js/area.js" type="text/javascript"></script>
    
                             <script type="text/javascript">_init_area();</script> 
					
				</div>
				  <div id="show"></div>
				
				<div class="itm">	
					<label class="label">详细地址：</label><input type="text" style="width:363px;" name="addr" class="input_css" id="address" placeholder="请输入街道号门牌号" value="">
					<span style="color: red"></span>
				</div>
				<div class="btns">
					<label class="label">&nbsp;</label>
					<input type="submit" value="确认">
					<input type="reset" value="重置">
				</div>
			</form>
		</div>
	</div>
		</div>
	</div>

       <div class="footer">
        <div class="layout1200">
            <div class="clearfix">
            <div class="fl bdLine">
                <ul class="fl unit ml15" style="width:120px">
                    <li class="first"><em>爱学贷</em></li>
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
                   <li class="first"><em>手机爱学贷</em></li>
                    <li></li>
                    <li><a href="#" target="_blank"><img src="../images/ip_icon.jpg"></a></li>
                    <li><a href="#"><img src="../images/ad_icon.jpg"></a></li>
                  
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
    
    <div id="J_RSide" style="right: 0px;">
        <a class="common-icon qr-code-icon" href="javascript:;"></a>
        <a class="common-icon qr-code-icon-tip" href=""></a>
        <a class="common-icon qq-kefu-icon" href="#" id="BizQQWPA" title="在线咨询" target="_blank"></a>
        <a class="common-icon to-top-icon"></a>
    </div>

	<script type="text/javascript">
	    var aixuedai = {
	    	path:'/',
	        staticpath: '#',
	        paydomain: '#',
	        versions: '201510292',
	        userid: "307136",
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
<script src="../js/require.js" data-main="../js/common.js"></script>
<script type="text/javascript">
	requirejs(['../js/user.js?v=201510292']);
</script>

        <script type="text/javascript">
var Gid  = document.getElementById ;
var showArea = function(){
	Gid('show').innerHTML = "<h3>省" + Gid('province').value + " - 市" + 	
	Gid('city').value + " - 县/区" + 
	Gid('county').value + "</h3>"
							}
Gid('county').setAttribute('onchange','showArea()');
</script>
        

<div id="userdata_el" _oklj_uj="4UTX7O3REAERDF6A" style="visibility: hidden; position: absolute;"></div><div id="tip_holder" style="max-width:300px;"><div id="tip_arrow"><div id="tip_arrow_inner"></div></div><div id="tip_content"></div></div></body></html>


