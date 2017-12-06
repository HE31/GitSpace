<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
<meta charset="utf-8"/>
<title>大学生信用生活服务平台后台登录</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="${__static__}/css/style1.css" />
<style>
body{height:100%;background:#1B5FB3;overflow:hidden;}
canvas{z-index:-1;position:absolute;}
</style>
<script src="${__static__}/js/jquery.js"></script>
<script src="${__static__}/js/verificationNumbers.js"></script>
<script src="${__static__}/js/Particleground.js"></script>
<script>
$(document).ready(function() {
if(${status}==1){
document.getElementById("account").setAttribute("placeholder","用户名或密码错误");
document.getElementById("pwd").setAttribute("placeholder","用户名或密码错误");
}
  //粒子背景特效
  $('body').particleground({
   
   /*   dotColor: '#D9DFE7',
    lineColor: '#D9DFE7' */
     /*  dotColor: '#E4D253',
    lineColor: '#E4D253' */
  });
  //验证码
  createCode();
 
});
</script>
</head>
<body>
<dl class="admin_login">
 <dt>
  <strong>大学生信用生活服务平台后台管理系统</strong>
  <em>EXIST FOR YOU Management System</em>
 </dt>
 <form action="${pageContext.request.contextPath }/public/loginCheck.action" method="post" name="client"> 
 <dd class="user_icon">
  <input type="text" placeholder="账号" class="login_txtbx" name="account" id="account"/>
 </dd>
 <dd class="pwd_icon">
  <input type="password" placeholder="密码" class="login_txtbx" name="pwd" id="pwd"/>
 </dd>
  </form>
 <dd class="val_icon">
  <div class="checkcode">
    <input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">
    <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
  </div>
  <input type="button" value="换一个" class="ver_btn" onClick="changeCode();" id="ver_btn">
 </dd>
 <dd>
<input type="button" value="立即登陆" class="submit_btn"  onClick="validate();"/>
 </dd>
 <dd>
 </dd>

</dl>
</body>
</html>
