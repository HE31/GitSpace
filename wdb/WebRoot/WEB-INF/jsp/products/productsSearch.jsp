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
    <link rel="stylesheet" type="text/css" href="../css/global.css">
    <link rel="stylesheet" type="text/css" href="../css/view.css">
    <script charset="utf-8" src="../js/v.js"></script><script src="../js/hm.js"></script><script src="../js/frms-fingerprint-min.js"></script>
    <!-- requirejs main -->
<link rel="stylesheet" type="text/css" href="../css/index1.css">
<link rel="stylesheet" type="text/css" href="../css/goods.css">

<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="common" src="../js/common.js"></script></head>
<body>
	
    <!-- begin topbar -->
    <div class="clearfix header-help-tel">
        <div class="layout1200">
            <div class="fl fs12">
            ${custnick},欢迎来到大学生信用生活服务平台</div>
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
                    <a class="fl header-logo"  title="大学生信用生活服务平台——大学生理想分期贷款服务平台"></a>
                    <div class="fr header-search">
                        <form class="clearfix header-search-box" action="${pageContext.request.contextPath }/products/productsSearch.action" method="post" target="_blank">
                            <input type="text" class="fl header-search-input" id="text" name="searchkey"" placeholder="同学们都在热搜 iphone6" value="">
                            <input type="submit" class="fl block header-search-btn bigfs" value="搜索">
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
	                <a class="fl mr5" href="${pageContext.request.contextPath }/customer/Registered.action">注册</a> 
	                <a class="fl ml10 split" href="${pageContext.request.contextPath }/customer/Login.action">登录</a>
	                <%--   <a class="fl ml10 split" href="${pageContext.request.contextPath }/customer/Logout.action">退出</a>
 --%>
                    <a class="fl ml15 go-paypage-btn" href="${pageContext.request.contextPath }/customer/Personal.action">我要还款</a>                 
               </div>
            </div>
        </div>
    </div>
    <!-- end header -->

    <!-- begin menu -->
    <div class="menu fixed fs18"  id="J_menuTable"  style="top: -347px; display: none;">
       
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
    <div style="height:0px">
        <div class="layout1200 pr oh" style="height:0px">
            <div class="menu noIndexFixed fs18" id="J_noIndexMenuTable">
                <a href="../ goods / goods _ List.jsp">
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
        </div>
    </div>
    <!-- end menu -->    <div class="layout1200">
        <div class="common-page-space clearfix">
            <div class="goods-nav intro-color fs14 mb15">所有分类<span class="ml5 mr5">&gt;</span>手机</div>
            <div class="listLeft mr10 clearfix">
<div class="leftPart1 clearfix" style="background-image: none;">
    <p class="fs14">热门推荐</p>
        <a class="hotShow fl" href="#">
          <div class="pic fl ml5">
              <img class="show" src="../images/kupai4.jpg!200x200.jpg">
          </div>
          <div class="info fr mr5">
              <div class="name fs14 ">
               苹果iPhone6 A1586全网通用 </div>
              <b class="price">
                      <span class="fs16 cc3">	￥4280.00
</span>
              </b>
          </div>
         </a>
        <a class="hotShow fl" href="#">
          <div class="pic fl ml5">
              <img class="show" src="../images/nubiya1.jpg!200x200.jpg">
          </div>
          <div class="info fr mr5">
              <div class="name fs14 ">
                VIVO  X5MAx+移动4G  双卡双待（32G） </div>
              <b class="price">
                      <span class="fs16 cc3">	￥2598.00
</span>
              </b>
          </div>
         </a>
        <a class="hotShow fl" href="#">
          <div class="pic fl ml5">
              <img class="show" src="../images/meitu1.jpg!200x200.jpg">
          </div>
          <div class="info fr mr5">
              <div class="name fs14 ">
               苹果 iPhone 6 Plus 全网通用(A1524) </div>
              <b class="price">
                      <span class="fs16 cc3">	￥5010.00
</span>
              </b>
          </div>
         </a>
         <a class="hotShow fl last" href="#">
          <div class="pic fl ml5">
              <img class="show" src="../images/OPPO R7Plus.jpg">
          </div>
          <div class="info fr mr5">
              <div class="name fs14 ">
                OPPO  R7Plus  移动4G手机  </div>
              <b class="price">
                      <span class="fs16 cc3">	￥2588.00
</span>
              </b>
          </div>
         </a>
         
         <a class="hotShow fl last" href="">
          <div class="pic fl ml5">
              <img class="show" src="../images/huaweirongyao7.1.jpg">
          </div>
          <div class="info fr mr5">
              <div class="name fs14 ">
                华为    荣耀7  移动4G手机  </div>
              <b class="price">
                      <span class="fs16 cc3">	￥2400.00
</span>
              </b>
          </div>
         </a>
         
</div> <div class="" style="background-image: none;">
    

</div>            </div>
            <div class="listRight">
<div class="goods-category mt0 widauto">
    <ul>
        <li class="clearfix"> <span class="fl cate-word wid68">品牌&nbsp;:</span>
            <div class="fl ml10 cate-main wid880">
                <div class="wid760 fl">
                     <a href="${pageContext.request.contextPath }/products/productsList.action" class="cate-a current">全部</a>
                    <span id="sectype">
                    			 <a href="${pageContext.request.contextPath }/products/productsList2.action?categoryid=1" class="cate-a ">vivo</a> 
                    			 <a href="${pageContext.request.contextPath }/products/productsList2.action?categoryid=2" class="cate-a ">苹果</a> 
                    			 <a href="${pageContext.request.contextPath }/products/productsList2.action?categoryid=3" class="cate-a ">佳能</a> 
                    			 <a href="${pageContext.request.contextPath }/products/productsList2.action?categoryid=1" class="cate-a ">华为</a> 
                    			 <a href="${pageContext.request.contextPath }/products/productsList2.action?categoryid=1" class="cate-a ">三星</a> 
                    			 <a href="${pageContext.request.contextPath }/products/productsList2.action?categoryid=1" class="cate-a ">索尼</a> 
                    			 <a href="${pageContext.request.contextPath }/products/productsList2.action?categoryid=1" class="cate-a ">OPPO</a> 
                    			 <a href="${pageContext.request.contextPath }/products/productsList2.action?categoryid=1" class="cate-a ">乐视</a> 
                    			 <a href="${pageContext.request.contextPath }/products/productsList2.action?categoryid=1" class="cate-a ">VIVO</a> 
                    			 <a href="${pageContext.request.contextPath }/products/productsList2.action?categoryid=1" class="cate-a ">努比亚</a> 
                    			 <a href="${pageContext.request.contextPath }/products/productsList2.action?categoryid=1" class="cate-a ">酷派</a> 
                    			 <a href="${pageContext.request.contextPath }/goods/goodsList2.action?goodstype=12" class="cate-a ">康佳</a> 
                    			 <a href="#" class="cate-a ">纽曼</a> 
                    			 <a href="#" class="cate-a ">HTC</a> 
                    			 <a href="#" class="cate-a ">联想</a> 
                    			 <a href="#" class="cate-a ">美图</a> 
                    			 <a href="#" class="cate-a ">中兴</a> 
                    			 <a href="#" class="cate-a ">一加</a> 
                    			 <a href="#" class="cate-a ">TCL</a> 
                    			 <a href="#" class="cate-a ">锤子</a> 
                    			 <a href="#" class="cate-a ">青橙</a> 
                    
                      </span>
                </div>
            </div>
        </li>
        <li class="clearfix"><span class="fl cate-word wid68">价格&nbsp;:</span>
            <div class="fl ml10 cate-main wid880 last">
                <a href="#" class="cate-a current">全部</a>
				<a href="#" class="cate-a ">999元以下</a>
				<a href="#" class="cate-a ">1000-1999元</a>
			    <a href="#" class="cate-a ">2000-2999元</a> 
			    <a href="#" class="cate-a ">3000-3999元</a> 
			    <a href="#" class="cate-a ">4000-4999元</a> 
			    <a href="#" class="cate-a ">5000元以上</a> 
			</div>
        </li>
    </ul>
</div>                <h3 class="proItem mt10">           
                    <span class="fl">
                    <a href="#" class="itemon">综合</a><b class="splitline"></b>
                    <a href="#">价格
                    <i class="downicon"></i>
                  </a><b class="splitline"></b>

                  <a href="#">销量
                  <i class="downicon"></i>
                  </a></span>

		            <span class="fr mr15">共有<strong class="orange-color">364</strong>款产品</span>
		        </h3>
	 
            
              
             
             	         <div class="floor  pro3 clearfix">
             	          <c:if test="${not empty productsList }">
             	           <c:forEach items="${productsList }" var="product">
	            <div class="goodsList fl">
                   
                          <a href="${pageContext.request.contextPath }/products/productsDetailed.action?productnumber=${product.productnumber }" class="showcase fl clearfix wid242">
                    				 <div class="goodsPic">
		                        <img src="${product.imageurls}" style="width:180px;height:180px;"/>
		                            </div>
		                            <div class="goodListName fs14 ml10 cc2 mr10 mt10">	${product.productname }
</div>
		                            <div class="goodsPrice clearfix">
		                                 <span class="fl cc9 fs14 ">爆抢价:<span class="fs14"> <fmt:formatNumber type="number" value="${product.quotoprice }" maxFractionDigits="2"/>
</span>
		                                </span>
		                            </div>3
		                            <div class="dayPay fs14 clearfix fl">
		                                <span class="cc1 fs14">月供:</span><span class="cc1 fs20">	 <fmt:formatNumber type="number" value="${product.quotoprice /24}" maxFractionDigits="2"/>
&nbsp;起<br></span>
		                            </div>
		                             </a>
		                           </div>
		                           
  </c:forEach>
  </c:if>
  <c:if test="${empty productsList }">
  <img alt="" src="../images/pronotfound.jpg">
  </c:if>
  
 
		        
		
              </div>
                <div align="center">
                                 <h1> <jsp:include page="../public/page.jsp">
                <jsp:param value="${pageContext.request.contextPath }/products/productsList.action" name="url"/>
                <jsp:param value="${strParam}" name="paramlist"/>
                <jsp:param value="目前还没有内容..." name="tip"/>
            </jsp:include></h1>
             
               
              
            
       
              
            </div>
        </div>
    </div>   
    
    

    <!-- begin footer -->
    <div class="footer">
        <div class="layout1200">
            <div class="clearfix">
            <div class="fl bdLine">
                <ul class="fl unit ml15" style="width:120px">
                    <li class="first"><em>大学生信用生活服务平台</em></li>
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
                   <li class="first"><em>手机大学生信用生活服务平台</em></li>
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
    
    <div id="J_RSide" style="right: -80px;">
        <a class="common-icon qr-code-icon" href="javascript:;"></a>
        <a class="common-icon qr-code-icon-tip" href=""></a>
        <a class="common-icon qq-kefu-icon" href="http://crm2.qq.com/page/portalpage/wpa.php?uin=4001899151&f=1&ty=1&aty=0" id="BizQQWPA" title="在线咨询" target="_blank"></a>
        <a class="common-icon to-top-icon"></a>
    </div>

    <div class="pendant" style="display: none;">
        <a href="javascript:;" class="close" id="J_PendantClose" title="关闭"></a>
        <a href="#" class="go" target="_blank"></a>
    </div>	<script type="text/javascript">
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
	<script src="../js/require.js" data-main="../js/common.js"></script>
        
        
        <script src="../js/list.js"></script>
       <!--  头部下拉列表js -->
   <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
<script type="text/javascript">
requirejs(['../js/detail.js?v=20150915']);
</script> 
<div id="userdata_el" _oklj_uj="4UTX7O3REAERDF6A" style="visibility: hidden; position: absolute;"></div></body></html>