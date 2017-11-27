<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html><head>
    <link rel="icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../css/base.css">
    <link rel="stylesheet" type="text/css" href="../css/view.css">
<link rel="stylesheet" type="text/css" href="../css/register.css">

 




</head>
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
            ${custnick },欢迎来到微你而生</div>
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
                    <a title="微你而生——大学生理想分期贷款服务平台" href="" class="fl header-logo"></a><img src="../images/reglog2.png" alt="个人信息完善">
                </div>
            </div>
        </div>
    </div>
 
    <div class="backColor">
        <div class="regBox">
          
            <div class="rgItems">
               <form id="form1" action="${pageContext.request.contextPath }/customer/perInfoSubmit.action" method="post"  >
                
                <p>
                    <label class="rgItemname">真实姓名：</label>
                    <input type="text" class="base-input vert_mid"  placeholder="请输入您的真实姓名" name="custname"  required data-rule-chinese="true" data-msg-required="真实姓名不能为空" data-msg-chinese="请输入正确的格式" data-msg-minlength="请输入正确的格式"" minlength="2" maxlength="6" value=${wdbCustomersCustom.getCustname() }>
                </p>
                
                 <p>
                    <label class="rgItemname">性别：</label>
                     
                     
	<input type="radio" class="radio" name="custsex" value="1" id="check-1" <c:if test="${'1' eq wdbCustomersCustom.getCustsex()}">checked</c:if> hidden required><label for="check-1">男</label>


<input type="radio" class="radio" name="custsex" value="0" id="check-2" <c:if test="${'0' eq wdbCustomersCustom.getCustsex()}">checked</c:if> hidden ><label for="check-2" title="">女</label> <span id="u2"></span>
 <span id="u1"></span> 
      </p>  
                
                
                <p>
                <label class="rgItemname">入学年份： </label>
                   <select name="enterdate" class="nice-select2" required data-msg-required="请选择入学年份" data-rule-gt="true" data-gt="0">
                   <option value="0">请选择入学年份</option>
                   <option value="2016" <c:if test="${'2016' eq wdbCustomersCustom.getCustinuniversity()}">selected</c:if>>2016年</option>
                   <option value="2015" <c:if test="${'2015' eq wdbCustomersCustom.getCustinuniversity()}">selected</c:if>>2015年</option>
                   <option value="2014" <c:if test="${'2014' eq wdbCustomersCustom.getCustinuniversity()}">selected</c:if>>2014年</option>
                   <option value="2013" <c:if test="${'2013' eq wdbCustomersCustom.getCustinuniversity()}">selected</c:if>>2013年</option>
                   <option value="2012" <c:if test="${'2012' eq wdbCustomersCustom.getCustinuniversity()}">selected</c:if>>2012年</option>
                   <option value="2011" <c:if test="${'2011' eq wdbCustomersCustom.getCustinuniversity()}">selected</c:if>>2011年</option>
                   <option value="2010" <c:if test="${'2010' eq wdbCustomersCustom.getCustinuniversity()}">selected</c:if>>2010年</option>
                   <option value="2009" <c:if test="${'2009' eq wdbCustomersCustom.getCustinuniversity()}">selected</c:if>>2009年</option>
                   <option value="2008" <c:if test="${'2008' eq wdbCustomersCustom.getCustinuniversity()}">selected</c:if>>2008年</option>
                   </select> 
                </p>   
               <p>
                <label class="rgItemname">大学所在地：</label>
               
    <select id="province" name="province" class="nice-select" >
					
					</select>&nbsp;&nbsp;
					  <select id="city" name="city" class="nice-select" >
						
					</select>&nbsp;&nbsp;
					<select id="county" name="county" class="nice-select" required  data-msg-required="请选择地址" data-rule-xjs="true" data-gt="0">

					
					</select>
					 <script class="resources library" src="../js/area.js" type="text/javascript"></script>
    
                            <script type="text/javascript">_init_area();</script> 
					
     </p>          
           <p>
                    <label class="rgItemname">所在大学： </label>
                    <input type="text" class="base-input vert_mid" id="college" placeholder="请输入您所在大学名称" name="university"  required value="${university }">
                </p>   
                <p> 
               <label class="rgItemname">所在院系： </label>
                    <input type="text" class="base-input vert_mid" id="department" placeholder="请输入您所在院系" name="department"  required value="${department }" > 
                </p>  
                
                 <p> 
               <label class="rgItemname">详细地址： </label>
                    <input type="text" class="base-input vert_mid"  placeholder="如：XXX楼,3楼,303室" name="add" onBlur="checknb()" required value="${add }"> 
                </p>  
                   <p>
                    <label class="rgItemname">身份证号：</label>
                    <input type="text"  name="idcard" class="base-input vert_mid" placeholder="请输入您的身份证号" required data-rule-idCard="true" data-msg-required="身份证号不能为空" data-msg-idCard="请输入正确的身份证号" }  value=${wdbCustomersCustom.getCustidcard() } ><span>${idcardError }</span>
               </p>
                <p>
                    <label class="rgItemname">邮箱地址：</label>
                    <input type="text" class="base-input  vert_mid"  name="email"  placeholder="请输入常用邮箱地址" required data-rule-mm="true" data-msg-required="请输入邮箱地址" data-msg-mm="请输入正确的邮箱地址" value=${wdbCustomersCustom.getCustemail() }><span>${emailError }</span>
               </p>
               
                <p>
                    <label class="rgItemname">父母姓名：</label>
                    <input type="text" class="base-input vert_mid" id="custparentname" placeholder="请输入您父亲或母亲姓名(可选)" name="custparentname"  data-rule-chinese="true"  data-msg-chinese="请输入正确的格式" data-msg-minlength="请输入正确的格式"" minlength="2" maxlength="6" value=${wdbCustomersCustom.getCustparentname() } >
                </p> 
                </p>
                 <p>
                    <label class="rgItemname">父母电话：</label>
                       <input type="text"  name="custparentphonenum"  class="base-input vert_mid" placeholder="请输入您父亲或母亲的电话(可选)"   data-rule-mobile="true" data-msg-required="请输入手机号" data-msg-mobile="请输入正确格式"  value=${wdbCustomersCustom.getCustparentphonenum() } >
                </p>
                <p>
                    <label class="rgItemname">&nbsp;</label>
                    <label class="checked" id="agree"></label>&nbsp;&nbsp;&nbsp;<span class="fs14">同意<a class="blue-color J_protocol" href="javascript:;">《微你而生用户注册协议》</a></span>
                </p>
                <p>
                    <label class="rgItemname">&nbsp;</label><input type="submit"  value="确认" class="common-btn orange inblock" ></a>
                    <label class="fs14 inblock ml10 vert-bot"><a class="blue-color ml10" href="http://localhost:8080/wdb/customer/Registered.action">返回</a></label>
                </p></form>
            </div>
        </div>
    </div>
    
   
    
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
    equalTo: "请再次输入相同的值"
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
    
 <div class="loginFoot tac">
        <p class="fs14 mb10">
        <a class="mr15" href="#">关于我们</a><b class="splitline mr15"></b>
        <a class="mr15" href="#">加入我们</a><b class="splitline mr15"></b>
        <a class="mr15" href="#">联系我们</a><b class="splitline mr15"></b>
        <a class="mr15" href="#">帮助中心</a><b class="splitline mr15"></b>
        <a>客服电话：888-888-8888</a></p>
       
    </div>	
	

</div></body></html>
