<%@ page language="java"  import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>微你而生－深受欢迎的大学生信用分期平台</title>
    <meta name="keywords" content="大学生分期、大学生分期付款、大学生分期购物">
    <meta name="description" content="微你而生——大学生理想分期贷款服务平台">
   <link rel="icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../css/base.css">
    <link rel="stylesheet" type="text/css" href="../css/view.css">
    <script  src="../js/frms-fingerprint-min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/index.css">
		<link type="text/css" rel="stylesheet" href="../css/style.css">
	<link media="all" type="text/css" rel="stylesheet" href="../css/reset.css">
  <link rel="stylesheet" href="../css/global.css" >
	<link rel="stylesheet" href="../css/group_index.css" >
    <style>.hui-title a span,.index-sec .sec-hd a span{font-family:"\5b8b\4f53"}.hui-li li h3,.index-sec .right-list li h3{text-align:center;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.lideshow{position:relative;height:568px;min-width:1200px}.lideshow .lideshow-img{position:relative;height:568px;z-index:40}.lideshow .lideshow-img li{position:absolute;left:0;top:0;width:100%}.lideshow .lideshow-img li a.normal{width:100%;height:568px;margin:0 auto;display:block}.lideshow .lideshow-num{z-index:50;text-align:center;left:0;right:0;position:absolute;bottom:170px}.lideshow .lideshow-num li{margin:0 5px;width:16px;height:16px;display:inline-block;overflow:hidden;background-color:#fff;filter:alpha(opacity=80);-moz-opacity:.8;opacity:.8;*display:inline;zoom:1}.lideshow .lideshow-num li:hover{background-color:#fe4979;cursor:pointer}.lideshow .lideshow-num li.on{background-color:#fe4979}.lideshow .lindeshow-right{position:absolute;z-index:60;top:0;left:50%;margin-left:426px;background:#fff;width:172px;height:380px;overflow:hidden;cursor:default}.scan-app,.wallet-new{position:absolute;z-index:42}.index a{color:#fff;text-decoration:none}.banner-slider li,.index-ico-android,.index-ico-app,.index-ico-hui,.index-ico-ios,.index-ico-menu1,.index-ico-menu2,.index-ico-menu3,.index-ico-menu4,.index-ico-menu5,.index-ico-menu6,.index-ico-menu7,.index-ico-menu8{display:inline-block;background:url(http://cres.fenqile.com/res/img/index/index_v2.png) no-repeat}.index-ico-android,.index-ico-ios{width:30px;height:46px}.index-ico-android{background-position:-30px 0}.index-ico-app{display:block;width:95px;height:95px;margin:0 auto;background-position:0 -124px}.index-ico-hui{width:96px;height:22px;line-height:22px;color:#fff;text-align:center;font-size:12px;background-position:-62px 0}.index-banner{min-width:1200px;height:568px;margin-bottom:62px}.wallet-new{bottom:12px;left:50%;margin-left:-600px;width:1200px;height:143px;line-height:99em;overflow:hidden}.wallet-new-a1,.wallet-new-a2,.wallet-new-a3,.wallet-new-a4{background:url(http://cres.fenqile.com/res/img/index/wallet_new.png?v=20150818) no-repeat;width:291px;height:143px;display:block;position:absolute}.hui-li li .am-img em,.index-sec .right-list li .am-img em{background-image:-moz-linear-gradient(0deg,rgba(255,255,255,0),rgba(255,255,255,.4),rgba(255,255,255,0));background-image:-webkit-linear-gradient(0deg,rgba(255,255,255,0),rgba(255,255,255,.4),rgba(255,255,255,0));background-image:-o-linear-gradient(0deg,rgba(255,255,255,0),rgba(255,255,255,.4),rgba(255,255,255,0))}.wallet-new-a1{left:0;top:0;background-position:0 0}.wallet-new-a1:hover{background-position:0 -146px}.wallet-new-a2{left:303px;top:0;background-position:-303px 0}.wallet-new-a2:hover{background-position:-303px -146px}.wallet-new-a3{left:606px;top:0;background-position:-606px 0}.wallet-new-a3:hover{background-position:-606px -146px}.wallet-new-a4{right:0;top:0;background-position:-909px 0}.wallet-new-a4:hover{background-position:-909px -146px}.scan-app{left:50%;margin-left:470px;top:47px;width:129px;text-align:center}.scan-app .scan-hd{visibility:hidden;padding-top:16px;padding-bottom:16px}.scan-app .scan-hd em{display:inline-block;width:1px;height:46px;background-color:#696660;margin:0 16px}.scan-app .scan-bd{visibility:hidden;font-size:14px;line-height:44px}.scan-app .scan-ft{visibility:hidden;display:block;height:42px;line-height:42px;font-size:16px;background-color:rgba(255,255,255,.16)}.hui-title{padding-bottom:8px}.hui-title h2{font-size:24px;color:#000}.hui-title .index-ico-hui{margin-left:9px;margin-top:7px}.hui-title a{font-size:14px;color:grey;margin-left:8px;position:relative;top:8px}.hui-title a.more,.hui-title a:hover{color:#60aeff}.hui-title a.more:hover{text-decoration:underline}.hui-li li .hui-show .hui-show-text del,.hui-title a:hover{text-decoration:none}.hui-li{background-color:#fff}.hui-li li{float:left;width:299px;border-left:1px solid #f2f2f2;position:relative;padding:10px 0 0}.hui-li li:first-child{width:300px;border-left:0}.hui-li li h3{font-size:18px;margin-top:0;padding:0 15px;margin-bottom:38px;font-weight:400}.hui-li li h3 a{color:#636363}.hui-li li .hui-price{background-color:#f9f9f9;padding-bottom:11px;margin-top:45px}.hui-li li .hui-price-num{font-size:14px;color:#848383;padding:5px 15px}.hui-li li .hui-show{position:relative;padding-left:16px;margin-left:15px}.hui-li li .hui-show .hui-show-ico{width:0;height:0;overflow:hidden;font-size:0;display:inline-block;border-width:24px 15px;border-color:transparent #fe4b79 transparent transparent;border-style:dashed solid dashed dashed;position:absolute;left:-14px;top:0}.hui-li li .hui-show .hui-show-text{height:48px;line-height:48px;color:#FFF;background-color:#fe4b79;font-size:17px;text-align:center}.hui-li li .hui-show .hui-show-text em{font-size:14px}.hui-li li .hui-show .hui-show-text .line{margin:0 3px;color:#ffb2c6}.hui-li li .am-img{overflow:hidden;width:299px;height:220px;position:relative}.hui-li li .am-img em{position:absolute;left:-260px;top:0;width:260px;transform:skewx(-15deg);background-image:linear-gradient(0deg,rgba(255,255,255,0),rgba(255,255,255,.4),rgba(255,255,255,0));height:220px}.hui-li li .am-img em,.index-sec .right-list li .am-img em{-o-transform:skewx(-25deg);-moz-transform:skewx(-25deg);-webkit-transform:skewx(-25deg)}.hui-li li:hover{cursor:pointer;transition-property:box-shadow;-webkit-transition-property:box-shadow;-moz-transition-property:box-shadow;-o-transition-property:all;-webkit-transition-duration:.5s;-moz-transition-duration:.5s;-o-transition-duration:.5s;-moz-box-shadow:0 0 15px #d1d1d1;-webkit-box-shadow:0 0 15px #d1d1d1}.hui-li li:hover,.index-sec .right-list li:hover{transition-duration:.5s;box-shadow:0 0 15px #d1d1d1}.hui-li li:hover em{left:260px;transition:.5s}.hui-li li:hover em,.index-sec .right-list li:hover em{-moz-transition:.5s;-o-transition:.5s;-webkit-transition:.5s}.index-ico-menu1,.index-ico-menu2,.index-ico-menu3,.index-ico-menu4,.index-ico-menu5,.index-ico-menu6,.index-ico-menu7,.index-ico-menu8{display:block;width:38px;height:38px;margin:0 auto 10px}.index-ico-menu1{background-position:0 -47px}.index-ico-menu2{background-position:-38px -47px}.index-ico-menu3{background-position:-76px -47px}.index-ico-menu4{background-position:-114px -47px}.index-ico-menu5{background-position:-114px -85px}.index-ico-menu6{background-position:0 -85px}.index-ico-menu7{background-position:-38px -85px}.index-ico-menu8{background-position:-76px -85px}.index-sec{margin-top:32px}.index-sec .sec-hd{margin-bottom:15px}.index-sec .sec-hd h2{color:#373737;font-size:20px;float:left}.index-sec .sec-hd a{font-size:14px;color:grey;margin-left:8px;position:relative;top:4px}.index-sec .sec-hd a.more,.index-sec .sec-hd a:hover{color:#60aeff}.index-sec .sec-hd a.more:hover{text-decoration:underline}.index-sec .right-list li .index-li-pic:hover,.index-sec .right-list li h3 a:hover,.index-sec .sec-hd a:hover{text-decoration:none}.index-sec .left-menu{float:left;width:110px}.index-sec .left-menu li{border-bottom:1px solid #2991ff}.index-sec .left-menu li:last-child{border-bottom:none}.index-sec .left-menu li a{display:block;height:69px;overflow:hidden;padding-top:48px;padding-bottom:38px;text-align:center;font-size:14px;background-color:#3e9bff;color:#fff}.index-sec .left-menu li a:hover{text-decoration:none;background-color:#52a6ff}.index-sec .left-menu li.on a{background-color:#52a6ff}.index-sec .mid-banner{width:391px;height:623px;float:left;overflow:hidden;position:relative}.index-sec .mid-banner .banner-list{width:100%}.index-sec .mid-banner .banner-list li{width:100%;position:absolute;top:0;left:0}.index-sec .mid-banner .banner-list li a{display:block;height:623px}.index-sec .mid-banner .banner-slider{position:absolute;width:100%;height:13px;bottom:22px;left:0;text-align:center;z-index:10}.index-sec .mid-banner .banner-slider li{display:inline-block;width:13px;height:13px;background-position:-76px -24px;margin:0 3px;cursor:pointer}.index-sec .mid-banner .banner-slider li.on{background-position:-62px -24px}.index-sec .right-list{background-color:#fff;float:left;width:699px;position:relative}.index-sec .right-list li{float:left;width:209px;height:281px;border-right:1px solid #f2f2f2;padding:15px 12px;margin-right:-1px;border-bottom:1px solid #f2f2f2}.index-sec .right-list li h3 a{color:#5f5f5f}.index-sec .right-list li p{color:#b4b4b4}.index-sec .right-list li .index-li-pic{font-size:16px;color:#fff;background-color:#60aeff;display:inline-block;padding:3px 8px;margin-top:4px}.index-sec .right-list li .am-img{overflow:hidden;width:209px;height:209px;position:relative}.index-sec .right-list li .am-img em{position:absolute;left:-260px;top:0;width:260px;height:220px;transform:skewx(-15deg);background-image:linear-gradient(0deg,rgba(255,255,255,0),rgba(255,255,255,.4),rgba(255,255,255,0))}.index-sec .right-list li:hover{cursor:pointer;transition-property:box-shadow;-webkit-transition-property:box-shadow;-moz-transition-property:box-shadow;-o-transition-property:all;-webkit-transition-duration:.5s;-moz-transition-duration:.5s;-o-transition-duration:.5s;-moz-box-shadow:0 0 15px #d1d1d1;-webkit-box-shadow:0 0 15px #d1d1d1}.index-sec .right-list li:hover em{left:260px;transition:.5s}.index-sec2 .left-menu li{border-bottom-color:#f45f85}.index-sec2 .left-menu li a{background-color:#ff7195}.index-sec2 .left-menu li a:hover,.index-sec2 .left-menu li.on a{background-color:#ff81a1}.index-sec2 .mid-banner .banner-slider li.on{background-position:-90px -24px}.i-value-ico,.map-pop-ico,.text-d{background:url(http://cres.fenqile.com/res/img/index/ico.png) no-repeat;display:inline-block}.goback,.map .text-d,.side-right a{overflow:hidden;display:block;text-indent:-9999em}.map{background-repeat:no-repeat;width:1200px;height:906px;margin:140px auto 0;position:relative}.map .map-pop,.map .num,.map .text-a,.map .text-d{position:absolute}.map .num{font-size:26px;top:63px;left:400px;color:#5faeff;width:74px;text-align:center}.map .text-a{font-size:14px;color:#7c7c7c}.map .text-wwmq{top:250px;left:300px}.map .text-yc{top:438px;left:600px}.map .text-heb{top:178px;left:945px}.map .text-cc{top:259px;left:925px}.map .text-sy{top:333px;left:905px}.map .text-ts{top:333px;left:845px}.map .text-bj{top:333px;left:797px}.map .text-qd{top:441px;left:874px}.map .text-ty{top:427px;left:725px}.map .text-hhht{top:378px;left:662px}.map .text-zz{top:517px;left:748px}.map .text-xa{top:521px;left:660px}.map .text-lz{top:490px;left:583px}.map .text-cd{top:603px;left:542px}.map .text-cq{top:615px;left:635px}.map .text-gy{top:685px;left:639px}.map .text-nn{top:744px;left:667px}.map .text-cs{top:642px;left:740px}.map .text-wh{top:586px;left:782px}.map .text-nc{top:628px;left:820px}.map .text-hf{top:553px;left:827px}.map .text-nj{top:540px;left:862px}.map .text-sh{top:554px;left:912px}.map .text-hz{top:617px;left:892px}.map .text-xm{top:700px;left:858px}.map .text-sz{top:760px;left:788px}.map .text-hk{top:847px;left:694px}.map .text-gz{top:738px;left:743px}.map .text-jn{top:446px;left:818px}.map .text-bd{top:395px;left:761px}.map .text-suzhou{top:515px;left:887px}.map .text-km{top:745px;left:517px}.map .text-fz{top:665px;left:890px}.map .text-wlmq{top:340px;left:310px}.map .text-xn{top:445px;left:429px}.map .text-dn{top:353px;left:885px}.map .text-sjz{top:380px;left:780px}.map .text-tj{top:365px;left:820px}.map .text-d{width:25px;height:34px;background-position:-140px -45px}.map .text-d-on{background-position:-170px -45px}.map .d-wwmq{top:215px;left:317px}.map .d-yc{top:405px;left:603px}.map .d-heb{top:143px;left:951px}.map .d-cc{top:224px;left:928px}.map .d-sy{top:298px;left:908px}.map .d-ts{top:298px;left:848px}.map .d-bj{top:298px;left:800px}.map .d-qd{top:406px;left:877px}.map .d-ty{top:392px;left:728px}.map .d-hhht{top:343px;left:677px}.map .d-zz{top:482px;left:751px}.map .d-xa{top:486px;left:663px}.map .d-lz{top:455px;left:586px}.map .d-cd{top:568px;left:545px}.map .d-cq{top:580px;left:638px}.map .d-gy{top:650px;left:642px}.map .d-nn{top:709px;left:670px}.map .d-cs{top:605px;left:743px}.map .d-wh{top:551px;left:785px}.map .d-nc{top:593px;left:823px}.map .d-hf{top:518px;left:830px}.map .d-nj{top:505px;left:865px}.map .d-sh{top:519px;left:915px}.map .d-hz{top:582px;left:895px}.map .d-xm{top:665px;left:861px}.map .d-sz{top:725px;left:791px}.map .d-hk{top:812px;left:697px}.map .d-gz{top:703px;left:746px}.map .d-jn{top:411px;left:821px}.map .d-bd{top:360px;left:764px}.map .d-suzhou{top:485px;left:890px}.map .d-km{top:715px;left:520px}.map .d-fz{top:635px;left:890px}.map .d-wlmq{top:305px;left:325px}.map .d-xn{top:408px;left:429px}.map .d-tj{top:335px;left:822px}.map .d-sjz{top:353px;left:789px}.map .d-dn{top:328px;left:888px}.map .map-pop{width:368px;height:64px;padding:6px;background-color:#515151;border-radius:5px}.map .map-pop .map-pop-ico{width:15px;height:10px;overflow:hidden;background-position:-200px -50px;position:absolute;bottom:-10px;right:110px}.map .map-pop .map-pop-text{position:relative;padding-left:80px}.map .map-pop .map-pop-text img{position:absolute;left:0;right:0}.map .map-pop .map-pop-text h3{color:#fff;font-size:14px}.map .map-pop .map-pop-text p{color:#b4b4b4;height:40px;overflow:hidden;width:100%;line-height:20px}.map-bottom{font-size:16px;padding-bottom:50px}.map-bottom a{color:#4a9df4;text-decoration:underline}.index-value{background-color:#ddd;padding:20px 0;min-width:1200px}.index-value .index-value-li{width:201px;float:left;position:relative;padding-left:55px}.index-value .index-value-li dt{font-size:18px;color:#6b6b6b}.index-value .index-value-li dd{font-size:12px;color:#908e8e}.index-value .index-value-li2{width:201px}.index-value .index-value-li3{width:209px}.index-value .index-value-li4{width:201px}.index-value .index-value-li5{width:105px;float:right}.index-value .i-value-ico{width:41px;height:41px;position:absolute;left:0;top:0}.index-value .i-value-1{background-position:0 0}.index-value .i-value-2{background-position:-43px 0}.index-value .i-value-3{background-position:-86px 0}.index-value .i-value-4{background-position:-129px 0}.index-value .i-value-5{background-position:-172px 0}.goback,.side-right,.side-right a:hover{background:url(http://cres.fenqile.com/res/img/global/tickv2.png?v=20141210) no-repeat}.side-right{width:85px;height:163px;background-position:-88px -107px}.side-right a{width:83px;height:77px;margin-left:1px}.side-right a.a1:hover{background-position:-1px -106px}.side-right a.a2{margin-top:0}.side-right a.a2:hover{background-position:-1px -184px}.goback{width:85px;height:43px;background-position:0 -17px;position:relative;top:-8px}.lm-layer,.tickling-layer{position:fixed;bottom:140px;z-index:100}.goback:hover{background-position:0 -61px}.tick-wrap .ask-wrap{border:1px solid #d7d7d7;border-bottom:none;margin-top:12px;background-color:#FFF;background:-webkit-gradient(linear,0 0,0 100%,from(#f9f9f9),to(#f2f2f2));background:-moz-linear-gradient(top,#f9f9f9,#f2f2f2);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#FFF9F9F9, endColorstr=#FFF2F2F2, grandientType=1)}.advice span,.feedback span,.r-top span{background:url(http://cres.fenqile.com/res/img/global/tick.png?v=20140918) no-repeat;display:inline-block;font-size:0;height:0;overflow:hidden;vertical-align:-5px;*vertical-align:0}.advice,.feedback{display:block;width:36px;height:36px;text-decoration:none;text-align:center;border-bottom:1px #d7d7d7 solid;line-height:36px}.r-top span{width:36px;padding-top:36px;background-position:0 -37px}.r-top:hover span{background-position:0 0}.feedback span{width:18px;padding-top:15px;background-position:0 -74px}.advice span{width:16px;padding-top:19px;background-position:-18px -74px}.tickling-layer{right:50%;margin-right:-700px;_position:absolute}.lm-layer{left:50%;margin-left:-660px;_position:absolute}@media screen and (max-width:1600px){.tickling-layer{right:40px;margin-right:0}.lm-layer{left:40px;margin-left:0}}@media screen and (max-width:1152px){.tickling-layer{right:20px;margin-right:0}.lm-layer{left:20px;margin-left:0}}@media screen and (max-width:1024px){.tickling-layer{right:0;margin-right:0}.lm-layer{left:0;margin-left:0}}.icon-freeb{position:relative;top:7px;left:3px}

</style>


</head>
<body>
	
    <!-- begin topbar -->
    <div class="clearfix header-help-tel">
        <div class="layout1200">
            <div class="fl fs12">
         ${custnick }   欢迎来到微你而生</div>
            <div class="fr fs12">
                <a class="fl mr20" href="/helpcenter.html" target="_blank">帮助中心</a>
                <span class="fl mr20">咨询热线：888-8888-8888</span>
                <span class="fl orange-color hand" id="J_Report">我要举报</span></div>
        </div>
    </div>
    <!-- end topbar -->    <!-- begin header -->
    <div id="header">
        <div class="header-top">
            <div class="layout1200">
                <div class="clearfix">
                    <a class="fl header-logo" href="/" title="爱学贷,最受大学生欢迎的分期消费品牌"></a>
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
            <span class="H_iconBanner sport-icon vert_mid"></span>代步
        </a>
        <a href="#">
           <span class="H_iconBanner cloth-icon vert_mid"></span><span class="ml25 fs18 vert_mid">服饰</span>
        </a>
        <a href="#">
            <span class="H_iconBanner beauty-icon vert_mid"></span><span class="ml25 fs18 vert_mid">乐器</span>
        </a>
        <a href="#">
            <span class="H_iconBanner bag-icon vert_mid"></span><span class="ml25 fs18 vert_mid">箱包</span>
        </a>
          
        <!--<a href="/category/list.html?cat=50000000">
            <b class="common-icon pubilcMenu menuOtherIcon"></b> 其他
        </a>-->
    </div>
    <!-- end menu -->
	<div class="indexMenu">
      <div class="menuBox ">
            <div class="menu fs18">
                <a href="#">
                    <span class="H_iconBanner phone-icon vert_mid"></span><span class="ml25 fs18 ">手机</span>
                </a>
                <a href="#">
                    <span class="H_iconBanner pc-icon vert_mid"></span><span class="ml25 fs18 vert_mid">电脑</span>
                </a>
                <a href="#">
                    <span class="H_iconBanner camera-icon vert_mid"></span><span class="ml25 fs18 vert_mid">数码</span>
                </a>
                <a href="#">
                    <span class="H_iconBanner sport-icon vert_mid"></span><span class="ml25 fs18 vert_mid">代步</span>
                </a>
                <a href="#">
                   <span class="H_iconBanner cloth-icon vert_mid"></span><span class="ml25 fs18 vert_mid">服饰</span>
                </a>
                <a href="#">
                    <span class="H_iconBanner beauty-icon vert_mid"></span><span class="ml25 fs18 vert_mid">乐器</span>
                </a>
                <a href="#">
                    <span class="H_iconBanner bag-icon vert_mid"></span><span class="ml25 fs18 vert_mid">箱包</span>
                </a>
                  
                  
                <!--<a href="/category/list.html?cat=50000000">
                    <b class="common-icon pubilcMenu menuOtherIcon"></b> 其他
                </a>-->
            </div>
            <a href="#" class="url" target="_blank">
            </a>
      </div>
	  
	   <div class="index-scrollable" id="ScrollMain">
            <div class="in" id="ScrollMainIn">
                      <a href="#" target="_blank" style="display:block;;">
                         <img class="change" alt="" src="../images/train/scroll1.jpg">
                         <b class="font" style="background:url()"></b>
                      </a>
                      <a href="#" target="_blank" style="display:none;;">
                         <img class="change" alt="" src="../images/train/scroll2.jpg">
                         <b class="font" style="background:url()"></b>
                      </a>
                      <a href="#" target="_blank" style="display:none;;">
                         <img class="change" alt="" src="../images/train/scroll3.jpg">
                         <b class="font" style="background:url()"></b>
                      </a>
                      <a href="#" target="_blank" style="display:none;;">
                         <img class="change" alt="" src="../images/train/scroll4.jpg">
                         <b class="font" style="background:url()"></b>
                      </a>
                      <a href="#" target="_blank" style="display:none;;">
                         <img class="change" alt="" src="../images/train/scroll5.jpg">
                         <b class="font" style="background:url()"></b>
                      </a>
            </div>
            <div class="ScrollBar">
                <ul id="pagination">
                    <li><a href="javascript:;">1</a></li>
                    <li><a href="javascript:;">2</a></li>
                    <li><a href="javascript:;">3</a></li>
                    <li><a href="javascript:;">4</a></li>
                    <li><a href="javascript:;">5</a></li>
                </ul>
            </div>
        </div>
</div>
	  
	  
	  
	  
	 
    
    <center>
	<div class="tm-qx-event mt20">
    
        <div class="tm-qx-event-jsBox">
            <div class="tm-leftBox">
                <div class="tm-qx-Box tm-zb-qxBox">
                    <div class="tm-qx-leftBox">
                        <div class="tm-qx-zbyBox">
                            <ul class="tm-qx-cpList">
                            <c:forEach items="${productsList }" var="product">
                                <li >
                                    <div class="tm-qx-picBox">
                                        <a title="" target="_blank" 
						                    	href="http://">
						                    <img width="435" height="218" alt="" src="${product.imageurls}"></a>
                                     
                                    </div>
                                    <div class="tm-qx-nrBox">
                                        <h4><a title="SIFEC新媒体学院移动程序开发IOS培训" target="_blank" 
						                    	href="">
						                  ${product.productname }</a></h4>
                                        <div class="tm-qx-jjBox">
                                            <span>
                                           学费： ￥<fmt:formatNumber type="number" value="${product.quotoprice }" maxFractionDigits="2"/>
                                            <i>|</i></span>
                                            <em title="市场价：￥14400.00"><span style="text-decoration:line-through;">市场价：￥<fmt:formatNumber type="number" value="${product.retailprice}" maxFractionDigits="2"/></span></em>
                                        </div>
                                        <p><span>${product.productdescription }</span></p>
                                        <div class="tm-qx-priceBox">
                                            <span><i>月供：</i>¥<em><fmt:formatNumber type="number" value="${product.quotoprice/21 }" maxFractionDigits="2"/></em><i>起</i></span>
                                          
                                            <a class="tm-qx-trainBtn" title="" target="_blank" 
						                	href="${pageContext.request.contextPath }/products/trainDetail.action?productnumber=${product.productnumber }">
		                                	
						                    
						                </a>
                                        </div>
                                       
                                    </div>
                                </li>
                                </c:forEach>
                                </ul>
                                
                                
                                
                                
                           
                          
                       </div>
                       </div>
                 
                    <div class="tm-qx-rightBox">
                        
                    </div>
                </div>
            </div> 
            
            
            
            
            
            
            
            
            
             <div class="tm-rightJsBox">
                <div class="tm-rightBox" style="position: absolute; top: 0px;">
                <ul class="tm-rightBox-nav">
                    <li class="tm-rightNav-li" >
                        	<h4>IT培训<i></i></h4>
                            <p>
                            	<span>品牌</span>
                               	 	 <a title="" class="tm-rightNav-navA" href="javascript:;" onClick="initPostUrl('surround',79,'','')">兄弟连</a>
                               	 	 <a title=""  href="javascript:;" onClick="initPostUrl('surround',1,'','')">内威职业</a>
                               	 	 <a title=""  href="javascript:;" onClick="initPostUrl('surround',279,'','')">青大实训</a>
                               	 	 <a title=""  href="javascript:;" onClick="initPostUrl('surround',229,'','')">达内培训</a>
                               	 	 <a title=""  href="javascript:;" onClick="initPostUrl('surround',100,'','')">新普培训</a>
									 <a title=""  href="javascript:;" onClick="initPostUrl('surround',100,'','')">交大慧谷</a>
                               	 	
                            </p>
                        
                       	
                        <li >
                        	<h4>学驾驶<i></i></h4>
                            <p>
                            	<span>出发地</span>
                               	 	 <a title=""   href="javascript:;" onClick="initPostUrl('china',79,'','')">上海</a>
                               	 	 <a title=""   href="javascript:;" onClick="initPostUrl('china',1,'','')">北京</a>
                               	 	 <a title=""   href="javascript:;" onClick="initPostUrl('china',279,'','')">成都</a>
                               	 	 <a title=""   href="javascript:;" onClick="initPostUrl('china',229,'','')">广州</a>
                               	 	 <a title=""   href="javascript:;" onClick="initPostUrl('china',100,'','')">杭州</a>
                               	 	 <a title=""   href="javascript:;" onClick="initPostUrl('china',82,'','')">南京</a>
                            </p>
                            <p>
                            	<span>目的地</span>
                            	<a title="全部"   href="javascript:;" onClick="initPostUrl('china','79','all','')">全部</a>
					        		<a title="三亚"  href="javascript:;" onClick="initPostUrl('china','79','sanya272','')">三亚</a>
					        		<a title="北京"  href="javascript:;" onClick="initPostUrl('china','79','beijing1','')">北京</a>
					        		<a title="厦门"  href="javascript:;" onClick="initPostUrl('china','79','xiamen137','')">厦门</a>
					        		<a title="桂林"  href="javascript:;" onClick="initPostUrl('china','79','guilin254','')">桂林</a>
					        		<a title="张家界"  href="javascript:;" onClick="initPostUrl('china','79','zhangjiajie221','')">张家界</a>
					        		<a title="丽江"  href="javascript:;" onClick="initPostUrl('china','79','lijiang320','')">丽江</a>
					        		<a title="云南"  href="javascript:;" onClick="initPostUrl('china','79','yunnan312','')">云南</a>
					        		<a title="广西"  href="javascript:;" onClick="initPostUrl('china','79','guangxi251','')">广西</a>
					        		<a title="湖南"  href="javascript:;" onClick="initPostUrl('china','79','hunan212','')">湖南</a>
					        		<a title="江苏"  href="javascript:;" onClick="initPostUrl('china','79','jiangsu80','')">江苏</a>
					        		<a title="上海"  href="javascript:;" onClick="initPostUrl('china','79','shanghai79','')">上海</a>
					        		<a title="浙江"  href="javascript:;" onClick="initPostUrl('china','79','zhejiang96','')">浙江</a>
					        		<a title="九寨沟"  href="javascript:;" onClick="initPostUrl('china','79','jiuzhaigou3698','')">九寨沟</a>
					        		<a title="吉林"  href="javascript:;" onClick="initPostUrl('china','79','jilinsheng56','')">吉林</a>
					        		<a title="哈尔滨"  href="javascript:;" onClick="initPostUrl('china','79','haerbin67','')">哈尔滨</a>
					        		<a title="长白山"  href="javascript:;" onClick="initPostUrl('china','79','changbaishan3577','')">长白山</a>
					        		<a title="东北"  href="javascript:;" onClick="initPostUrl('china','79','dongbei10554816','')">东北</a>
                            </p>
                            <p>
                            	<span>游玩时间</span>
                            	 <a  title=""  href="javascript:;" onClick="initPostUrl('china','79','','')">全部</a>
	                               	 	<a title=""  href="javascript:;" onClick="initPostUrl('china','79','','m2')">2月</a>
	                               	 	<a title=""  href="javascript:;" onClick="initPostUrl('china','79','','m3')">3月</a>
	                               	 	<a title=""  href="javascript:;" onClick="initPostUrl('china','79','','m4')">4月</a>
                            </p>
                        </li>
                        
						<li >
                        	<h4>艺术培训<i></i></h4>
                            <p>
                            	<span>出发地</span>
                               	 	 <a title=""  href="javascript:;" onClick="initPostUrl('abroad',79,'','')">上海</a>
                               	 	 <a title=""  href="javascript:;" onClick="initPostUrl('abroad',1,'','')">北京</a>
                               	 	 <a title=""  href="javascript:;" onClick="initPostUrl('abroad',279,'','')">成都</a>
                               	 	 <a title=""  href="javascript:;" onClick="initPostUrl('abroad',229,'','')">广州</a>
                               	 	 <a title=""  href="javascript:;" onClick="initPostUrl('abroad',100,'','')">杭州</a>
                               	 	 <a title=""  href="javascript:;" onClick="initPostUrl('abroad',82,'','')">南京</a>
                            </p>
                            <p>
                            	<span>目的地</span>
                            	<a title="全部"   href="javascript:;" onClick="initPostUrl('abroad','79','all','')">全部</a>
					        		<a title="塞班岛"   href="javascript:;" onClick="initPostUrl('abroad','79','saibandao3547','')">塞班岛</a>
					        		<a title="越南"   href="javascript:;" onClick="initPostUrl('abroad','79','yuenan3624','')">越南</a>
					        		<a title="台湾"   href="javascript:;" onClick="initPostUrl('abroad','79','taiwan401','')">台湾</a>
					        		<a title="韩国"   href="javascript:;" onClick="initPostUrl('abroad','79','hanguo3544','')">韩国</a>
					        		<a title="普吉岛"   href="javascript:;" onClick="initPostUrl('abroad','79','pujidao3563','')">普吉岛</a>
					        		<a title="马尔代夫"   href="javascript:;" onClick="initPostUrl('abroad','79','maerdaifu3546','')">马尔代夫</a>
					        		<a title="西班牙"   href="javascript:;" onClick="initPostUrl('abroad','79','xibanya3636','')">西班牙</a>
					        		<a title="长滩岛"   href="javascript:;" onClick="initPostUrl('abroad','79','changtandao3607','')">长滩岛</a>
					        		<a title="欧洲"   href="javascript:;" onClick="initPostUrl('abroad','79','ouzhou3644','')">欧洲</a>
					        		<a title="马来西亚"   href="javascript:;" onClick="initPostUrl('abroad','79','malaixiya3570','')">马来西亚</a>
					        		<a title="斯里兰卡"   href="javascript:;" onClick="initPostUrl('abroad','79','sililanka3656','')">斯里兰卡</a>
					        		<a title="香港"   href="javascript:;" onClick="initPostUrl('abroad','79','xianggang398','')">香港</a>
					        		<a title="日本"   href="javascript:;" onClick="initPostUrl('abroad','79','riben3543','')">日本</a>
					        		<a title="泰国"   href="javascript:;" onClick="initPostUrl('abroad','79','taiguo3542','')">泰国</a>
					        		<a title="美国"   href="javascript:;" onClick="initPostUrl('abroad','79','meiguo3571','')">美国</a>
					        		<a title="澳大利亚"   href="javascript:;" onClick="initPostUrl('abroad','79','aodaliya3596','')">澳大利亚</a>
					        		<a title="巴厘岛"   href="javascript:;" onClick="initPostUrl('abroad','79','balidao3545','')">巴厘岛</a>
					        		<a title="南非"   href="javascript:;" onClick="initPostUrl('abroad','79','nanfei3573','')">南非</a>
					        		<a title="意大利"   href="javascript:;" onClick="initPostUrl('abroad','79','yidali3562','')">意大利</a>
					        		<a title="新西兰"   href="javascript:;" onClick="initPostUrl('abroad','79','xinxilan3597','')">新西兰</a>
					        		<a title="土耳其"   href="javascript:;" onClick="initPostUrl('abroad','79','tuerqi3574','')">土耳其</a>
					        		<a title="苏梅岛"   href="javascript:;" onClick="initPostUrl('abroad','79','sumeidao3736','')">苏梅岛</a>
					        		<a title="加拿大"   href="javascript:;" onClick="initPostUrl('abroad','79','jianada3651','')">加拿大</a>
                            </p>
                            <p>
                            	<span>游玩时间</span>
                            	 <a  title=""  href="javascript:;" onClick="initPostUrl('abroad','79','','')">全部</a>
	                               	 	<a title=""  href="javascript:;" onClick="initPostUrl('abroad','79','','m2')">2月</a>
	                               	 	<a title=""  href="javascript:;" onClick="initPostUrl('abroad','79','','m3')">3月</a>
	                               	 	<a title=""  href="javascript:;" onClick="initPostUrl('abroad','79','','m4')">4月</a>
                            </p>
                        </li>
                        
                       
                        
                     
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
    <div class="tm-more-event mt20">
    	<h3 class="mt10">更多培训活动</h3>
        <ul class="tm-more-list mt20">
        		<li><a target="_blank" href="#" title="天目湖御水温泉"><img src="../images/train/it1.jpg" width="285" height="190" /></a></li>
        		<li><a target="_blank" href="#" title="苏州天颐温泉"><img src="../images/train/it2.jpg" width="285" height="190" /></a></li>
        		<li><a target="_blank" href="#" title="宁波洲际"><img src="../images/train/it3.jpg" width="285" height="190" /></a></li>
        		<li><a target="_blank" href="#" title="杭州临安湍口"><img src="../images/train/driver1.jpg" width="285" height="190" /></a></li>
        		<li><a target="_blank" href="#" title="圣马可酒店"><img src="../images/train/driver2.jpg" width="285" height="190" /></a></li>
        		<li><a target="_blank" href="#" title="武夷山299"><img src="../images/train/art1.jpg" width="285" height="190" /></a></li>
        		<li><a target="_blank" href="#" title="洲际酒店"><img src="../images/train/art2.jpg" width="285" height="190" /></a></li>
        </ul>
    </div>
</div>

</center>
       
   <section>
            <div class="index-value">
                <div class="container fn-clear">
                    <div class="index-value-li"> <i class="i-value-ico i-value-1"></i>
                        <dl>
                            <dt>卓越品质</dt>
                            <dd>100%正品行货</dd>
                        </dl>
                    </div>
                    <div class="index-value-li index-value-li2"> <i class="i-value-ico i-value-2"></i>
                        <dl>
                            <dt>安全放心</dt>
                            <dd>先验货再付款</dd>
                        </dl>
                    </div>
                    <div class="index-value-li index-value-li3">
                        <i class="i-value-ico i-value-3"></i>
                        <dl>
                            <dt>手续简单</dt>
                            <dd>凭学生证即可办理</dd>
                        </dl>
                    </div>
                    <div class="index-value-li index-value-li4">
                        <i class="i-value-ico i-value-4"></i>
                        <dl>
                            <dt>轻松还款</dt>
                            <dd>足不出户在线还款</dd>
                        </dl>
                    </div>
                    <div class="index-value-li index-value-li5">
                        <i class="i-value-ico i-value-5"></i>
                        <dl>
                            <dt>独家提供</dt>
                            <dd>提前还款免服务费</dd>
                        </dl>
                    </div>
                </div>
            </div>
    </section>
	
 <!-- begin footer -->
    <div class="footer">
        <div class="layout1200">
            <div class="clearfix">
            <div class="fl bdLine">
                <ul class="fl unit ml15" style="width:120px">
                    <li class="first"><em>微你而生</em></li>
                    <li><a href="/aboutus.html" target="_blank">关于微你而生</a></li>
                    <li><a href="/joinus.html" target="_blank">加入微你而生</a></li>
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
                        <div class="fs30 orange-color fl">888-8888-8888</div>
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
    <script type="text/javascript">
	    var aixuedai = {
	    	path:'/',
	        staticpath: '',
	        paydomain: '',
	        versions: '',
	        userid: "",
	        useraccounts: ""
	    };

        </script>
	<!-- requirejs main -->
	<script src="../js/require.js" data-main="../js/common.js"></script>
        
        <script src="../js/index.js?v=20150918"></script>

        
</body>
</html>