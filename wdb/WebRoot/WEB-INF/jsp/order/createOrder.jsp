<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>

<html><head>
<link rel="icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/icon_wdb.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <style type="text/css">
    .a{position:absolute;left:1050px;top:920px} 这里
.black_overlay{display:none;position:absolute;top:0%;left:0%;width:100%;height:100%;background-color:black;z-index:1001;-moz-opacity:0.8;opacity:.80;filter:alpha(opacity=80);}
.white_content{display:none;position:absolute;top:110%;left:20%;width:50%;height:50%;padding:16px;border:3px solid orange;background-color:white;z-index:1002;overflow:auto;}
    </style>
   
    <link rel="stylesheet" type="text/css" href="../css/base.css">
    <link rel="stylesheet" type="text/css" href="../css/view.css">
    <script charset="utf-8" src="../js/v.js"></script><script src="../js/hm1.js"></script><script src="../js/frms-fingerprint-min.js"></script>
    
<script type="text/javascript" charset="utf-8" async="" data-requirecontext="_" data-requiremodule="common" src="../js/common.js"></script><script type="text/javascript" charset="utf-8" async="" data-requirecontext="_"  src="../js/cartConfirm.js"></script></head>
<body>
	

<link rel="stylesheet" type="text/css" href="../css/cart.css">

    <!-- begin topbar -->
    <div class="clearfix header-help-tel">
        <div class="layout1200">
            <div class="fl fs12">
            ${custnick }, 欢迎来到大学生信用生活服务平台</div>
            <div class="fr fs12">
	               
	                
					   <div class="news">
					    	<img src="../images/loading_100.gif" class="loading">
			      		</div>
	              	</div>
                <a class="fl mr20" href="#" target="_blank">帮助中心</a>
                <span class="fl mr20">咨询热线：888-8888-8888</span>
                <span class="fl orange-color hand" id="J_Report">我要举报</span>
            </div>
        </div>
    </div>
    <!-- end topbar --> <div id="header">
    <div class="header-top">
        <div class="layout1200">
            <div class="clearfix">
                <a class="fl header-logo" href="#" ></a>
                <div class="fr complateBox mt10">
                   <span class="comTwo comTwobg">确认订单</span><span class="comTwo ">支付</span><span class="comLast">完成</span>
                </div>
            </div>
        </div>
    </div>
</div>    <div class="contbox">
    <form action="${pageContext.request.contextPath }/order/pay.action" method="post">
        <div class="shopcartBox clearfix">
            <p class="mb20">确认收货地址</p>
            <div class="addrlist clearfix  mb30 fs14">
                <ul><li data-deliverid="2144384" class="on" data-isauth="y" data-county="西湖区"><i>修改地址</i><p class="addrProv" title=""><span>${wdbCustomersCustom.getCustaddress() } </span>(<span> ${wdbCustomersCustom.getCustname() } </span>)收</p>
                <p class="mt10" style="max-height:50px" title="" data-title="西湖区杭州电子科技大学信息工程学院（文一校区）文一路115号工字南楼219"></p><br>
                <p><span class="fl">联系方式：${ wdbCustomersCustom.getCustphonenum()}</span></p></li>
               <!--  <li><p class="addrProv">&nbsp;</p><a class="addAddr blue-color"><label class="fs18">＋</label> 添加地址</a></li> -->
                </ul>
            </div>
            <p class="pb20">确认商品信息</p>
            <h3 class="cartTitle"><span class="cartT1 mr10">&nbsp;</span><span class="cartT2 widpro">商品</span><span class="cartT3">单价（元）</span><span class="cartT4">数量</span><span class="cartT5">小计</span></h3>
            <ul class="cartList">
	            		 <li class="clearfix surePro"><span class="ml40" cartid="">&nbsp;</span><span class="child2 mr40"><img src="${wdbProductsCustom.getImageurls()}" /></span>
		                    <div class="prodet widpro">
		                        <p class="mb15">${wdbProductsCustom.getProductname()}</p>
		                        <p class="gray-color fs14">
		                             <label class="mr20">规格：${wdbProductsCustom.getProductdescription() }</label>
		                          
		                        </p>
		                        <p class="gray-color fs14">
		                            <label class="mr20">首付金额：￥${firstpay }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分期次数：${times} 期&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;每期还款金额：￥${repayment } </label>   
		                            
		                        </p>
		                    </div>
		                    <span class="child3">¥&nbsp;${wdbProductsCustom.getQuotoprice()}</span><span class="counts child4">1</span>
		                    <span class="child5 orange-color">¥&nbsp;${wdbProductsCustom.getQuotoprice()}</span>
		                </li>
                
            </ul>
            <p class="remark">补充说明：
                <input type="text" placeholder="您可以给买家留言（选填）" id="buyerMessage" name="buyerMessage">
            </p>
            <p class="subInfo">运费：￥0.00</p>
            <p class="subInfo"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 总付款金额：<span class="orange-color fs24" data-totalprice="1599">￥${wdbProductsCustom.getQuotoprice()}元</span>
            </p>
            <%-- <p class="subInfo"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 每期付款金额：<span class="orange-color fs24" data-totalprice="1599">￥${wdbProductsCustom.getRetailprice() }元</span>
            </p> --%>
            <p class="subInfo"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 每期付款金额：<span class="orange-color fs24" data-totalprice="1599">￥${repayment }元</span>
            </p>
            <p class="subInfo fs14 J_subInfo">寄送至：
                <span>
            	 ${ wdbCustomersCustom.getCustaddress()}
                </span>
            </p>
            <p class="subInfo fs14">收货人：
                <label class="ml25">${wdbCustomersCustom.getCustname()}</label>
            </p>
           
            <p>
            	
<input type="hidden" name="customerid" value=${customerid } />

<input type="hidden" name="date" /> 
<input type="hidden" name="ordernumber" />
<%-- <input type="hidden" name="productnumber" value=${wdbProductsCustom.getProductnumber() }  /> --%>

            </p>
            <p class="subInfo mt20">
            		
           
       	 <input type="submit"  type="submit" class="common-btn orange eleb" value="提交订单"  >
       	  <label class="ml25"><a class="mr30 blue-color aback fs14" href="http://localhost:8080/wdb/products/productsDetailed.action?productnubmer=${productnubmer }">返回</a></label>
       	 </p></div>
       	
        </div> 
            	<!-- <div id="light" class="white_content">

<img src="../images/1png" align="right"></a>
<br>
<table width="100%" border="1">
  <tr>
    <th scope="row" height="30">&nbsp;</th>
  </tr>
</table>
<a class="addAddr blue-color">添加银行卡</a></a>
<h1>分期支付密码</h1>
<br>
<form method="post" action="#">
<input type="password" name="pwd2"><a href="#">忘记密码</a>
<br>
  
  
<input type="submit" class="common-btn orange eleb" value="支付" >


<br>


</form>
</div>
 -->
          
            
         
 
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
    
    <!-- end footer -->
    
    <div id="J_RSide">
        <a class="common-icon qr-code-icon" href="javascript:;"></a>
        <a class="common-icon qr-code-icon-tip" href=""></a>
        <a class="common-icon qq-kefu-icon" href="#" id="BizQQWPA" title="在线咨询" target="_blank"></a>
        <a class="common-icon to-top-icon"></a>
    </div>


	
	<!-- requirejs main -->
	<script src="../js/require.js" data-main="../js/common.js"></script>
        
        

        

<div id="userdata_el" style="visibility: hidden; position: absolute;" _oklj_uj="4UTX7O3REAERDF6A"></div></body></html>
