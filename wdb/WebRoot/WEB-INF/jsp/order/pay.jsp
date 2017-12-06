<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>支付页面</title>
<link rel="icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/icon_wdb.ico" type="image/x-icon" />
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

 <link rel="stylesheet" type="text/css" href="../css/base.css">
    <link rel="stylesheet" type="text/css" href="../css/view.css">

    
    </head>
 
	
	 <style type="text/css">
        table {
			width:800px;
        }
		td{
vertical-align:middle;
		 width:auto;
		 height:60px;
		}
		input[type="submit"],input[type="button"]{
	padding:7px 20px;
	color:#FFF;
	cursor:pointer;
	background:#42A2F5 url(../images/large-button-overlay.png);
	border: 1px solid rgba(0, 0, 0, 0.25);
	text-shadow: 0 -1px 1px rgba(0, 0, 0, 0.25);
	-webkit-box-shadow: 0 1px 3px rgba(0, 0, 0, 0.50);
	-webkit-border-radius: 5px;
    border-radius:2px;
    font-family:Arial, Helvetica, sans-serif;
    position:relative;
    
}
input[type="submit"]:hover{
	background-color:#333;
}
 input[type="submit"]:active{
	background-color:#333;  
}
input[type="button"]:hover{
	background-color:#333;
}
 input[type="button"]:active{
	background-color:#333;  
}
    </style>
	
	
</head>
<body>




<link rel="stylesheet" type="text/css" href="../css/cart.css">

    <!-- begin topbar -->
    <div class="clearfix header-help-tel">
        <div class="layout1200">
            <div class="fl fs12">
            ${custnick }, 欢迎来到大学生信用生活服务平台</div>
            <div class="fr fs12">
	               
	                <div id="J_newsFont" class="fl mr20 newsFont"><a href="#">消息（<b class="orange-color H_newsNum">24</b>）</a>
					 
	              	</div>
                <a class="fl mr20" href="#" target="_blank">帮助中心</a>
                <span class="fl mr20">咨询热线：400-867-1888</span>
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
                   <span class="comTwo ">确认订单</span><span class="comTwo comTwobg">支付</span><span class="comLast">完成</span>
                </div>
            </div>
        </div>
    </div>
</div> 
      
<!-- <div class="pay-top"> -->


<div class="hrStyle2"></div>



<div class="pay-box">
<div class="pay-wrap">
<div class="pay-main">
	
	<center><img src="../images/shopping1.png"></center>
	
	<div class="pay-grid">
				 <h3 class="pay-method"> <img src="../images/bluearrow.png">&nbsp;大学生信用生活服务平台账户支付：</h3><br>
				
					<p class="pay-font">本次应付总金额：<font color="#FF7F00"><strong>${firstpay }</strong></font>元</p>
	
	<form action="${pageContext.request.contextPath }/order/createOrderSubmit.action" method="post">
					<p class="pay-font">交易密码：<input type="password" size="30"></p>
					<p class="pay-font">确认密码：<input type="password" name="pwd2" size="30"> <a class="mr30 blue-color aback fs14" href="">忘记密码？</a></p>
					
<input type="hidden" name="customerid" value=${customerid } />

 <input type="hidden" name="ordernumber" />
<input type="hidden" name="custname" value=${wdbCustomersCustom.getCustname() } />

					<br>
				<input type="submit" value="确认支付"></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="paysuccess.html" target="_self"><input type="button" value="暂时不想付款，离开"></a>
					</form>
	<br><br>
	</div>
	<div class="hrStyle"></div>
	<br><br>
	
				<div class="pay-grid">
				 <h3 class="pay-method"> <img src="../images/bluearrow.png">&nbsp;可选付款方式一：网上银行</h3><br>
				
					<p class="pay-font">本次应付总金额：<font color="#FF7F00"><strong>${firstpay }</strong></font>元</p>
					<p class="pay-font">选择网上银行：</p>	
					<table>
  <tr>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank1.png" ></td>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank2.png" ></td>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank3.png"></td> 
  </tr>
  <tr>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank4.png" ></td>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank5.png" ></td>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank6.png"></td> 
  </tr>
   <tr>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank7.png" ></td>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank8.png" ></td>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank9.png"></td> 
  </tr>
   <tr>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank10.png" ></td>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank11.png" ></td>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank12.png"></td> 
  </tr>
   <tr>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank13.png" ></td>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank14.png" ></td>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank15.png"></td> 
  </tr>
   <tr>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank16.png" ></td>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank17.png" ></td>
    <td><input type="radio" name="pay" value="" ></td><td><img src="../images/bank18.png"></td> 
  </tr>
  
</table><br><br>
<form action="${pageContext.request.contextPath }/order/createOrderSubmit.action" method="post">
					<p class="pay-font">银行卡号：<input type="text" size="30"></p>
					<p class="pay-font">支付密码：<input type="password" name="pwd2" size="30"></p>
					
<input type="hidden" name="customerid" value=${customerid } />

<input type="hidden" name="ordernumber" />
<input type="hidden" name="custname" value=${wdbCustomersCustom.getCustname() } />

					<br>
				<input type="submit" value="确认支付"></a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="paysuccess.html" target="_self"><input type="button" value="暂时不想付款，离开"></a>
					</form>
					</center>
				</div>
		   		
				
					<br><br>
					<div class="hrStyle"></div>
<br><br>
					<div class="pay-grid">
				  	<h3 class="pay-method"><img src="../images/bluearrow.png">&nbsp; 可选付款方式二：支付宝支付</h3>
				
				<br>
				
					
					<p class="pay-font">付款总金额：<font color="#FF7F00"><strong>${firstpay }</strong></font>元</p>
					<p class="pay-font">请打开手机支付宝，使用“扫一扫”功能对二维码进行扫码付款</p>
					
					<img src="../images/HE31.png">
				
<br><br><br>
<form action="${pageContext.request.contextPath }/order/createOrderSubmit.action" method="post">
<input type="hidden" name="customerid" value=${customerid } />
 
<input type="hidden" name="ordernumber" />
<input type="hidden" name="Custname" value=${wdbCustomersCustom.getCustname() } />
<input type="hidden" name="pwd2" value=${wdbCustomersCustom.getCustdealpwd() } />
<a href="paysuccess.html" target="_self"><input type="submit" value="支付完成"></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="paysuccess.html" target="_self"><input type="button" value="暂时不想付款，离开"></a>
</form>
</div>
		</div>
		</div>
		</div>	
		 <div class="pay-bottom"><center>
        <p>杭州爱财网络科技有限公司</p>
        <p class="mt5"> wdb.com All Rights Reserved 浙ICP备14016958号-1</p></center>
    </div>		
		
</body>
</html>

    	
    	
            