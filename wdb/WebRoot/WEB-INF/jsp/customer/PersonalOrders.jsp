
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<!DOCTYPE html>

<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>我的订单</title>
  
   
    <link rel="stylesheet" type="text/css" href="../css/base.css">
    <link rel="stylesheet" type="text/css" href="../css/view.css">
    <script charset="utf-8" src="../js/v.js"></script><script src="../js/hm.js"></script><script src="../js/frms-fingerprint-min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/user.css">
<link rel="stylesheet" type="text/css" href="../css/goods.css">

</head>
<body>
	
    <!-- begin topbar -->
    <div class="clearfix header-help-tel">
        <div class="layout1200">
            <div class="fl fs12">
            ${custnick }, 欢迎来到大学生信用生活服务平台</div>
            <div class="fr fs12">
	               
	                
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
       
    </div>
    <div style="height:0px">
        <div class="layout1200 pr oh" style="height:0px">
            <div class="menu noIndexFixed fs18" id="J_noIndexMenuTable">
                <a href="../goods/goods_List.jsp">
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
               
            </div>
        </div>
    </div>
    <!-- end menu -->    <link rel="stylesheet" type="text/css" href="./我的订单_files/cash.css">
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
		                    	<p>可用额度（元）&nbsp;<span class="fs24 vert_mid">￥${wdbCustomersCustom.getCustcreditrest() }</span></span></p>
	                    	                  
                </li>
                <li class="li3 fs14">
                    <p class="mb5">&nbsp;</p>
                    <div><p class="quemark vert_mid" id="amount"></p><span class="vert_mid">可提现金额（元）</span><span class="fs24 vert_mid J_Return_Money cc9" data-money="￥0.00">￥0.00</span></div> 
                    
                </li>
            </ul> 
        </div>
    </div>
    <!-- end account header -->
    
    
    
	<input type="hidden" id="J_H_hasPayPsw" value="true">
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
                        <a href="${pageContext.request.contextPath }/customer/repaymentsRecord.action">
                            <div class="clearfix side-unit">
                                <span class="user-icon bill-icon fl"></span>
                                <span class="fl">还款记录</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a class="current" href="${pageContext.request.contextPath }/customer/PersonalOrders.action">
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
			    <div class=" fl ml10">
			       <div class="orderBox">
						<ul class="order">
							<li class="fl wd11 cc1 fs18 orderBorder"><a href="#">所有订单</a><span class="fr cce lineGan">|</span></li>
							<li class="fl wd11 cc2 fs18 "><a href="#">待付款</a><span class="cc1">&nbsp;</span><span class="fr cce lineGan">|</span></li>
							<li class="fl wd11 cc2 fs18 "><a href="#">待发货</a><span class="cc1">&nbsp;</span><span class="fr cce lineGan">|</span></li>
							<li class="fl wd11 cc2 fs18 "><a href="#">待收货</a><span class="cc1">&nbsp;</span></li>
						</ul>
						<form class="fr mt5" style="font-size:0">
						<input type="text" name="key" value="" class="tjImport">
						<input type="hidden" name="status" value="ALL">
						<input type="submit" value="订单搜索" class="ssImport cc6">
						</form>
					</div>
					<div class="cb"></div>
							
					
					<ul class="goodsName">
						<li class="fl cc6 fs14" style="width:430px;">商品名称</li>
						<li class="fl cc6 fs14" style="width:130px;">商品价格（元）</li>
						<li class="fl cc6 fs14" style="width:60px;">数量</li>
						<li class="fl cc6 fs14" style="width:120px;">实付款（元）</li>
						<li class="fl cc6 fs14" style="width:100px;">交易状态</li>
						<li class="fl cc6 fs14" style="width:138px;">交易操作</li>
					</ul>
					<div class="cb"></div>		
								
								  <c:forEach items="${wdbOrdersQueryVo  }" var="order">
								  
								    	<div class="orderList mb20">
											<div class="orderNum ml20 cc9 mr20 fs14"><span class="fl">
												订单号：${order.getOrdernumber() }</span><span class="fr">下单时间：<fmt:formatDate value='${order.getOrderdate() }' pattern='yyyy-MM-dd HH:mm:ss'/></span>
												<div class="cb"></div>
											</div>
											<img src="${order.getWdbProductsCustom().getImageurls()}" class="H_goodsImg fl ">
											<h1 class="fs16">	${order.getWdbProductsCustom().getProductname() }
											(${order.getWdbProductsCustom().getProductdescription() })</h1> 
											<span class="deNum">1</span>
											<span class="money fs16">￥${order.getWdbProductsCustom().getQuotoprice() }</span>
											<div style="position:absolute;left:638px;top:80px;">
												<p class="fs16 cc1 tac">
													￥${order.getWdbProductsCustom().getQuotoprice() }元
												</p>
												<p class="fs14 cc1 tac">
						                                 
												</p>
												<p class="fs14" style="text-align:center;">（含运费：0.00）</p>
											</div>
											<div class="deliver fs16">
											<c:choose>	
											<c:when test="${order.getOrderstatus() eq 0 }">	
													<a href="#" style="color:#5ca8fd">等待发货</a></c:when>
											<c:when test="${order.getOrderstatus() eq 1 }">	
													<a href="${pageContext.request.contextPath }/customer/ConfirmGoods.action?ordernumber=${order.getOrdernumber()}" style="color:#5ca8fd">确认收货</a></c:when>
													<c:otherwise>
													<a href="#" style="color:#5ca8fd">已收货</a>
													</c:otherwise>
													</c:choose>
</div>
											<span class="orderDetail fs14 cc6"><a href="#">订单详情</a></span>
											<span class="logistics fs14 cc5">
															<a href="#" class="fs14 cc5">查看物流</a>												
											</span>
										<c:choose>	
									<c:when test="${order.getOrderstatus() eq 3 }">		
					<a href="javascript:;" data-order-id="201510111035301310298" class="fs14 cc5 ml60 J_Del_Order delOrdered">交易已完成</a>
					</c:when>
					<c:when test="${order.getOrderstatus() eq 2 }">		
					<a href="javascript:;" data-order-id="201510111035301310298" class="fs14 cc5 ml60 J_Del_Order delOrdered">还款中</a>
					</c:when>
					<c:otherwise>
					<a href="javascript:;" data-order-id="201510111035301310298" class="fs14 cc5 ml60 J_Del_Order delOrdered">申请退款</a>
					</c:otherwise>
					</c:choose>
										</div>
													    	
						</c:forEach>		 
								 
								
								 
							 
						<div class="pro3-pages">
			                     
	<div class="page">
	<center><a>共<c:choose><c:when test="${empty wdbOrdersQueryVo  }">
										0</c:when>
										<c:otherwise>
											${wdbOrdersQueryVo.size() }
											</c:otherwise>
											</c:choose>
											条</a></center>
											
			<%-- 	 共<a href="#" onclick="return false;" class="pageOn"><c:choose><c:when test="${empty wdbOrdersQueryVo  }">
										0</c:when>
										<c:otherwise>
											${wdbOrdersQueryVo.size() }
											</c:otherwise>
											</c:choose></a> 条 --%>
	</div>
						            
			                </div>
			                
								
	                
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
                    <li><a href="#" target="_blank">关于大学生信用生活服务平台</a></li>
                    <li><a href="#" target="_blank">加入大学生信用生活服务平台</a></li>
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
        <a class="common-icon qq-kefu-icon" href="http://crm2.qq.com/page/portalpage/wpa.php?uin=4001899151&f=1&ty=1&aty=0" id="BizQQWPA" title="在线咨询" target="_blank"></a>
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
	requirejs(['../js/user.js']);
</script>

          
<div id="userdata_el" _oklj_uj="4UTX7O3REAERDF6A" style="visibility: hidden; position: absolute;"></div></body></html>
