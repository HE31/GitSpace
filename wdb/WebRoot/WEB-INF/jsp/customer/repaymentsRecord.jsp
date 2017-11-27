<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>

<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <title>微你而生个人中心</title>
   
    
    <link rel="stylesheet" type="text/css" href="../css/base.css">
    <link rel="stylesheet" type="text/css" href="../css/view.css">
    <script charset="utf-8" src="../js/v.js"></script><script src="../js/hm.js"></script><script src="./爱学贷个人中心_files/frms-fingerprint-min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/user.css">
<link rel="stylesheet" type="text/css" href="../css/goods1.css">

<script type="text/javascript"></script>
</head>
<body>
	
    <!-- begin topbar -->
    <div class="clearfix header-help-tel">
        <div class="layout1200">
            <div class="fl fs12">
            ${custnick}, 欢迎来到微你而生</div>
            <div class="fr fs12">
	              
                <a class="fl mr20" href="#" target="_blank">帮助中心</a>
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
                    <a class="fl header-logo" href="#" ></a>
                    <div class="fr header-search">
                        <form class="clearfix header-search-box" action="${pageContext.request.contextPath }/products/productsSearch.action" method="get" target="_blank">
                            <input type="text" class="fl header-search-input" id="text" name="searchkey" placeholder="同学们都在热搜 iphone6s" value="">
                            <input type="submit" class="fl block header-search-btn bigfs" value="搜索">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-bottom fixed">
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
	                
                    <a class="fl mr5 split" href="#">个人中心</a>
                    <!--<a class="fl mr5 split" href="/mall/safe/safeCenter.html">个人中心</a> -->
	                <a class="fl ml10 mr10  split" href="${pageContext.request.contextPath }/customer/Logout.action">退出</a>
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
            <span class="headPhone"><img src="../images/avatar.png"></span>
            <ul class="clearfix">
                <li class="li1">
                    <p class="fs18 mb5">你好，${wdbCustomersCustom.getCustname() }</p>
                    <p class="fs14 gray-color mb15">登录时间：${LoginDate}</p>
                    <p>
                       <a class="userSta1-light telNumSet2 telNumSet" data-tel="17826800425"><img src="../images/xiaotubiao1 .png"></a>
                       <a class="userSta2 usesrAuthent"><img src="../images/xiaotubiao2 .png"></a>
                       <a class="userSta3-light editPay"><img src="../images/xiaotubiao3.png"></a>
                       <a class="userSta4 cdAddbanck" data-num="0"><img src="../images/xiaotubiao4.png"></a>                       
                    </p>                   
                     <div id="J_tip_Authent" class="dn">
						<span>身份信息待认证&nbsp;&nbsp;<a class="blue-color usesrAuthent" target="_blank">管理</a></span>
		        	  </div>	
               		  <div id="J_tip_pay" class="dn">
						<span>支付密码已设置&nbsp;&nbsp;<a class="blue-color editPay" target="_blank">管理</a></span>
		        	  </div>			        	  
		        	  <div id="J_tip_bankcard" class="dn">
						<span>银行卡还未绑定&nbsp;&nbsp;<a class="blue-color addBankbtn nosty" id="" target="_blank">绑定银行卡</a></span>
		        	  </div>
                </li>
                <li class="li2">
                    <p class="mb5">&nbsp;</p>  
	                    <!--已实名，未面签, 信用额度可用-->
		                    	<p>可用额度（元）&nbsp;<span class="fs24 vert_mid">￥${wdbCustomersCustom.getCustcreditrest() }</span></p>
	                    	                  
                </li>
                <li class="li3 fs14">
                    <p class="mb5">&nbsp;</p>
                    <div><p class="quemark vert_mid" id="amount"></p><span class="vert_mid">可提现金额（元）</span><span class="fs24 vert_mid J_Return_Money cc9" data-money="￥0.00">￥0.00</span></div> 
                    
                </li>
            </ul> 
        </div>
    </div>
    <!-- end account header -->
    
   	<input type="hidden" id="J_H_hasPayPsw" value="true" />
<div class="layout1200">
        <div class="common-page-space clearfix">
﻿             <div class="fl persMenu">
                <ul class="u-sidebar">
                    <li>
                        <a  href="${pageContext.request.contextPath }/customer/Personal.action">
                            <div class="clearfix side-unit">
                                <span class="user-icon center-icon fl" style="cursor:pointer;"></span>
                                <span class="fl">个人中心</span>
                            </div>
                        </a>
                    </li>
                    <li>
                         <a  class="current" href="${pageContext.request.contextPath }/customer/repaymentsRecord.action">
                            <div class="clearfix side-unit">
                                <span class="user-icon bill-icon fl"></span>
                                <span class="fl">还款记录</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a  href="${pageContext.request.contextPath }/customer/PersonalOrders.action">
                            <div class="clearfix side-unit">
                                <span class="user-icon order-icon fl"></span>
                                <span class="fl">我的订单</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a  href="../goods/goods_safety.jsp">
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
                                <span class="fl">我的合同</span>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="order-box fr">
                    <div class="wd923 mb10 bdcAfter billClass clearfix">
<div class="wd945 fs14 cc0"><p class="fl">信用账单</p></div> 
										<div class="fl mt40 ml40"><p class="fs48 cc9"><span class="fs24"></span>
										
										￥${ WdbRepaymentsCustom.get(0).getWdbOrders().getRepayment()}
</p><p class="fs14 cc6">本期应还总额</p></div>
								<div class="fl mt40 ml40" style="width:220px;"><p class="fs14 cc6 mt20 fr">无账单 </p></div>
							<div class="fl tac" style="margin-left:220px;">
				
			    			</div>
			
			<div class="lineLonger fl"></div>
		
			<div class="fl mt50 ml60 fs14 cc6 listBill">
				<p><span>信用额度:</span>	￥3000.00
</p>
				<p><span>可用额度:</span>	￥${wdbCustomersCustom.getCustcreditrest() }.00
</p>
				<p><span>账单日:</span>每月20日</p>
				<p><span class="cc2">还款日:</span><b>
					每月1日
			   

				</b>
				</p>
			</div>
			
<input type="hidden" id="J_upPeriod" value="2">
<input type="hidden" id="J_downPeriod" value="24">
                    </div>
                <div class="unit wid978 clearfix tabBox">
                    <div class="proItem2">
                          <a class="itemon2" href="#">未完成订单</a><b class="splitline"></b>
                          <a class="" href="">收支明细</a><b class="splitline"></b>
                          <a class="" href="">微贷款</a>
                          <a class="" href="">贷款记录</a>
                    </div>
                    	<table class="centTab1 fs14" cellpadding="0" cellspacing="0" border="0">
                            <tbody><tr>
                             <th width="120">订单号</th>
                                <th width="120">还款日期</th>
                                <th width="200">还款人</th>
                                <th width="100" class="myTextRight">还款金额（元）</th>
                                <th width="100">还款类型</th>
                                <th width="100">操作</th>
                                
                            </tr>
                            <c:choose>
                            <c:when test="${empty WdbRepaymentsCustom}">
                       <tr>    <td></td><td></td><td><p style="letter-spacing:20px;">暂无相关订单</p></td></tr>
                            </c:when>
                            <c:otherwise>
                             <c:forEach items="${WdbRepaymentsCustom }" var="Repayment" varStatus="status">
	                        <tr>
	                        <td>${Repayment.getOrdernumber() } </td>
	                       
	                            <td>  <fmt:formatDate value='${Repayment.getCreatedate() }' pattern='yyyy-MM-dd HH:mm:ss'/></td>
	                            <td>
	                            ${Repayment.getCustname() } 
	                            </td>
	                            <td class="myTextRight">${Repayment.getWdbOrders().getRepayment()}</td>
	                            <td>
               					${ Repayment.getDetail()}
	                            </td>
	                            <td><a style="color:#5ca8fd" href="#">查看详情</a><br>
	                           
	                           
	                          
	                            </td>
	                        </tr>
	                        </c:forEach>
	                        </c:otherwise>
	                        </c:choose>
                            </tbody><tfoot>
                              <tr>
                                <td colspan="5" style="border:none;">
                                    <div class="pro3-pages">
	<div class="page">
	<center><a>共${WdbRepaymentsCustom.size() } 条</a></center> 
			
	</div>
                                    </div>
                                </td>
                              </tr>
                            </tfoot>
	                 	</table>   
                    
                </div>
            </div>
        </div>
         
    </div>
   
    <script type="text/x-tmpl" id="J_ShouXin" data-showshouxin="false" data-status="false" data-prompt="false"> </script>
    
    
          <script type="text/x-tmpl" id="J_RepayMent" data-status="false" data-prompt="false"> 
           <div style="height:342px" class="J_box">
           <div class="repayment" style="display:none;">
               <div class="top">
                   <h1>请选择一个喜欢的日子，作为您的每月账单还款日</h1>
                   <ul class="clearfix J_Mark">
                               <li>
                               <a href="javascript:;" data-id="1">
                                   01
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="2">
                                   02
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="3">
                                   03
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="4">
                                   04
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="5">
                                   05
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="6">
                                   06
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="7">
                                   07
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="8">
                                   08
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="9">
                                   09
                           </a>
                           </li>
                               <li class="on">
                               <a href="javascript:;" data-id="10">
                                   10
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="11">
                                   11
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="12">
                                   12
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="13">
                                   13
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="14">
                                   14
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="15">
                                   15
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="16">
                                   16
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="17">
                                   17
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="18">
                                   18
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="19">
                                   19
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="20">
                                   20
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="21">
                                   21
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="22">
                                   22
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="23">
                                   23
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="24">
                                   24
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="25">
                                   25
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="26">
                                   26
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="27">
                                   27
                           </a>
                           </li>
                               <li>
                               <a href="javascript:;" data-id="28">
                                   28
                           </a>
                           </li>
                   </ul>
               </div>
               <div class="bottom">
                   <p class="mt10">
                   如：您选择了每月15日作为账单还款日，则每月6日为账单出账日<br/>
                   出账日至还款日之间的消费将纳入下期账单中，下个月最后还款日才需要还款哦<a href="/help_2.html">了解更多</a>
                   </p>
               </div>
               <div class="btn">
                   <a class="common-btn orange J_ok"  href="javascript:;">完成设置</a>
               </div>
           </div>
           <div class="repayment" style="display:none;">
               <div class="top mb20">
                   <h1>设置成功！您的信用账户出账日为每月<span>20</span>日，还款日每月为<span>1</span>日</h1>
                   <p>还款期十天内的消费计入下期帐单，享受最长40天的免息</p>
               </div>
               <div class="bottom">
                   <center class="p">
                   <img src="../images/repayment.png">
                   <span class="c1">20</span>
                   <span class="c2">1</span>
                   <span class="c3">20</span>
                   <span class="c4">1</span>
                   </center>
                   <p class="mt25 tac" style="padding-left:0">
                   请注意：未能在最后还款日前还款的本期帐单即为逾期，帐单逾期将对您的个人征信造成负面影响 <a href="/help_2.html">了解更多</a>
                   </p>
               </div>
               <div class="btn">
                   <a class="common-btn orange J_Iknow" href="javascript:;" >我知道了</a>
               </div>
           </div>
           </div>
       </script>
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
                    <li><a href="#" target="_blank"><img src="../images/ip_icon.jpg"></a></li>
                    <li><a href="#"><img src="../images/ad_icon.jpg"></a></li>
                  
                </ul>
                  
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
        <a class="common-icon qq-kefu-icon" href="http://crm2.qq.com/page/portalpage/wpa.php?uin=4001899151&f=1&ty=1&aty=0" id="BizQQWPA" title="在线咨询" target="_blank"></a>
        <a class="common-icon to-top-icon"></a>
    </div>


	<script type="text/javascript">
	    var aixuedai = {
	    	path:'/',
	        staticpath: '#',
	        paydomain: '#',
	        versions: '20150915',
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
	<!-- requirejs main -->
	<script src="../js/require.js" data-main="../js/common.js"></script>
            <input type="hidden" value="17826800425" id="J_HDTel">
    <script type="text/x-tmpl" id="setTelNum">
        <div class="setTelNum">
            <p class="mb10 fs16">请确认当前绑定手机号码:<span class="bangTel" data-tel="17826800425">178****0425</span>是否能收到短信</p>
            <p class="mb15 fs16"><a class="blue-color telnumLos">手机丢失或者已停用?</a></p>
            <div class="unit clearfix mb35 fs16">
                <label class="fl">验证码:</label>
                <input type="text" maxlength="6" id="J_VCode" class="wid100 vert_mid base-input code-input fl"><a class="wid150 common-btn blue1 ml10 code-btn h42 eleb fs16 fl" href="javascript:;">获取验证码</a><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div>
             </div>
            <div class="mlnext"><a id="J_AlterTel" class="common-btn orange">下一步</a></div>
        </div>
    </script>
    <script type="text/x-tmpl" id="idConfirm">
        <div class="idConfirm-box">
            <h3 class="mb20 fs16">认证信息</h3>
            <p class="pinfo">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<span id="realName"></span></p>
            <p class="pinfo">身份证号：<span id="pin"></span></p>
            <p class="pinfo">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：<span id="cellphone"></span></p>
            <p class="pinfo">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;校：<span id="school"></span></p>
            <h3 class="mb20 fs16 clearfix mt20 pt20"><span class="fl">收货地址</span>
            	  <a class="blue-color fr fs12 mt5" id="addAddrBtn">添加收货地址</a>          	
            </h3>
           
            <div class="addrBox">
            	<ul></ul>
            </div>
        </div>
    </script>
    <script type="text/x-tmpl" id="setpaypwd2">
        <div class="set-paypwd-box pl40">
            <div class="unit clearfix mb20">
                <label class="fl">支付密码:</label>
                <input type="password" id="J_ModifyPwd_Pay2" maxlength="6" class="base-input fl" placeholder="请设置6位数字密码"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div>
            </div>
            <div class="unit clearfix mb30">
                <label class="fl">再输一次:</label>
                <input type="password" id="J_ModifyCPwd_Pay2" maxlength="6" class="base-input fl"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div>
            </div>
            <p class="mlnext"><a id="J_PwdBtn_Pay2" class="common-btn orange mr30">完 成</a></p>
        </div>
    </script>
    <script type="text/x-tmpl" id="addBankCardTmpl">
        <div class="banksBox">
	    	<div class="banklist"></div>
	        <p><a class="addBankbtn blue-color fs14 addBank"><label class="fs18">＋</label> 添加银行卡</a></p>
	        <p></p>
	    </div>
    </script>
    <script type="text/x-tmpl" id="authDetails">
        <div class="authDetails-box pl40">      
        </div>
    </script>
    
    <script type="text/x-tmpl" id="setlogpwd">
        <div class="modify-password-box pl40">
            <div class="unit clearfix mb20">
                <label class="fl">旧密码:</label>
                <input type="password" id="J_ModifyOldPwd" maxlength="16" class="base-input fl" placeholder="请输入旧密码"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div>
            </div>
            <div class="unit clearfix mb20">
                <label class="fl">新密码:</label>
                <input type="password" id="J_ModifyPwd" maxlength="16" class="base-input fl" placeholder="请设置8-16位数字字母密码"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div>
            </div>
            <div class="unit clearfix mb30">
                <label class="fl">再输一次:</label>
                <input type="password" id="J_ModifyCPwd" maxlength="16" class="base-input fl"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div>
            </div>
            <p class="mlnext"><a id="J_PwdBtn" class="common-btn orange inblock">完 成</a><a class="ml20 blue-color eleb mt20 fs14 forget-password-btn">忘记密码？</a></p>
        </div>
    </script>
    <script type="text/x-tmpl" id="setpaypwd">
        <div class="modify-paypwd-box pl40">
            <div class="unit clearfix mb20">
                <label class="fl">旧支付密码:</label>
                <input type="password" id="J_ModifyOldPwd_Pay" maxlength="16" class="base-input fl" placeholder="请输入旧密码"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div>
            </div>
            <div class="unit clearfix mb20">
                <label class="fl">新支付密码:</label>
                <input type="password" id="J_ModifyPwd_Pay" maxlength="6" class="base-input fl" placeholder="请设置6位数字密码"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div>
            </div>
            <div class="unit clearfix mb30">
                <label class="fl">再输一次:</label>
                <input type="password" id="J_ModifyCPwd_Pay" maxlength="6" class="base-input fl"><div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div>
            </div>
            <p class="mlnext"><a id="J_PwdBtn_Pay" class="common-btn orange mr30 inblock">完 成</a><a class="ml20 blue-color eleb mt20 fs14 findPay">忘记支付密码？</a></p>
        </div>
    </script>
    <script type="text/x-tmpl" id="findpwd">
        <div class="modify-payfind-box pl40">
            <div class="unit clearfix fs16">
                <label class="fl">&nbsp;</label>当前绑定手机号码：<span class="bangTel" data-tel="17826800425">178****0425</span>
            </div>
            <div class="unit clearfix mb20 fs16">
                <label class="fl">验证码:</label>
                <input type="text" id="J_PayCode" class="wid100 fl vert_mid base-input code-input" maxlength="6"><a href="javascript:;" class="wid150 fl common-btn blue1 ml10 code-btn h42 eleb fs16">获取验证码</a>
            	<div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div>
            </div>
            <div class="unit clearfix mb20">
                <label class="fl">设置支付密码:</label>
                <input type="password" id="J_ModifyPwd_PayFind" maxlength="6" class="base-input fl" placeholder="请设置6位数字密码">
            	<div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div>
            </div>
            <div class="unit clearfix mb30">
                <label class="fl">再输一次:</label>
                <input type="password" id="J_ModifyCPwd_PayFind" maxlength="6" class="base-input fl">
                <div class="fl base-error"><span class="regError fs14 mt11 fl"></span><span class="msg fl"></span></div>
            </div>
            <p class="mlnext"><a id="J_PwdBtn_PayFind" class="common-btn orange">完 成</a></p>
        </div>
    </script>

 

        <script type="text/javascript">
	requirejs(['../js/user.js?v=20150915']);
</script>

        

<div id="userdata_el" _oklj_uj="4UTX7O3REAERDF6A" style="visibility: hidden; position: absolute;"></div><div id="tip_holder" style="max-width: 300px; display: none; margin: 376px 0px 0px 338px;" class="tip_bottom"><div id="tip_arrow" style="margin-left: 9px; margin-top: -12px;"><div id="tip_arrow_inner"></div></div><div id="tip_content">
						<span>身份信息待认证&nbsp;&nbsp;<a class="blue-color usesrAuthent" target="_blank">管理</a></span>
		        	  </div></div></body></html>