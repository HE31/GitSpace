<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>登录 － 微你而生——大学生理想分期贷款服务平台</title>
    <meta name="keywords" content="大学生分期、大学生分期付款、大学生分期购物">
    <meta name="description" content="微你而生：大学生理想分期贷款服务平台">
    <link rel="icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../css/base.css?t=20160321">
   <!--  <link rel="stylesheet" type="text/css" href="/themes/view.css?t=20160321"> -->
    <script  src="../js/frms-fingerprint-min.js"></script>
    <!-- requirejs main -->
<link rel="stylesheet" type="text/css" href="../css/login.css?t=20160321">



</head>
<body>
	

<style type="text/css">
    body{background-color: #fff!important;}
</style>
 <div id="header">
        <div class="header-top">
            <div class="layout1200">
                <div class="clearfix">
                    <a title="微你而生——大学生理想分期贷款服务平台" href="/" class="fl header-logo"></a><img src="../images/welcomlog.png">
                </div>
            </div>
        </div>
    </div>
    <div class="logBox">
        <div class="loglay pr">
            <div class="logFram">
                <h3 class="fs18">登录微你而生</h3>
                <div class="logItem">
                    <p class="logTip"></p>
                     <form action="${pageContext.request.contextPath }/customer/LoginCheck.action" method="post" id="logform">
                    <p class="mt15">
                        <input class="userPut fs14" type="text" placeholder="用户名" id="logname" name="custnick"/>
                    </p>
                    <p class="mb20">
                        <input class="pwdPut fs14" type="password" placeholder="登录密码" id="logpwd" name="custloginpwd" />
                    </p>
                    <p class="mb20 validateSpan dn">
                        <input type="text" maxlength="6" id="logcode" class="base-input wid100 vert_mid"><img class="vert_mid verifyimg ml10" src="/vcode" title="刷新验证码" class="fl verifyimg ml15" onclick="this.src='/vcode?t='+Math.random();" id="J_RegVerifyImg"></p>
                    <p class="mb35 clearfix"><a class="blue-color fs14 fl" href="${pageContext.request.contextPath }/customer/Registered.action">注册新用户</a><a href="/passwd/findPasswd.html" class="blue-color fs14 fr">忘记登录密码？</a></p>
                    <p> <input class="common-btn orange logbtn" data-url="" id="logBtn"  type="submit" value="登录"></p>
                    </form> 
                </div>
            </div>
        </div>
    </div>
		
		
		
 <div class="loginFoot tac">
        <p class="fs14 mb10">
        <a class="mr15" href="/aboutus.html">关于微你而生</a><b class="splitline mr15"></b>
        <a class="mr15" href="/joinus.html">加入微你而生</a><b class="splitline mr15"></b>
        <a class="mr15" href="/contactus.html">联系我们</a><b class="splitline mr15"></b>
        <a class="mr15" href="/helpcenter.html">帮助中心</a><b class="splitline mr15"></b>
        <a>客服电话：888-8888-8888</a></p>
      
    </div>
	<!-- requirejs main -->
	<script src="../js/require.js" data-main="../js/common.js"></script>
        
        <script src="../js/login.js?v=20160321"></script>

        
</body>
</html>
