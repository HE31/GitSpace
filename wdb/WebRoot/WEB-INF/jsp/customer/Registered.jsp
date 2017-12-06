<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html><head>
    
    <link rel="stylesheet" type="text/css" href="../css/base.css">
    <link rel="stylesheet" type="text/css" href="../css/view.css">
  
 <link rel="stylesheet" type="text/css" href="../css/register.css">
 <link rel="icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/icon_wdb.ico" type="image/x-icon" /> 
    </head>
 <script type="text/javascript" src="../js/jquery.js"></script>

<body>



	<style>
span{
 font-size:12px;
 color:#FF0000;
 margin-left:10px;
}
</style>
    <!-- begin topbar -->
    <div class="clearfix header-help-tel">
        <div class="layout1200">
            <div class="fl fs12">
            欢迎来到大学生信用生活服务平台</div>
            <div class="fr fs12">
                <a class="fl mr20" href="#" target="_blank">帮助中心</a>
                <span class="fl mr20">咨询热线：888-888-8888</span>
                <span class="fl orange-color hand" id="J_Report">我要举报</span>
            </div>
        </div>
    </div>
    <!-- end topbar -->
 	<div id="header">
        <div class="header-top">
            <div class="layout1200">
                <div class="clearfix">
                    <a title="大学生信用生活服务平台——大学生理想分期贷款服务平台" href="" class="fl header-logo"></a><img src="../images/reglog.png" alt="注册用户">
                </div>
            </div>
        </div>
    </div>
 
    <div class="backColor">
        <div class="regBox">
          
            <div class="rgItems">
               <form  id="form1" action="${pageContext.request.contextPath }/customer/RegisteredSubmit.action" method="post"  >
                
              
               <p>
                    <label class="rgItemname">用户名： </label>
                    <input type="text" onchange="check()"  class="base-input vert_mid"  placeholder="输入用户名" name="custnick"  required   minlength="1" maxlength="20" value=${wdbCustomersCustom.getCustnick() } ><span>${usernameError }</span>
                </p> 
                  <p>
                    <label class="rgItemname">手机号码：</label>
                    <input type="text" id="mobile" class="base-input vert_mid"  placeholder="输入手机号码" name="custphonenum"   required  data-rule-mobile="true" data-msg-required="请输入手机号" data-msg-mobile="请输入正确格式" value=${wdbCustomersCustom.getCustphonenum() }><span>${telError }</span>
                </p>
                <p>
                    <label class="rgItemname">验证码：</label>
                    <input type="text" class="base-input code-input vert_mid" id="mobile" name="mobile_code" required> <input type="button" class="common-btn blue1 inblock ml15 code-btn" id="zphone"  value="获取验证码">
               <script type="text/javascript">
var wait=60;  
var o;
 function get_mobile_code(o){
        $.post('../sms.jsp', {mobile:jQuery.trim($('#mobile').val())}, function(msg) {
           // alert(jQuery.trim(unescape(msg)));
			//if(msg=='提交成功'){
			
			
			//}
        });
     
       time(o);
        	
	} 
	
function time(o) {  
        if (wait == 0) {  
            o.removeAttribute("disabled");            
            o.value="获取验证码";  
            alert(o.value);
            wait = 60;  
        } else {  
            o.setAttribute("disabled", true);  
            o.value="重新发送(" + wait + ")";  
			
            wait--;  
            setTimeout(function() {  
                time(o)  
            },  
            1000)  
        }  
    }  
document.getElementById("zphone").onclick=function(){get_mobile_code(this);}
</script>
               
                <p>
                    <label class="rgItemname">登录密码：</label>
                    <input type="password" class="base-input vert_mid"  placeholder="密码长度6-20位数字字母组合" name="custloginpwd" id="password1"  value="${wdbCustomersCustom.getCustloginpwd() }" required  data-msg-required="请输入登录密码" minlength="6" data-msg-minlength="至少输入6个字符">
                </p>
                <p>
                    <label class="rgItemname">再输一次：</label>
                    <input type="password" class="base-input vert_mid"  name="repassword" value="${wdbCustomersCustom.getCustloginpwd() }" required  equalTo="#password1"> 
                </p>
                
                <p>
                    <label class="rgItemname">交易密码：</label>
                    <input type="password" class="base-input vert_mid"  placeholder="密码长度6-20位数字字母组合"  name="custdealpwd" id="password2" value="${wdbCustomersCustom.getCustdealpwd() }"  required data-msg-required="请输入交易密码" minlength="6" data-msg-minlength="至少输入6个字符">
                     
                </p>
                <p>
                    <label class="rgItemname">再输一次：</label>
                    <input type="password" class="base-input vert_mid"  name="repass"value="${wdbCustomersCustom.getCustdealpwd() }" required equalTo="#password2"> 
                </p>
              
                <p>
                    <label class="rgItemname">&nbsp;</label>
                    <label class="checked" id="agree"></label>&nbsp;&nbsp;&nbsp;<span class="fs14">同意<a class="blue-color J_protocol" href="javascript:;">《大学生信用生活服务平台用户注册协议》</a></span>
                </p>
                
                <p>
                    <label class="rgItemname">&nbsp;</label><input type="submit" value="注册" class="common-btn orange inblock" ></a>
                    <label class="fs14 inblock ml10 vert-bot">已有帐号?<a class="blue-color ml10" href="${pageContext.request.contextPath }/customer/Login.action">登录</a></label>
                </p></form>
            </div>
        </div>
    </div>
    
    <script type="text/x-tmpl" id="J_protocol">
       
    </script>
 <div class="loginFoot tac">
        <p class="fs14 mb10">
        <a class="mr15" href="#">关于我们</a><b class="splitline mr15"></b>
        <a class="mr15" href="#">加入我们</a><b class="splitline mr15"></b>
        <a class="mr15" href="#">联系我们</a><b class="splitline mr15"></b>
        <a class="mr15" href="#">帮助中心</a><b class="splitline mr15"></b>
        <a>客服电话：888-888-8888</a></p>
       
    </div>	<script type="text/javascript">
	    var aixuedai = {
	    	path:'/',
	        staticpath: '#',
	        paydomain: '#',
	        versions: '20150915',
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
	  <script src="../js/jquery-1.8.3.min.js"></script>
<script src="../js/jquery.validate.js"></script>

 

<script>

$(function(){
    //jquery.validate
	$("#form1").validate({
		submitHandler: function() {
			//验证通过后 的js代码写在这里
			 document.getElementByIdx_x('form1').submit();
		}
	})
		
})


//下面是一些常用的验证规则扩展

/*-------------验证插件配置 懒人建站http://www.51xuediannao.com/-------------*/

//配置错误提示的节点，默认为label，这里配置成 span （errorElement:'span'）
$.validator.setDefaults({
	errorElement:'span'
});

//配置通用的默认提示语
$.extend($.validator.messages, {
	required: '请填写该栏位',
    equalTo: "两次输入密码不相同"
});

/*-------------扩展验证规则 懒人建站http://www.51xuediannao.com/-------------*/
//邮箱 
jQuery.validator.addMethod("mail", function (value, element) {
	var mail = /^[a-z0-9._%-]+@([a-z0-9-]+\.)+[a-z]{2,4}$/;
	return this.optional(element) || (mail.test(value));
}, "邮箱格式不对");


//手机验证规则  
jQuery.validator.addMethod("mobile", function (value, element) {
    var mobile = /^1[3|4|5|7|8]\d{9}$/;
	return this.optional(element) || (mobile.test(value));
}, "手机格式不对");

//邮箱或手机验证规则  
jQuery.validator.addMethod("mm", function (value, element) {
    var mm = /^[a-z0-9._%-]+@([a-z0-9-]+\.)+[a-z]{2,4}$|^1[3|4|5|7|8]\d{9}$/;
	return this.optional(element) || (mm.test(value));
}, "格式不对");

//电话或手机验证规则  
jQuery.validator.addMethod("tm", function (value, element) {
    var tm=/(^1[3|4|5|7|8]\d{9}$)|(^\d{3,4}-\d{7,8}$)|(^\d{7,8}$)|(^\d{3,4}-\d{7,8}-\d{1,4}$)|(^\d{7,8}-\d{1,4}$)/;
    return this.optional(element) || (tm.test(value));
}, "格式不对");


//验证当前值和目标val的值相等 相等返回为 false
jQuery.validator.addMethod("equalTo2",function(value, element){
    var returnVal = true;
    var id = $(element).attr("data-rule-equalto2");
    var targetVal = $(id).val();
    if(value === targetVal){
        returnVal = false;
    }
    return returnVal;
},"不能和原始密码相同");

//大于指定数
jQuery.validator.addMethod("gt",function(value, element){
    var returnVal = false;
    var gt = $(element).data("gt");
    if(value > gt && value != ""){
        returnVal = true;
    }
    return returnVal;
},"请选择入学年份");


//不等于指定数
jQuery.validator.addMethod("xjs",function(value, element){
    var returnVal = false;
    var xjs = $(element).data("xjs");
    if( value != "县级市"){
        returnVal = true;
    }
    return returnVal;
},"请选择地址");

//汉字
jQuery.validator.addMethod("chinese", function (value, element) {
    var chinese = /^[\u4E00-\u9FFF]+$/;
    return this.optional(element) || (chinese.test(value));
}, "格式不对");



//身份证
jQuery.validator.addMethod("idCard", function (value, element) {
    var isIDCard1=/^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$/;//(15位)
    var isIDCard2=/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;//(18位)

    return this.optional(element) || (isIDCard1.test(value)) || (isIDCard2.test(value));
}, "格式不对");


</script>

</div></body></html>
