<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>大学生信用生活服务平台－深受欢迎的大学生信用分期平台</title>
    <meta name="keywords" content="大学生分期、大学生分期付款、大学生分期购物">
    <meta name="description" content="大学生信用生活服务平台——大学生理想分期贷款服务平台">
    <link rel="icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../css/base.css">
    <link rel="stylesheet" type="text/css" href="../css/view.css">
    <script  src="../js/frms-fingerprint-min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/index.css">
		<link type="text/css" rel="stylesheet" href="../css/style.css">
	<link media="all" type="text/css" rel="stylesheet" href="../css/reset.css">
 
	<script type="text/javascript">!function(e){function i(){this.map={}}var t=(new Date).getTime();i.prototype={setMark:function(e){this.map[e]=[]},setPoint:function(e,i){var n=(new Date).getTime(),o=t,r=[i,n-o];this.map[e].push(r.join(":"))},send:function(){this.map={}}},e.Logger=i}(this);var G_PAGE_CONFIG={main:{index:1},product:{index:2,list:5,detail:6,limited_sale:4},cash:{intro:3},order:{confirm:7,info:8,result:9},register:{index:10}},gLogger=new Logger;/*dce56d5e51d8786bfd8fdb8231bcf548*/</script>
    <link href="../css/global.css?v=7291fbaaab627f0f2f77a505688d5aff" rel="stylesheet" media="screen">
    <style>.hui-title a span,.index-sec .sec-hd a span{font-family:"\5b8b\4f53"}.hui-li li h3,.index-sec .right-list li h3{text-align:center;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.lideshow{position:relative;height:568px;min-width:1200px}.lideshow .lideshow-img{position:relative;height:568px;z-index:40}.lideshow .lideshow-img li{position:absolute;left:0;top:0;width:100%}.lideshow .lideshow-img li a.normal{width:100%;height:568px;margin:0 auto;display:block}.lideshow .lideshow-num{z-index:50;text-align:center;left:0;right:0;position:absolute;bottom:170px}.lideshow .lideshow-num li{margin:0 5px;width:16px;height:16px;display:inline-block;overflow:hidden;background-color:#fff;filter:alpha(opacity=80);-moz-opacity:.8;opacity:.8;*display:inline;zoom:1}.lideshow .lideshow-num li:hover{background-color:#fe4979;cursor:pointer}.lideshow .lideshow-num li.on{background-color:#fe4979}.lideshow .lindeshow-right{position:absolute;z-index:60;top:0;left:50%;margin-left:426px;background:#fff;width:172px;height:380px;overflow:hidden;cursor:default}.scan-app,.wallet-new{position:absolute;z-index:42}.index a{color:#fff;text-decoration:none}.banner-slider li,.index-ico-android,.index-ico-app,.index-ico-hui,.index-ico-ios,.index-ico-menu1,.index-ico-menu2,.index-ico-menu3,.index-ico-menu4,.index-ico-menu5,.index-ico-menu6,.index-ico-menu7,.index-ico-menu8{display:inline-block;background:url(http://cres.fenqile.com/res/img/index/index_v2.png) no-repeat}.index-ico-android,.index-ico-ios{width:30px;height:46px}.index-ico-android{background-position:-30px 0}.index-ico-app{display:block;width:95px;height:95px;margin:0 auto;background-position:0 -124px}.index-ico-hui{width:96px;height:22px;line-height:22px;color:#fff;text-align:center;font-size:12px;background-position:-62px 0}.index-banner{min-width:1200px;height:568px;margin-bottom:62px}.wallet-new{bottom:12px;left:50%;margin-left:-600px;width:1200px;height:143px;line-height:99em;overflow:hidden}.wallet-new-a1,.wallet-new-a2,.wallet-new-a3,.wallet-new-a4{background:url(http://cres.fenqile.com/res/img/index/wallet_new.png?v=20150818) no-repeat;width:291px;height:143px;display:block;position:absolute}.hui-li li .am-img em,.index-sec .right-list li .am-img em{background-image:-moz-linear-gradient(0deg,rgba(255,255,255,0),rgba(255,255,255,.4),rgba(255,255,255,0));background-image:-webkit-linear-gradient(0deg,rgba(255,255,255,0),rgba(255,255,255,.4),rgba(255,255,255,0));background-image:-o-linear-gradient(0deg,rgba(255,255,255,0),rgba(255,255,255,.4),rgba(255,255,255,0))}.wallet-new-a1{left:0;top:0;background-position:0 0}.wallet-new-a1:hover{background-position:0 -146px}.wallet-new-a2{left:303px;top:0;background-position:-303px 0}.wallet-new-a2:hover{background-position:-303px -146px}.wallet-new-a3{left:606px;top:0;background-position:-606px 0}.wallet-new-a3:hover{background-position:-606px -146px}.wallet-new-a4{right:0;top:0;background-position:-909px 0}.wallet-new-a4:hover{background-position:-909px -146px}.scan-app{left:50%;margin-left:470px;top:47px;width:129px;text-align:center}.scan-app .scan-hd{visibility:hidden;padding-top:16px;padding-bottom:16px}.scan-app .scan-hd em{display:inline-block;width:1px;height:46px;background-color:#696660;margin:0 16px}.scan-app .scan-bd{visibility:hidden;font-size:14px;line-height:44px}.scan-app .scan-ft{visibility:hidden;display:block;height:42px;line-height:42px;font-size:16px;background-color:rgba(255,255,255,.16)}.hui-title{padding-bottom:8px}.hui-title h2{font-size:24px;color:#000}.hui-title .index-ico-hui{margin-left:9px;margin-top:7px}.hui-title a{font-size:14px;color:grey;margin-left:8px;position:relative;top:8px}.hui-title a.more,.hui-title a:hover{color:#60aeff}.hui-title a.more:hover{text-decoration:underline}.hui-li li .hui-show .hui-show-text del,.hui-title a:hover{text-decoration:none}.hui-li{background-color:#fff}.hui-li li{float:left;width:299px;border-left:1px solid #f2f2f2;position:relative;padding:10px 0 0}.hui-li li:first-child{width:300px;border-left:0}.hui-li li h3{font-size:18px;margin-top:0;padding:0 15px;margin-bottom:38px;font-weight:400}.hui-li li h3 a{color:#636363}.hui-li li .hui-price{background-color:#f9f9f9;padding-bottom:11px;margin-top:45px}.hui-li li .hui-price-num{font-size:14px;color:#848383;padding:5px 15px}.hui-li li .hui-show{position:relative;padding-left:16px;margin-left:15px}.hui-li li .hui-show .hui-show-ico{width:0;height:0;overflow:hidden;font-size:0;display:inline-block;border-width:24px 15px;border-color:transparent #fe4b79 transparent transparent;border-style:dashed solid dashed dashed;position:absolute;left:-14px;top:0}.hui-li li .hui-show .hui-show-text{height:48px;line-height:48px;color:#FFF;background-color:#fe4b79;font-size:17px;text-align:center}.hui-li li .hui-show .hui-show-text em{font-size:14px}.hui-li li .hui-show .hui-show-text .line{margin:0 3px;color:#ffb2c6}.hui-li li .am-img{overflow:hidden;width:299px;height:220px;position:relative}.hui-li li .am-img em{position:absolute;left:-260px;top:0;width:260px;transform:skewx(-15deg);background-image:linear-gradient(0deg,rgba(255,255,255,0),rgba(255,255,255,.4),rgba(255,255,255,0));height:220px}.hui-li li .am-img em,.index-sec .right-list li .am-img em{-o-transform:skewx(-25deg);-moz-transform:skewx(-25deg);-webkit-transform:skewx(-25deg)}.hui-li li:hover{cursor:pointer;transition-property:box-shadow;-webkit-transition-property:box-shadow;-moz-transition-property:box-shadow;-o-transition-property:all;-webkit-transition-duration:.5s;-moz-transition-duration:.5s;-o-transition-duration:.5s;-moz-box-shadow:0 0 15px #d1d1d1;-webkit-box-shadow:0 0 15px #d1d1d1}.hui-li li:hover,.index-sec .right-list li:hover{transition-duration:.5s;box-shadow:0 0 15px #d1d1d1}.hui-li li:hover em{left:260px;transition:.5s}.hui-li li:hover em,.index-sec .right-list li:hover em{-moz-transition:.5s;-o-transition:.5s;-webkit-transition:.5s}.index-ico-menu1,.index-ico-menu2,.index-ico-menu3,.index-ico-menu4,.index-ico-menu5,.index-ico-menu6,.index-ico-menu7,.index-ico-menu8{display:block;width:38px;height:38px;margin:0 auto 10px}.index-ico-menu1{background-position:0 -47px}.index-ico-menu2{background-position:-38px -47px}.index-ico-menu3{background-position:-76px -47px}.index-ico-menu4{background-position:-114px -47px}.index-ico-menu5{background-position:-114px -85px}.index-ico-menu6{background-position:0 -85px}.index-ico-menu7{background-position:-38px -85px}.index-ico-menu8{background-position:-76px -85px}.index-sec{margin-top:32px}.index-sec .sec-hd{margin-bottom:15px}.index-sec .sec-hd h2{color:#373737;font-size:20px;float:left}.index-sec .sec-hd a{font-size:14px;color:grey;margin-left:8px;position:relative;top:4px}.index-sec .sec-hd a.more,.index-sec .sec-hd a:hover{color:#60aeff}.index-sec .sec-hd a.more:hover{text-decoration:underline}.index-sec .right-list li .index-li-pic:hover,.index-sec .right-list li h3 a:hover,.index-sec .sec-hd a:hover{text-decoration:none}.index-sec .left-menu{float:left;width:110px}.index-sec .left-menu li{border-bottom:1px solid #2991ff}.index-sec .left-menu li:last-child{border-bottom:none}.index-sec .left-menu li a{display:block;height:69px;overflow:hidden;padding-top:48px;padding-bottom:38px;text-align:center;font-size:14px;background-color:#3e9bff;color:#fff}.index-sec .left-menu li a:hover{text-decoration:none;background-color:#52a6ff}.index-sec .left-menu li.on a{background-color:#52a6ff}.index-sec .mid-banner{width:391px;height:623px;float:left;overflow:hidden;position:relative}.index-sec .mid-banner .banner-list{width:100%}.index-sec .mid-banner .banner-list li{width:100%;position:absolute;top:0;left:0}.index-sec .mid-banner .banner-list li a{display:block;height:623px}.index-sec .mid-banner .banner-slider{position:absolute;width:100%;height:13px;bottom:22px;left:0;text-align:center;z-index:10}.index-sec .mid-banner .banner-slider li{display:inline-block;width:13px;height:13px;background-position:-76px -24px;margin:0 3px;cursor:pointer}.index-sec .mid-banner .banner-slider li.on{background-position:-62px -24px}.index-sec .right-list{background-color:#fff;float:left;width:699px;position:relative}.index-sec .right-list li{float:left;width:209px;height:281px;border-right:1px solid #f2f2f2;padding:15px 12px;margin-right:-1px;border-bottom:1px solid #f2f2f2}.index-sec .right-list li h3 a{color:#5f5f5f}.index-sec .right-list li p{color:#b4b4b4}.index-sec .right-list li .index-li-pic{font-size:16px;color:#fff;background-color:#60aeff;display:inline-block;padding:3px 8px;margin-top:4px}.index-sec .right-list li .am-img{overflow:hidden;width:209px;height:209px;position:relative}.index-sec .right-list li .am-img em{position:absolute;left:-260px;top:0;width:260px;height:220px;transform:skewx(-15deg);background-image:linear-gradient(0deg,rgba(255,255,255,0),rgba(255,255,255,.4),rgba(255,255,255,0))}.index-sec .right-list li:hover{cursor:pointer;transition-property:box-shadow;-webkit-transition-property:box-shadow;-moz-transition-property:box-shadow;-o-transition-property:all;-webkit-transition-duration:.5s;-moz-transition-duration:.5s;-o-transition-duration:.5s;-moz-box-shadow:0 0 15px #d1d1d1;-webkit-box-shadow:0 0 15px #d1d1d1}.index-sec .right-list li:hover em{left:260px;transition:.5s}.index-sec2 .left-menu li{border-bottom-color:#f45f85}.index-sec2 .left-menu li a{background-color:#ff7195}.index-sec2 .left-menu li a:hover,.index-sec2 .left-menu li.on a{background-color:#ff81a1}.index-sec2 .mid-banner .banner-slider li.on{background-position:-90px -24px}.i-value-ico,.map-pop-ico,.text-d{background:url(http://cres.fenqile.com/res/img/index/ico.png) no-repeat;display:inline-block}.goback,.map .text-d,.side-right a{overflow:hidden;display:block;text-indent:-9999em}.map{background-repeat:no-repeat;width:1200px;height:906px;margin:140px auto 0;position:relative}.map .map-pop,.map .num,.map .text-a,.map .text-d{position:absolute}.map .num{font-size:26px;top:63px;left:400px;color:#5faeff;width:74px;text-align:center}.map .text-a{font-size:14px;color:#7c7c7c}.map .text-wwmq{top:250px;left:300px}.map .text-yc{top:438px;left:600px}.map .text-heb{top:178px;left:945px}.map .text-cc{top:259px;left:925px}.map .text-sy{top:333px;left:905px}.map .text-ts{top:333px;left:845px}.map .text-bj{top:333px;left:797px}.map .text-qd{top:441px;left:874px}.map .text-ty{top:427px;left:725px}.map .text-hhht{top:378px;left:662px}.map .text-zz{top:517px;left:748px}.map .text-xa{top:521px;left:660px}.map .text-lz{top:490px;left:583px}.map .text-cd{top:603px;left:542px}.map .text-cq{top:615px;left:635px}.map .text-gy{top:685px;left:639px}.map .text-nn{top:744px;left:667px}.map .text-cs{top:642px;left:740px}.map .text-wh{top:586px;left:782px}.map .text-nc{top:628px;left:820px}.map .text-hf{top:553px;left:827px}.map .text-nj{top:540px;left:862px}.map .text-sh{top:554px;left:912px}.map .text-hz{top:617px;left:892px}.map .text-xm{top:700px;left:858px}.map .text-sz{top:760px;left:788px}.map .text-hk{top:847px;left:694px}.map .text-gz{top:738px;left:743px}.map .text-jn{top:446px;left:818px}.map .text-bd{top:395px;left:761px}.map .text-suzhou{top:515px;left:887px}.map .text-km{top:745px;left:517px}.map .text-fz{top:665px;left:890px}.map .text-wlmq{top:340px;left:310px}.map .text-xn{top:445px;left:429px}.map .text-dn{top:353px;left:885px}.map .text-sjz{top:380px;left:780px}.map .text-tj{top:365px;left:820px}.map .text-d{width:25px;height:34px;background-position:-140px -45px}.map .text-d-on{background-position:-170px -45px}.map .d-wwmq{top:215px;left:317px}.map .d-yc{top:405px;left:603px}.map .d-heb{top:143px;left:951px}.map .d-cc{top:224px;left:928px}.map .d-sy{top:298px;left:908px}.map .d-ts{top:298px;left:848px}.map .d-bj{top:298px;left:800px}.map .d-qd{top:406px;left:877px}.map .d-ty{top:392px;left:728px}.map .d-hhht{top:343px;left:677px}.map .d-zz{top:482px;left:751px}.map .d-xa{top:486px;left:663px}.map .d-lz{top:455px;left:586px}.map .d-cd{top:568px;left:545px}.map .d-cq{top:580px;left:638px}.map .d-gy{top:650px;left:642px}.map .d-nn{top:709px;left:670px}.map .d-cs{top:605px;left:743px}.map .d-wh{top:551px;left:785px}.map .d-nc{top:593px;left:823px}.map .d-hf{top:518px;left:830px}.map .d-nj{top:505px;left:865px}.map .d-sh{top:519px;left:915px}.map .d-hz{top:582px;left:895px}.map .d-xm{top:665px;left:861px}.map .d-sz{top:725px;left:791px}.map .d-hk{top:812px;left:697px}.map .d-gz{top:703px;left:746px}.map .d-jn{top:411px;left:821px}.map .d-bd{top:360px;left:764px}.map .d-suzhou{top:485px;left:890px}.map .d-km{top:715px;left:520px}.map .d-fz{top:635px;left:890px}.map .d-wlmq{top:305px;left:325px}.map .d-xn{top:408px;left:429px}.map .d-tj{top:335px;left:822px}.map .d-sjz{top:353px;left:789px}.map .d-dn{top:328px;left:888px}.map .map-pop{width:368px;height:64px;padding:6px;background-color:#515151;border-radius:5px}.map .map-pop .map-pop-ico{width:15px;height:10px;overflow:hidden;background-position:-200px -50px;position:absolute;bottom:-10px;right:110px}.map .map-pop .map-pop-text{position:relative;padding-left:80px}.map .map-pop .map-pop-text img{position:absolute;left:0;right:0}.map .map-pop .map-pop-text h3{color:#fff;font-size:14px}.map .map-pop .map-pop-text p{color:#b4b4b4;height:40px;overflow:hidden;width:100%;line-height:20px}.map-bottom{font-size:16px;padding-bottom:50px}.map-bottom a{color:#4a9df4;text-decoration:underline}.index-value{background-color:#ddd;padding:20px 0;min-width:1200px}.index-value .index-value-li{width:201px;float:left;position:relative;padding-left:55px}.index-value .index-value-li dt{font-size:18px;color:#6b6b6b}.index-value .index-value-li dd{font-size:12px;color:#908e8e}.index-value .index-value-li2{width:201px}.index-value .index-value-li3{width:209px}.index-value .index-value-li4{width:201px}.index-value .index-value-li5{width:105px;float:right}.index-value .i-value-ico{width:41px;height:41px;position:absolute;left:0;top:0}.index-value .i-value-1{background-position:0 0}.index-value .i-value-2{background-position:-43px 0}.index-value .i-value-3{background-position:-86px 0}.index-value .i-value-4{background-position:-129px 0}.index-value .i-value-5{background-position:-172px 0}.goback,.side-right,.side-right a:hover{background:url(http://cres.fenqile.com/res/img/global/tickv2.png?v=20141210) no-repeat}.side-right{width:85px;height:163px;background-position:-88px -107px}.side-right a{width:83px;height:77px;margin-left:1px}.side-right a.a1:hover{background-position:-1px -106px}.side-right a.a2{margin-top:0}.side-right a.a2:hover{background-position:-1px -184px}.goback{width:85px;height:43px;background-position:0 -17px;position:relative;top:-8px}.lm-layer,.tickling-layer{position:fixed;bottom:140px;z-index:100}.goback:hover{background-position:0 -61px}.tick-wrap .ask-wrap{border:1px solid #d7d7d7;border-bottom:none;margin-top:12px;background-color:#FFF;background:-webkit-gradient(linear,0 0,0 100%,from(#f9f9f9),to(#f2f2f2));background:-moz-linear-gradient(top,#f9f9f9,#f2f2f2);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#FFF9F9F9, endColorstr=#FFF2F2F2, grandientType=1)}.advice span,.feedback span,.r-top span{background:url(http://cres.fenqile.com/res/img/global/tick.png?v=20140918) no-repeat;display:inline-block;font-size:0;height:0;overflow:hidden;vertical-align:-5px;*vertical-align:0}.advice,.feedback{display:block;width:36px;height:36px;text-decoration:none;text-align:center;border-bottom:1px #d7d7d7 solid;line-height:36px}.r-top span{width:36px;padding-top:36px;background-position:0 -37px}.r-top:hover span{background-position:0 0}.feedback span{width:18px;padding-top:15px;background-position:0 -74px}.advice span{width:16px;padding-top:19px;background-position:-18px -74px}.tickling-layer{right:50%;margin-right:-700px;_position:absolute}.lm-layer{left:50%;margin-left:-660px;_position:absolute}@media screen and (max-width:1600px){.tickling-layer{right:40px;margin-right:0}.lm-layer{left:40px;margin-left:0}}@media screen and (max-width:1152px){.tickling-layer{right:20px;margin-right:0}.lm-layer{left:20px;margin-left:0}}@media screen and (max-width:1024px){.tickling-layer{right:0;margin-right:0}.lm-layer{left:0;margin-left:0}}.icon-freeb{position:relative;top:7px;left:3px}
/*d97a1edd5727a3cd6a33beac85f6ba49*/
</style>
<script type="text/javascript">
        // 样式加载完成
        var g_page_id = G_PAGE_CONFIG['main']['index'];
        gLogger.setMark(g_page_id);
        gLogger.setPoint(g_page_id, 10);
    </script>

</head>
<body>
	
    <!-- begin topbar -->
    <div class="clearfix header-help-tel">
        <div class="layout1200">
            <div class="fl fs12">
           ${custnick }  欢迎来到大学生信用生活服务平台</div>
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
                    <a class="fl header-logo" href="#" title="大学生信用生活服务平台,大学生理想分期消费平台"></a>
                    <div class="fr header-search">
                        <form class="clearfix header-search-box" action="/search.html" method="get" target="_blank">
                            <input type="text" class="fl header-search-input" id="text" name="text" placeholder="同学们都在热搜 iphone6s" value="" />
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
                    <a class="fl current" href="${pageContext.request.contextPath }/products/weidaiba.action">首页</a>

                    <a class="fl  " href="${pageContext.request.contextPath }/products/productsList.action">微分期</a>
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
    <!-- end menu --><div class="indexMenu">
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

            <a class="smallBanner" href="#">
                <img src="../images/20150916154122.png" />
            </a>
      </div>
        <div class="index-scrollable" id="ScrollMain">
            <div class="in" id="ScrollMainIn">
                      <a href="#" target="_blank" style="display:block;;">
                         <img class="change" alt="花样美男养成记" src="../images/20151012135722.jpg">
                         <b class="font" style="background:url()"></b>
                      </a>
                      <a href="#" target="_blank" style="display:none;;">
                         <img class="change" alt="笔记本" src="../images/20150930110417.jpg">
                         <b class="font" style="background:url()"></b>
                      </a>
                      <a href="#" target="_blank" style="display:none;;">
                         <img class="change" alt="6S开售敬请期待" src="../images/20150924154838.jpg">
                         <b class="font" style="background:url()"></b>
                      </a>
                      <a href="#" target="_blank" style="display:none;;">
                         <img class="change" alt="OTO" src="../images/20150922221505.jpg">
                         <b class="font" style="background:url()"></b>
                      </a>
                      <a href="#" target="_blank" style="display:none;;">
                         <img class="change" alt="亚马逊kindle" src="../images/20150929142057.jpg">
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
<div class="layout1200 mt25 mb25">
<div class="advantage-box clearfix">
	<div class="unit fl">
		<span class="advantage-icon advantage-first-icon fl"></span>
		<div class="fl ml10">
			<div class="fs18 mt10 gray-color mt35 ml15">0担保</div>
			<div class="fs14 intro-color ml15">无需信用卡凭学生证即可消费</div>
		</div>
	</div>
	<div class="unit fl">
		<span class="advantage-icon advantage-second-icon fl"></span>
		<div class="fl ml10">
			<div class="fs18 mt10 gray-color mt35 ml15">0首付</div>
			<div class="fs14 intro-color ml15">全部订单支持0元首付</div>
		</div>
	</div>
	<div class="unit fl">
		<span class="advantage-icon advantage-third-icon fl"></span>
		<div class="fl ml10">
			<div class="fs18 mt10 gray-color mt35 ml15">全场正品</div>
			<div class="fs14 intro-color ml15">全场正品行货 全国联保</div>
		</div>
	</div>
	<div class="unit fl">
		<span class="advantage-icon advantage-fourth-icon fl"></span>
		<div class="fl ml10">
			<div class="fs18 mt10 gray-color mt35 ml15">轻松还</div>
			<div class="fs14 intro-color ml15">随意选择分期月数月支付额小</div>
		</div>
	</div>
</div></div>
<div class="index-zero-box"></div>
    <!--楼层 品牌+商品+热销-->
    <!--楼层商品结束-->
    <!--楼层 品牌+商品+热销-->
    <!--楼层商品结束-->
    <!--楼层 品牌+商品+热销-->
    <!--楼层商品结束-->
    <!--楼层 品牌+商品+热销-->
    <!--楼层商品结束-->
    <!--楼层 品牌+商品+热销-->
    <!--楼层商品结束-->
    <!--楼层 品牌+商品+热销-->
    <!--楼层商品结束-->
    <!--楼层 品牌+商品+热销-->
    <!--楼层商品结束-->
<div class="index">
      <section></section>
    
        <script type="text/javascript">
            // 首屏加完成
            gLogger.setPoint(g_page_id, 20);
        </script>
        <section>
           <div class="container">
                    <div class="hui-title fn-clear">
                        <h2 class="fn-left">限时惠</h2>
                        <span class="fn-left index-ico-hui">7X24小时不打烊</span>
                        <div class="fn-right">
                                                            <a target="_blank" href="http://sale.fenqile.com/2015090201/index.html?_DTAG=F2A7331-E06963F" title="iPhone">iPhone</a>
                                                            <a target="_blank" href="http://www.fenqile.com/product/computer/list.html#!/70/11" title="iPad">iPad</a>
                                                            <a target="_blank" href="http://www.fenqile.com/product/search.html?q=%E5%B0%8F%E7%B1%B3" title="小米">小米</a>
                                                            <a target="_blank" href="http://www.fenqile.com/product/search.html?q=%E9%AD%85%E6%97%8F" title="魅族">魅族</a>
                                                            <a target="_blank" href="http://www.fenqile.com/product/search.html?q=%E5%8D%8E%E4%B8%BA" title="华为">华为</a>
                                                            <a target="_blank" href="http://www.fenqile.com/product/detail/S20150908029023.html" title="Note5">Note5</a>
                                                        <a href="/product/limited_sale.html" class="more" title="查看全部限时惠">查看全部<span>&gt;</span></a>
                        </div>
                    </div>
                    <div class="hui-bd">
                        <ul class="hui-li fn-clear">
                                                            <li data-id="S201503034851" class="js-limit-item"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                    <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">苹果 iPhone 6 16G 全网通4G手机</a></h3>
                                    <div class="fn-text-center am-img">
                                        <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2""><img width="220" height="220" src="../images/20150907_9094588093773afd75de55.jpg" data-original="../images/20150907_9094588093773afd75de55.jpg" alt="苹果 iPhone 6 16G 全网通4G手机" title="苹果 iPhone 6 16G 全网通4G手机" style="display: inline;"></a>
                                        <em></em>
                                    </div>
                                    <div class="hui-price">
                                        <div class="fn-clear hui-price-num">
                                            <span class="fn-left">疯抢价：<span class="fn-rmb">￥ 3999</span></span>
                                            <del class="fn-right">电商价格：<span class="fn-rmb">￥ 5231</span></del>
                                        </div>
                                        <div class="hui-show">
                                            <i class="hui-show-ico"></i>
                                            <div class="hui-show-text">
                                                <del>直降：<span class="fn-rmb">￥ 889</span></del><span class="line">|</span>月供：<span class="fn-rmb">￥ 206</span><em>× 24</em>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                                            <li data-id="S201503034850" class="js-limit-item"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                    <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">iPhone 6 Plus  16G 苹果全网通4G手机</a></h3>
                                    <div class="fn-text-center am-img">
                                        <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2""><img width="220" height="220" src="../images/20150907_810437811602d79085de55.jpg" data-original="../images/20150907_810437811602d79085de55.jpg" alt="iPhone 6 Plus  16G 苹果全网通4G手机" title="iPhone 6 Plus  16G 苹果全网通4G手机" style="display: inline;"></a>
                                        <em></em>
                                    </div>
                                    <div class="hui-price">
                                        <div class="fn-clear hui-price-num">
                                            <span class="fn-left">疯抢价：<span class="fn-rmb">￥ 4888</span></span>
                                            <del class="fn-right">电商价格：<span class="fn-rmb">￥ 6087</span></del>
                                        </div>
                                        <div class="hui-show">
                                            <i class="hui-show-ico"></i>
                                            <div class="hui-show-text">
                                                <del>直降：<span class="fn-rmb">￥ 800</span></del><span class="line">|</span>月供：<span class="fn-rmb">￥ 251</span><em>× 24</em>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                                            <li data-id="S20150831028310" class="js-limit-item"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                    <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=7">三星  Galaxy S6 edge+ 智能4G手机</a></h3>
                                    <div class="fn-text-center am-img">
                                        <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=7"><img width="220" height="220" src="../images/20150831_9817714281375b19654e55.jpg" data-original="../images/20150831_9817714281375b19654e55.jpg" alt="三星  Galaxy S6 edge+ 智能4G手机" title="三星  Galaxy S6 edge+ 智能4G手机" style="display: inline;"></a>
                                        <em></em>
                                    </div>
                                    <div class="hui-price">
                                        <div class="fn-clear hui-price-num">
                                            <span class="fn-left">疯抢价：<span class="fn-rmb">￥ 5688</span></span>
                                            <del class="fn-right">电商价格：<span class="fn-rmb">￥ 6301</span></del>
                                        </div>
                                        <div class="hui-show">
                                            <i class="hui-show-ico"></i>
                                            <div class="hui-show-text">
                                                <del>直降：<span class="fn-rmb">￥ 200</span></del><span class="line">|</span>月供：<span class="fn-rmb">￥ 237</span><em>× 24</em>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                                            <li data-id="S201409043191" class="js-limit-item"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                    <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">苹果 iPhone 5s 4G手机</a></h3>
                                    <div class="fn-text-center am-img">
                                        <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="220" height="220" src="../images/20150925_82445298377129d6cb4065.jpg" data-original="../images/20150925_82445298377129d6cb4065.jpg" alt="苹果 iPhone 5s 4G手机" title="苹果 iPhone 5s 4G手机" style="display: inline;"></a>
                                        <em></em>
                                    </div>
                                    <div class="hui-price">
                                        <div class="fn-clear hui-price-num">
                                            <span class="fn-left">疯抢价：<span class="fn-rmb">￥ 3088</span></span>
                                            <del class="fn-right">电商价格：<span class="fn-rmb">￥ 3840</span></del>
                                        </div>
                                        <div class="hui-show">
                                            <i class="hui-show-ico"></i>
                                            <div class="hui-show-text">
                                                <del>直降：<span class="fn-rmb">￥ 500</span></del><span class="line">|</span>月供：<span class="fn-rmb">￥ 258</span><em>× 12</em>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                                            <li data-id="S20150901028390" class="js-limit-item"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                    <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">卡西欧（CASIO）EX-TR550 数码相机</a></h3>
                                    <div class="fn-text-center am-img">
                                        <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="220" height="220" src="../images/20150901_315765159d18e784e05e55.jpg" data-original="../images/20150901_315765159d18e784e05e55.jpg" alt="卡西欧（CASIO）EX-TR550 数码相机" title="卡西欧（CASIO）EX-TR550 数码相机" style="display: inline;"></a>
                                        <em></em>
                                    </div>
                                    <div class="hui-price">
                                        <div class="fn-clear hui-price-num">
                                            <span class="fn-left">疯抢价：<span class="fn-rmb">￥ 5699</span></span>
                                            <del class="fn-right">电商价格：<span class="fn-rmb">￥ 6633</span></del>
                                        </div>
                                        <div class="hui-show">
                                            <i class="hui-show-ico"></i>
                                            <div class="hui-show-text">
                                                <del>直降：<span class="fn-rmb">￥ 500</span></del><span class="line">|</span>月供：<span class="fn-rmb">￥ 288</span><em>× 24</em>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                                            <li data-id="S20150702014333" class="js-limit-item"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                    <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">喜德盛山地车 逐日800 禧玛诺27速铝合金线控锁死油压碟刹 自行</a></h3>
                                    <div class="fn-text-center am-img">
                                        <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="220" height="220" src="../images/20150702_340087743f4d09484f4955.jpg" data-original="../images/20150702_340087743f4d09484f4955.jpg" alt="喜德盛山地车 逐日800 禧玛诺27速铝合金线控锁死油压碟刹 自行" title="喜德盛山地车 逐日800 禧玛诺27速铝合金线控锁死油压碟刹 自行" style="display: inline;"></a>
                                        <em></em>
                                    </div>
                                    <div class="hui-price">
                                        <div class="fn-clear hui-price-num">
                                            <span class="fn-left">疯抢价：<span class="fn-rmb">￥ 1899</span></span>
                                            <del class="fn-right">电商价格：<span class="fn-rmb">￥ 2781</span></del>
                                        </div>
                                        <div class="hui-show">
                                            <i class="hui-show-ico"></i>
                                            <div class="hui-show-text">
                                                <del>直降：<span class="fn-rmb">￥ 700</span></del><span class="line">|</span>月供：<span class="fn-rmb">￥ 144</span><em>× 15</em>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                                            <li data-id="S20150630013884" class="js-limit-item"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                    <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">美度(MIDO)手表 都瑞系列 时尚石英表</a></h3>
                                    <div class="fn-text-center am-img">
                                        <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="220" height="220" src="../images/20150630_5095050133e6675e142955.jpg" data-original="../images/20150630_5095050133e6675e142955.jpg" alt="美度(MIDO)手表 都瑞系列 时尚石英表" title="美度(MIDO)手表 都瑞系列 时尚石英表" style="display: inline;"></a>
                                        <em></em>
                                    </div>
                                    <div class="hui-price">
                                        <div class="fn-clear hui-price-num">
                                            <span class="fn-left">疯抢价：<span class="fn-rmb">￥ 1999</span></span>
                                            <del class="fn-right">电商价格：<span class="fn-rmb">￥ 2353</span></del>
                                        </div>
                                        <div class="hui-show">
                                            <i class="hui-show-ico"></i>
                                            <div class="hui-show-text">
                                                <del>直降：<span class="fn-rmb">￥ 200</span></del><span class="line">|</span>月供：<span class="fn-rmb">￥ 129</span><em>× 18</em>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                                            <li data-id="S20150611010766" class="js-limit-item"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                    <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">DIOR克丽丝汀迪奥迪奥小姐花漾淡香氛(EDT)</a></h3>
                                    <div class="fn-text-center am-img">
                                        <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="220" height="220" src="../images/20150617_79920131784dd320c31855.jpg" data-original="http:../images/20150617_79920131784dd320c31855.jpg" alt="DIOR克丽丝汀迪奥迪奥小姐花漾淡香氛(EDT)" title="DIOR克丽丝汀迪奥迪奥小姐花漾淡香氛(EDT)" style="display: inline;"></a>
                                        <em></em>
                                    </div>
                                    <div class="hui-price">
                                        <div class="fn-clear hui-price-num">
                                            <span class="fn-left">疯抢价：<span class="fn-rmb">￥ 479</span></span>
                                            <del class="fn-right">电商价格：<span class="fn-rmb">￥ 620</span></del>
                                        </div>
                                        <div class="hui-show">
                                            <i class="hui-show-ico"></i>
                                            <div class="hui-show-text">
                                                <del>直降：<span class="fn-rmb">￥ 100</span></del><span class="line">|</span>月供：<span class="fn-rmb">￥ 84</span><em>× 6</em>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                      </ul>
                    </div>
  </div>
        </section>
        <section>
            <div class="index-sec">
                <div class="container js-category-group">
                    <div class="sec-hd fn-clear">

                        
                        <h2>精选数码</h2>

                                                                            <div class="fn-right js-category-keyword-container js-category-keyword-container-0" data-index="0">
                                                                                                                <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="iPhone6">iPhone6</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=4">荣耀6 plus</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=3" title="小米">小米</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="Z9 mini">Z9 mini</a>
                                                                                                            <a href="${pageContext.request.contextPath }/products/productsList.action" class="more" title="查看全部手机通讯">
                                        查看全部
                                        <span>&gt;</span>
                                    </a>
                                                            </div>
                                                    <div class="fn-right hide js-category-keyword-container js-category-keyword-container-1" data-index="1">
                                                                                                                <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="战神 ">战神 </a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="联想">联想</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="雷神">雷神</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="机械革命">机械革命</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="华硕">华硕</a>
                                                                                                            <a href="${pageContext.request.contextPath }/products/productsList.action" class="more" title="查看全部电脑平板">
                                        查看全部
                                        <span>&gt;</span>
                                    </a>
                      </div>
                                                    <div class="fn-right hide js-category-keyword-container js-category-keyword-container-2" data-index="2">
                                                                                                                <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="佳能700D ">佳能700D </a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="自拍神器 ">自拍神器 </a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="尼康D5200 ">尼康D5200 </a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="卡西欧ZR1500 ">卡西欧ZR1500 </a>
                                                                                                            <a href="${pageContext.request.contextPath }/products/productsList.action" class="more" title="查看全部相机单反">
                                        查看全部
                                        <span>&gt;</span>
                                    </a>
                      </div>
                                                    <div class="fn-right hide js-category-keyword-container js-category-keyword-container-3" data-index="3">
                                                                                                                <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="Beats">Beats</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="雷蛇键鼠 ">雷蛇键鼠 </a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="移动电源 ">移动电源 </a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="kindle">kindle</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="智能手环 ">智能手环 </a>
                                                                                                            <a href="${pageContext.request.contextPath }/products/productsList.action" class="more" title="查看全部智能数码">
                                        查看全部
                                        <span>&gt;</span>
                                    </a>
                      </div>
                  </div>

                    <div class="sec-bd fn-clear">

                        <div class="left-menu">
                            <ul>
                                                                                                    <li class="on js-category-trigger js-category-trigger-0" data-index="0">
                                        <a href="${pageContext.request.contextPath }/products/productsList.action">
                                            <i class="index-ico-menu1"></i>手机通讯                                        </a>
                                    </li>
                                                                    <li class="js-category-trigger js-category-trigger-1" data-index="1">
                                        <a href="${pageContext.request.contextPath }/products/productsList.action">
                                            <i class="index-ico-menu2"></i>电脑平板                                        </a>
                                    </li>
                                                                    <li class="js-category-trigger js-category-trigger-2" data-index="2">
                                        <a href="${pageContext.request.contextPath }/products/productsList.action">
                                            <i class="index-ico-menu3"></i>相机单反                                        </a>
                                    </li>
                                                                    <li class="js-category-trigger js-category-trigger-3" data-index="3">
                                        <a href="${pageContext.request.contextPath }/products/productsList.action">
                                            <i class="index-ico-menu4"></i>智能数码                                        </a>
                                    </li>
                          </ul>
                        </div>

                                                                            <div class="mid-banner js-category-pic-container js-category-pic-container-0" data-index="0">
                                                                <ul class="banner-list js-category-pic-slide-wrap js-category-pic-slide-wrap-0" data-index="0" style="width:1564px;"> <!-- width= 391*n -->
                                                                            <li style="display: block">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="iPhone 6s 立即抢购">
                                                <img width="391" height="623" src="../images/20150923_550191908ff1b0e2412065.jpg" data-src="../images/20150923_550191908ff1b0e2412065.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsList.action" title="手机分会场">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150923_337078900b12fd5c212065.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsList.action" title="魅族分会场">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150923_550191908ff1b0e2412065.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="魅族MX5">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150709_9238759609870f9054e955.jpg"/>
                                            </a>
                                        </li>
                                                                    </ul>
                                                            </div>
                                                    <div class="hide mid-banner js-category-pic-container js-category-pic-container-1" data-index="1">
                                                                <ul class="banner-list js-category-pic-slide-wrap js-category-pic-slide-wrap-1" data-index="1" style="width:1173px;"> <!-- width= 391*n -->
                                                                            <li style="display: block">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="机械革命">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20151015_7709141246ef389208f165.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="联想">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150702_124654953cefca805a4955.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="雷神笔记本">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150906_606163329855d3871bbe55.jpg"/>
                                            </a>
                                        </li>
                                                      </ul>
                      </div>
                                                    <div class="hide mid-banner js-category-pic-container js-category-pic-container-2" data-index="2">
                                                                <ul class="banner-list js-category-pic-slide-wrap js-category-pic-slide-wrap-2" data-index="2" style="width:1173px;"> <!-- width= 391*n -->
                                                                            <li style="display: block">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="卡西欧留住你的美">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150902_27691817759b80e7b96e55.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="佳能广告">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150630_579208093aae8802862955.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="拍立得广告">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150630_489448542aaee5d5862955.jpg"/>
                                            </a>
                                        </li>
                                                      </ul>
                      </div>
                                                    <div class="hide mid-banner js-category-pic-container js-category-pic-container-3" data-index="3">
                                                                <ul class="banner-list js-category-pic-slide-wrap js-category-pic-slide-wrap-3" data-index="3" style="width:782px;"> <!-- width= 391*n -->
                                                                            <li style="display: block">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="Beats">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150910_850427761de0b2293f0f55.09.06.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="魔声耳机">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150820_46766548168f0338545d55.jpg"/>
                                            </a>
                                        </li>
                                                      </ul>
                      </div>
                        
                                                                            <div class="right-list js-category-sku-container js-category-sku-container-0" data-index="0">
                                                                <ul class="index-li">
                                                                            <li class="js-product-item" data-id="S20150831028310"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="../images/20150831_0795421071943551654e55.jpg" data-original="../images/20150831_0795421071943551654e55.jpg" alt="三星  Galaxy S6 edge+ 智能4G手机" title="三星  Galaxy S6 edge+ 智能4G手机"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=7">三星  Galaxy S6 edge+ 智能4G手机</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥5688</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥316</span>起
                                            </a>
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150521007654"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img"><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="../images/20150521_146253753f18f25f65d555.jpg" data-original="../images/20150521_146253753f18f25f65d555.jpg" alt=" OPPO R7   4G手机" title=" OPPO R7   4G手机"></a></div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"> OPPO R7   4G手机</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥2299</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥212</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150831028339"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="../images/20150902_263189211a7f873e0b6e55.jpg" data-original="../images/20150902_263189211a7f873e0b6e55.jpg" alt="魅族 MX5  4G手机 双卡双待" title="魅族 MX5  4G手机 双卡双待"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">魅族 MX5  4G手机 双卡双待</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥1799</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥165</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150609010371"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="../images/20150528_61662235494f445d5d6655.jpg" data-original="../images/20150528_61662235494f445d5d6655.jpg" alt="小米 4  4G手机" title="小米 4  4G手机"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">小米 4  4G手机</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥1299</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥99</span>起
                                            </a>
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150414006068"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="../images/20150414_9583431973a7724238c255.jpg" data-original="../images/20150414_9583431973a7724238c255.jpg" alt="三星 Galaxy S6 edge 移动联通电信4G手机" title="三星 Galaxy S6 edge 移动联通电信4G手机"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">三星 Galaxy S6 edge 移动联通电信4G手机</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥4888</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥449</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201503215256"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="../images/20150319_3254170459f6589f89a055.jpg" data-original="../images/20150319_3254170459f6589f89a055.jpg" alt="小米note 移动联通双4G手机 " title="小米note 移动联通双4G手机 "></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">小米note 移动联通双4G手机 </a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥1699</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥86</span>起
                                            </a>
                                                                  </li>
                                                                    </ul>
                                                            </div>
                                                    <div class="hide right-list js-category-sku-container js-category-sku-container-1" data-index="1">
                                                                <ul class="index-li">
                                                                            <li class="js-product-item" data-id="S201311130544"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg1.fenqile.com/uploaded/product/image/20140515_3997786884686281694735.png" alt="苹果iPad mini 2 平板电脑" title="苹果iPad mini 2 平板电脑"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">苹果iPad mini 2 平板电脑</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥2198</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥203</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150723018245"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg.fenqile.com/uploaded/product/image/20150723_2549362186d78a321c0b55.jpg" alt="华硕（ASUS）飞行堡垒FX50JX 15.6英寸游戏笔记本电脑" title="华硕（ASUS）飞行堡垒FX50JX 15.6英寸游戏笔记本电脑"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">华硕（ASUS）飞行堡垒FX50JX 15.6英寸游戏笔记本电脑</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥5499</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥279</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201509250030648"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20150925_084421182d37a2a1b25065.jpg" alt="戴尔DELL灵越7447游匣Ins14P-3548游戏笔记本" title="戴尔DELL灵越7447游匣Ins14P-3548游戏笔记本"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">戴尔DELL灵越7447游匣Ins14P-3548游戏笔记本</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥5499</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥279</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201501304680"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20150130_95073842181bd58442bc45.jpg" alt="戴尔（DELL）Ins15C-4528B 灵越15.6英寸笔记本电脑" title="戴尔（DELL）Ins15C-4528B 灵越15.6英寸笔记本电脑"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">戴尔（DELL）Ins15C-4528B 灵越15.6英寸笔记本电脑</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥3499</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥225</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201503104992"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20150310_40762129490ecd6826ef45.jpg" alt="苹果（Apple） MacBook Air 11.6英寸宽屏笔记本电脑" title="苹果（Apple） MacBook Air 11.6英寸宽屏笔记本电脑"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">苹果（Apple） MacBook Air 11.6英寸宽屏笔记本电脑</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥5988</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥303</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201503034832"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20150303_943362806750b1d3425f45.jpg" alt="神舟（HASEE） 战神K660D-i7D1 15.6英寸游戏本" title="神舟（HASEE） 战神K660D-i7D1 15.6英寸游戏本"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">神舟（HASEE） 战神K660D-i7D1 15.6英寸游戏本</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥4899</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥248</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                      </ul>
                      </div>
                                                    <div class="hide right-list js-category-sku-container js-category-sku-container-2" data-index="2">
                                                                <ul class="index-li">
                                                                            <li class="js-product-item" data-id="S201503215285"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg1.fenqile.com/uploaded/product/image/20150321_9771172366bb23c626d055.jpg" alt="卡西欧（CASIO）EX-TR500 数码相机" title="卡西欧（CASIO）EX-TR500 数码相机"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">卡西欧（CASIO）EX-TR500 数码相机</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥4999</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥253</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201402270989"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20140227_342635764fde6daa4ee035.png" alt="佳能 EOS 700D " title="佳能 EOS 700D "></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">佳能 EOS 700D </a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥3799</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥287</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201402270990"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg.fenqile.com/uploaded/product/image/20140227_594546037b346aea4ee035.3.png" alt="佳能 EOS 700D " title="佳能 EOS 700D "></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">佳能 EOS 700D </a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥5099</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥385</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201501054452"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg1.fenqile.com/uploaded/product/image/20150105_64688193213822ff28aa45.jpg" alt="尼康（Nikon） D5200 单反套机" title="尼康（Nikon） D5200 单反套机"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">尼康（Nikon） D5200 单反套机</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥3899</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥294</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201410093584"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg.fenqile.com/uploaded/product/image/20141009_4610933552299c20706345.jpg" alt="索尼（SONY）ILCE-5100L 标准单镜套装" title="索尼（SONY）ILCE-5100L 标准单镜套装"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">索尼（SONY）ILCE-5100L 标准单镜套装</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥3299</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥212</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150819026223"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg1.fenqile.com/uploaded/product/image/20150819_7412337039d5715a534d55.jpg" alt="拍立得--富士（FUJIFILM） Instax mini90 拍立得相机 NEO CLASSIC" title="拍立得--富士（FUJIFILM） Instax mini90 拍立得相机 NEO CLASSIC"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">拍立得--富士（FUJIFILM） Instax mini90 拍立得相机 NEO CLASSIC</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥1143</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥138</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                      </ul>
                      </div>
                                                    <div class="hide right-list js-category-sku-container js-category-sku-container-3" data-index="3">
                                                                <ul class="index-li">
                                                                            <li class="js-product-item" data-id="S20150629013683"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg1.fenqile.com/uploaded/product/image/20150629_610356190f3c62ce831955.jpg" alt="Kindle 6英寸护眼非反光电子墨水触控显示屏 内置wifi 4G 电子书阅读器 " title="Kindle 6英寸护眼非反光电子墨水触控显示屏 内置wifi 4G 电子书阅读器 "></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">Kindle 6英寸护眼非反光电子墨水触控显示屏 内置wifi 4G 电子书阅读器 </a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥899</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥158</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150825027003"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20150825_315844316f3fe3fa9dbd55.jpg" alt="赛睿（SteelSeries）游戏鼠标" title="赛睿（SteelSeries）游戏鼠标"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">赛睿（SteelSeries）游戏鼠标</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥279</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥50</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150721017765"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20150721_4436684415e6b32103ea55.jpg" alt="Beats UrBeats 入耳式耳机 手机耳机带麦 三键线控" title="Beats UrBeats 入耳式耳机 手机耳机带麦 三键线控"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">Beats UrBeats 入耳式耳机 手机耳机带麦 三键线控</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥848</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥150</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201503205180"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20150320_827697805903524239b055.jpg" alt="【PS4国行线上首发版】索尼（SONY） 电脑娱乐机" title="【PS4国行线上首发版】索尼（SONY） 电脑娱乐机"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">【PS4国行线上首发版】索尼（SONY） 电脑娱乐机</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥2399</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥181</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201408082674"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg1.fenqile.com/uploaded/product/image/20140808_2126326959b6e2e3944e35.jpg" alt="西部数据 My Passport Ultra USB3.0  超便携移动硬盘 " title="西部数据 My Passport Ultra USB3.0  超便携移动硬盘 "></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">西部数据 My Passport Ultra USB3.0  超便携移动硬盘 </a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥455</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥80</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150730020222"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg.fenqile.com/uploaded/product/image/20150730_208954786530e9743c9b55.jpg" alt="达尔优（dare-u）机械键盘" title="达尔优（dare-u）机械键盘"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">达尔优（dare-u）机械键盘</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥329</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥58</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                      </ul>
                      </div>
                        
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="index-sec index-sec2">
                <div class="container js-category-group">
                    <div class="sec-hd fn-clear">

                        
                        <h2>精选百货</h2>

                                                                            <div class="fn-right js-category-keyword-container js-category-keyword-container-4" data-index="4">
                                                                                                                <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="天梭">天梭</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="卡西欧">卡西欧</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="飞亚达">飞亚达</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="美度">美度</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="DW">DW</a>
                                                                                                            <a href="${pageContext.request.contextPath }/products/productsList.action" class="more" title="查看全部名品腕表">
                                        查看全部
                                        <span>&gt;</span>
                                    </a>
                                                            </div>
                                                    <div class="fn-right hide js-category-keyword-container js-category-keyword-container-5" data-index="5">
                                                                                                                <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="耐克">耐克</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="阿迪达斯">阿迪达斯</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="新百伦">新百伦</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="山地车">山地车</a>
                                                                                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="more" title="查看全部运动户外">
                                        查看全部
                                        <span>&gt;</span>
                                    </a>
                      </div>
                                                    <div class="fn-right hide js-category-keyword-container js-category-keyword-container-6" data-index="6">
                                                                                                                <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="匡威">匡威</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="范斯vans">范斯vans</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="鬼冢虎">鬼冢虎</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="阿迪达斯">阿迪达斯</a>
                                                                                                            <a href="${pageContext.request.contextPath }/products/productsList.action" class="more" title="查看全部奢品潮物">
                                        查看全部
                                        <span>&gt;</span>
                                    </a>
                      </div>
                                                    <div class="fn-right hide js-category-keyword-container js-category-keyword-container-7" data-index="7">
                                                                                                                <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="香奈儿">香奈儿</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="迪奥">迪奥</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="韩束">韩束</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="CK">CK</a>
                                                                            <a target="_blank" href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="飞利浦">飞利浦</a>
                                                                                                            <a href="${pageContext.request.contextPath }/products/productsList.action" class="more" title="查看全部洗护美妆">
                                        查看全部
                                        <span>&gt;</span>
                                    </a>
                      </div>
                  </div>
                    <div class="sec-bd fn-clear">

                        <div class="left-menu">
                            <ul>
                                                                                                    <li class="on  js-category-trigger js-category-trigger-4" data-index="4">
                                        <a href="${pageContext.request.contextPath }/products/productsList.action">
                                            <i class="index-ico-menu5"></i>
                                            名品腕表                                        </a>
                                    </li>
                                                                    <li class=" js-category-trigger js-category-trigger-5" data-index="5">
                                        <a href="${pageContext.request.contextPath }/products/productsList.action">
                                            <i class="index-ico-menu6"></i>
                                            运动户外                                        </a>
                                    </li>
                                                                    <li class=" js-category-trigger js-category-trigger-6" data-index="6">
                                        <a href="${pageContext.request.contextPath }/products/productsList.action">
                                            <i class="index-ico-menu7"></i>
                                            奢品潮物                                        </a>
                                    </li>
                                                                    <li class=" js-category-trigger js-category-trigger-7" data-index="7">
                                        <a href="${pageContext.request.contextPath }/products/productsList.action">
                                            <i class="index-ico-menu8"></i>
                                            洗护美妆                                        </a>
                                    </li>
                          </ul>
                        </div>

                                                                            <div class="mid-banner js-category-pic-container js-category-pic-container-4" data-index="4">
                                                                <ul class="banner-list js-category-pic-slide-wrap js-category-pic-slide-wrap-4" data-index="4" style="width:1564px;"> <!-- width= 391*n -->
                                                                            <li style="display: block">
                                            <a href="${pageContext.request.contextPath }/products/productsList.action" title="开学大促">
                                                <img width="391" height="623" src="../images/20150828_1739225372492942730e55.JPEG" data-src="../images/20150828_1739225372492942730e55.JPEG"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsList.action" title="DW 新品发布">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150828_1739225372492942730e55.JPEG"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="浪琴 ">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150907_2791272637c147f575de55.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="ODM变形精钢系列">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150925_552416011312a421115065.gif"/>
                                            </a>
                                        </li>
                                                                    </ul>
                                                            </div>
                                                    <div class="hide mid-banner js-category-pic-container js-category-pic-container-5" data-index="5">
                                                                <ul class="banner-list js-category-pic-slide-wrap js-category-pic-slide-wrap-5" data-index="5" style="width:1564px;"> <!-- width= 391*n -->
                                                                            <li style="display: block">
                                            <a href="${pageContext.request.contextPath }/products/productsList.action" title="开学分会场">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150929_746066076c2a30bcc7a065.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="阿迪ZX750">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20151010_1586867492defd685d8165.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="传奇500">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150727_626616225df73b6e8a5b55.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="登月">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150803_624551211642948e40fb55.jpg"/>
                                            </a>
                                        </li>
                                                      </ul>
                      </div>
                                                    <div class="hide mid-banner js-category-pic-container js-category-pic-container-6" data-index="6">
                                                                <ul class="banner-list js-category-pic-slide-wrap js-category-pic-slide-wrap-6" data-index="6" style="width:1564px;"> <!-- width= 391*n -->
                                                                            <li style="display: block">
                                            <a href="${pageContext.request.contextPath }/products/productsList.action" title="饰品箱包">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150929_9680447248bfac8e58a065.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="大疆">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150915_14227675147781e06b7f55.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="爱丁猫">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150910_4057710265ee0340931f55.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="旅行箱">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150807_495670393dd0cdadf94c55.jpg"/>
                                            </a>
                                        </li>
                                                      </ul>
                      </div>
                                                    <div class="hide mid-banner js-category-pic-container js-category-pic-container-7" data-index="7">
                                                                <ul class="banner-list js-category-pic-slide-wrap js-category-pic-slide-wrap-7" data-index="7" style="width:1173px;"> <!-- width= 391*n -->
                                                                            <li style="display: block">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="爆款套装低至3折 开学秒新妆">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150930_4776155292375d9b57b065.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="兰芝气垫BB霜">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150925_6832275952db2be5025065.jpg"/>
                                            </a>
                                        </li>
                                                                            <li style="display: none">
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" title="丹姿水密码爆款套装低至6.5折">
                                                <img width="391" height="623" src="http://cres.fenqile.com/res/img/global/1px.png" data-src="http://cimgb.fenqile.com/uploaded/ibanner/image/20150630_319406131b609211682955.jpg"/>
                                            </a>
                                        </li>
                                                      </ul>
                      </div>
                        
                                                                            <div class="right-list js-category-sku-container js-category-sku-container-4" data-index="4">
                                                                <ul class="index-li">
                                                                            <li class="js-product-item" data-id="S20150722017852"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="../images/20150722_705054451fb4ba6647fa55.jpg" data-original="../images/20150722_705054451fb4ba6647fa55.jpg" alt="天梭(TISSOT)手表 力洛克系列机械男表" title="天梭(TISSOT)手表 力洛克系列机械男表"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">天梭(TISSOT)手表 力洛克系列机械男表</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥3299</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥212</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150724018768"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="../images/20150624_5087549342723c2e02a855.jpg" data-original="../images/20150624_5087549342723c2e02a855.jpg" alt="丹尼尔惠灵顿（Daniel Wellington）男士超薄时尚手表  " title="丹尼尔惠灵顿（Daniel Wellington）男士超薄时尚手表  "></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">丹尼尔惠灵顿（Daniel Wellington）男士超薄时尚手表  </a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥1350</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥125</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201409173402"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="../images/20150828_460462133978f9b6c10e55.jpg" data-original="../images/20150828_460462133978f9b6c10e55.jpg" alt="卡西欧(CASIO)手表 G-SHOCK系列动感时尚双显运动石英男表" title="卡西欧(CASIO)手表 G-SHOCK系列动感时尚双显运动石英男表"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">卡西欧(CASIO)手表 G-SHOCK系列动感时尚双显运动石英男表</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥960</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥116</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150723018048"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="../images/20150806_967557656a09f87df23c55.jpg" data-original="../images/20150806_967557656a09f87df23c55.jpg" alt="美度(MIDO)手表 贝伦赛丽系列 自动机械男表" title="美度(MIDO)手表 贝伦赛丽系列 自动机械男表"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">美度(MIDO)手表 贝伦赛丽系列 自动机械男表</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥4199</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥269</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150629013423"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="../images/20150728_154822647ced47c7727b55.jpg" data-original="../images/20150728_154822647ced47c7727b55.jpg" alt="飞亚达(FIYTA) 极限系列机械男表GA8478.WBB" title="飞亚达(FIYTA) 极限系列机械男表GA8478.WBB"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">飞亚达(FIYTA) 极限系列机械男表GA8478.WBB</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥1899</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥175</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201510080031045"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="../images/20150911_65454563199f2feafb2f55.jpg" data-original="../images/20150911_65454563199f2feafb2f55.jpg" alt="古尊(GOLGEN) 商务系列石英男表 " title="古尊(GOLGEN) 商务系列石英男表 "></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">古尊(GOLGEN) 商务系列石英男表 </a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥480</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥165</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                    </ul>
                                                            </div>
                                                    <div class="hide right-list js-category-sku-container js-category-sku-container-5" data-index="5">
                                                                <ul class="index-li">
                                                                            <li class="js-product-item" data-id="S201509280030681"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg1.fenqile.com/uploaded/product/image/20151013_3560899641a7476d00d165.jpg" alt="耐克nike 男鞋 飞线登月 运动鞋跑鞋跑步鞋 747355" title="耐克nike 男鞋 飞线登月 运动鞋跑鞋跑步鞋 747355"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">耐克nike 男鞋 飞线登月 运动鞋跑鞋跑步鞋 747355</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥699</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥123</span>起
                                            </a>
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150817024785"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20151014_346307281ddfb6a960e165.jpg" alt="NIKE耐克男鞋 2015新款 AIR MAX 90男子气垫跑步鞋 776661/秒杀款" title="NIKE耐克男鞋 2015新款 AIR MAX 90男子气垫跑步鞋 776661/秒杀款"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">NIKE耐克男鞋 2015新款 AIR MAX 90男子气垫跑步鞋 776661/秒杀款</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥699</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥123</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201510100031471"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20151010_328575140d96aa7aa88165.jpg" alt="New Balance/NB 580系列 男鞋女鞋复古鞋跑步鞋大侦探MRT580GK" title="New Balance/NB 580系列 男鞋女鞋复古鞋跑步鞋大侦探MRT580GK"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">New Balance/NB 580系列 男鞋女鞋复古鞋跑步鞋大侦探MRT580GK</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥599</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥73</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150827027650"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20150827_2748777920b2c47fbced55.jpg" alt="喜德盛自行车 可锁死避震前叉 油压碟刹 30变速 侠客800 山地车" title="喜德盛自行车 可锁死避震前叉 油压碟刹 30变速 侠客800 山地车"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">喜德盛自行车 可锁死避震前叉 油压碟刹 30变速 侠客800 山地车</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥4699</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥238</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150603009229"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20150603_8087267061b43dad9ce655.jpg" alt="Ninebot One（C型）智能电动独轮车 代步自平衡" title="Ninebot One（C型）智能电动独轮车 代步自平衡"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">Ninebot One（C型）智能电动独轮车 代步自平衡</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥1799</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥91</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201510150033076"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg.fenqile.com/uploaded/product/image/20151015_103363558f5185de4af165.jpg" alt="阿迪达斯男装 2015新款棒球服运动夹克外套AJ8231 AJ8232 AJ8230" title="阿迪达斯男装 2015新款棒球服运动夹克外套AJ8231 AJ8232 AJ8230"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">阿迪达斯男装 2015新款棒球服运动夹克外套AJ8231 AJ8232 AJ8230</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥459</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥81</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                      </ul>
                      </div>
                                                    <div class="hide right-list js-category-sku-container js-category-sku-container-6" data-index="6">
                                                                <ul class="index-li">
                                                                            <li class="js-product-item" data-id="S20150810022899"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20150810_39752153233678fc038c55.jpg" alt="VERSACE 范思哲 男士巧克力色牛皮银色logo针扣腰带 " title="VERSACE 范思哲 男士巧克力色牛皮银色logo针扣腰带 "></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">VERSACE 范思哲 男士巧克力色牛皮银色logo针扣腰带 </a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥1699</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥157</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150824026873"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <ahref="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg1.fenqile.com/uploaded/product/image/20150824_0985417258eeec2ff7ad55.jpg" alt="PRADA 普拉达 女士黑色真皮拉链钱夹钱包 1M1157 UZF F0002" title="PRADA 普拉达 女士黑色真皮拉链钱夹钱包 1M1157 UZF F0002"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">PRADA 普拉达 女士黑色真皮拉链钱夹钱包 1M1157 UZF F0002</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥2999</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥226</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150707015298"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20150707_045537251fd13f5c8bb955.jpg" alt="EMPORIO ARMANI 阿玛尼 男士尼龙长款钱包 " title="EMPORIO ARMANI 阿玛尼 男士尼龙长款钱包 "></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">EMPORIO ARMANI 阿玛尼 男士尼龙长款钱包 </a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥1690</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥109</span>起
                                            </a>
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150729019849"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20150729_6432853857c58990978b55.jpg" alt="大疆（DJI） 精灵3phantom3高端专业HD航拍飞行器无人机" title="大疆（DJI） 精灵3phantom3高端专业HD航拍飞行器无人机"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">大疆（DJI） 精灵3phantom3高端专业HD航拍飞行器无人机</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥7499</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥480</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150612011108"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg1.fenqile.com/uploaded/product/image/20150612_855874077396278b25a755.jpg" alt="zippo打火机黑冰镀金镶高级红水晶三面心愿" title="zippo打火机黑冰镀金镶高级红水晶三面心愿"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">zippo打火机黑冰镀金镶高级红水晶三面心愿</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥349</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥62</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150804021645"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg.fenqile.com/uploaded/product/image/20150804_35514778808d271fe80c55.jpg" alt="小米（MI） 智能电视" title="小米（MI） 智能电视"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">小米（MI） 智能电视</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥2099</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥193</span>起
                                            </a>
                                                                                            <img class="icon-freeb" src="../images/free-b.png" width="97" height="28">
                                                                  </li>
                                                      </ul>
                      </div>
                                                    <div class="hide right-list js-category-sku-container js-category-sku-container-7" data-index="7">
                                                                <ul class="index-li">
                                                                            <li class="js-product-item" data-id="S20150408005951"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg1.fenqile.com/uploaded/product/image/20150408_739411250660382e3e4255.jpg" alt="香奈儿（Chanel） 可可小姐淡香水" title="香奈儿（Chanel） 可可小姐淡香水"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">香奈儿（Chanel） 可可小姐淡香水</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥949</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥115</span>起
                                            </a>
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150611010766"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg1.fenqile.com/uploaded/product/image/20150617_79920131784dd320c31855.jpg" alt="DIOR克丽丝汀迪奥迪奥小姐花漾淡香氛(EDT)" title="DIOR克丽丝汀迪奥迪奥小姐花漾淡香氛(EDT)"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">DIOR克丽丝汀迪奥迪奥小姐花漾淡香氛(EDT)</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥609</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥108</span>起
                                            </a>
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S201502124782"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg1.fenqile.com/uploaded/product/image/20150617_456021845e30d802c31855.jpg" alt=" 香奈儿（Chanel）邂逅清新淡香水" title=" 香奈儿（Chanel）邂逅清新淡香水"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"> 香奈儿（Chanel）邂逅清新淡香水</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥659</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥116</span>起
                                            </a>
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150416006151"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg.fenqile.com/uploaded/product/image/20150416_468790262cf5fd8885f255.jpg" alt="Laneige兰芝雪润无瑕气垫粉凝霜 （气垫BB霜）" title="Laneige兰芝雪润无瑕气垫粉凝霜 （气垫BB霜）"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">Laneige兰芝雪润无瑕气垫粉凝霜 （气垫BB霜）</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥275</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥49</span>起
                                            </a>
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150625013012"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg2.fenqile.com/uploaded/product/image/20150625_362766220f8262919cb855.jpg" alt="韩后(Hanhoo)水动力澎湃保湿明星礼盒" title="韩后(Hanhoo)水动力澎湃保湿明星礼盒"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">韩后(Hanhoo)水动力澎湃保湿明星礼盒</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥69</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥13</span>起
                                            </a>
                                                                  </li>
                                                                            <li class="js-product-item" data-id="S20150422006329"><!-- li-beging 即将开始 li-end疯抢结束 -->
                                            <div class="fn-text-center am-img">
                                                <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2"><img width="208" height="208" src="http://cres.fenqile.com/res/img/global/default_bg.png" data-original="http://cimg1.fenqile.com/uploaded/product/image/20150422_677523940c45b580557355.jpg" alt="韩后（Hanhoo）雪玲珑化妆品套装组合 六件套" title="韩后（Hanhoo）雪玲珑化妆品套装组合 六件套"></a>
                                            </div>
                                            <h3><a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2">韩后（Hanhoo）雪玲珑化妆品套装组合 六件套</a></h3>
                                            <p>
                                                售价
                                                <span class="fn-rmb">¥249</span>
                                            </p>
                                            <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=2" class="index-li-pic">
                                                月供
                                                <span class="fn-rmb">¥45</span>起
                                            </a>
                                                                  </li>
                                                      </ul>
                      </div>
                        
                    </div>
                </div>
            </div>
        </section>
        
       
</div>
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
    <!-- end footer -->
    <script type="text/javascript">
	    var aixuedai = {
	    	path:'/',
	        staticpath: '#',
	        paydomain: '#',
	        versions: '20150918',
	        userid: "",
	        useraccounts: ""
	    };

        </script>-->-->-->
	<!-- requirejs main -->
	<script src="../js/require.js" data-main="../js/common.js"></script>
        
        <script src="../js/index.js?v=20150918"></script>

        
</body>
</html>