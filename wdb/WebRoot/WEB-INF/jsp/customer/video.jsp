<%@ page language="java"  import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
   
    
   <link rel="icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="../css/base.css">
	 <link rel="stylesheet" type="text/css" href="../css/register.css">
   <!-- <link rel="stylesheet" type="text/css" href="../css/global.css">
    <link rel="stylesheet" type="text/css" href="../css/view.css">-->

<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/goods.css" />
    <script charset="utf-8" src="../js/v.js"></script>
    <!-- requirejs main -->
<link rel="stylesheet" type="text/css" href="../css/index1.css">

<title>微贷吧视频认证</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="Keywords" content="flash头像上传组件，仿新浪微博头像上传组件，头像图片剪裁" />
  <meta name="Description" content="flash 上传头像，用户体验好，头像剪裁，预览组件" />
  <style type="text/css" media="screen">
  html, body { height:100%; background-color: #ffffff;}
  #flashContent { width:100%; height:100%; }
  </style>
  
  <script type="text/javascript">
   function uploadevent(status,picUrl,callbackdata){
  //alert(picUrl); //后端存储图片
//	alert(callbackdata);
        status += '';
     switch(status){
     case '1':
		var time = new Date().getTime();
		var filename162 = picUrl+'_162.jpg';
		var filename48 = picUrl+'_48.jpg';
		var filename20 = picUrl+"_20.jpg";

		document.getElementById('avatar_priview').innerHTML = "头像1 : <img src='"+filename162+"?" + time + "'/> <br/> 头像2: <img src='"+filename48+"?" + time + "'/><br/> 头像3: <img src='"+filename20+"?" + time + "'/>" ;
		
	break;
     case '-1':
	  window.location.reload();
     break;
     default:
     window.location.reload();
    } 
   }
  </script>

</head>
<body>
	
    <!-- begin topbar -->
    <div class="clearfix header-help-tel">
        <div class="layout1200">
            <div class="fl fs12">
            ${custnick},欢迎来到微贷吧</div>
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
                    <a class="fl header-logo"  title="微贷吧——大学生理想分期贷款服务平台"></a><img src="../images/videolog.png">
                </div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="layout1200 clearfix">
               
            </div>
        </div>
    </div>
    <!-- end header -->

    <!-- begin menu -->
   
        </div>
    </div>
    <!-- end menu -->    
    
    
	
	
	
	<div class="pay-box">
<div class="pay-wrap">
<div class="pay-main">
	
	
	<br><br><br><br>
	<div class="pay-grid">
				 <h3 class="pay-method">&nbsp;视频认证</h3><br>
				</div>
				 <div class="hrStyle"></div>
				<div class="pay-grid"><br><br>
					<p class="pay-font"><font color="#FF7F00"><strong>为了确认您看过协议内容以及防止他人冒名顶替，我们将对您进行视频认证，视频内容只在您收到贷款本金当日起生效</strong></font></p>
	 
	
	<br><br>
	<p class="pay-font">操作步骤及注意事项：</p>
	<p class="pay-font">1.在录制视频前请检查设备的摄像头和麦克风是否正常，确保正常后在flash对话框中点击“允许”（若无法使用flash请下载最新版）</p>
	<p class="pay-font">2.请正对摄像头，在80秒倒计时内用普通话大声清晰朗读完以下视频签约文字。</p>
	<p class="pay-font">3.考虑网络延时，请在朗读完后停留3-5秒，再点击停止录像</p>
	<p class="pay-font">4.录制完成后点击下方”确定“提交视频认证即可。</p>
		</div>
		
			<div class="videobox"><div class="ziti2 ">&nbsp;&nbsp;我是张三，学号000000，身份证号是0000000000000000，我于2016年03月27日与微贷吧签订《微贷吧贷款信用担保协议》，对于上述协议的各条款内容，本人均已认证阅读，理解并自愿遵守执行，根据信用担保协议，我已收到微贷吧的贷款本金，共计人民币2000元。</div></div>
					<div class="hrStyle"></div>
<br><br>
					<div class="pay-grid">
				
					
					 <div id="altContent">


<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"
WIDTH="650" HEIGHT="450" id="myMovieName">
<PARAM NAME=movie VALUE="avatar.swf">
<PARAM NAME=quality VALUE=high>
<PARAM NAME=bgcolor VALUE=#FFFFFF>
<param name="flashvars" value="imgUrl=./default.jpg&uploadUrl=./upfile.jsp&uploadSrc=false" />
<EMBED src="../avatar.swf" quality=high bgcolor=#FFFFFF WIDTH="650" HEIGHT="450" wmode="transparent" flashVars="imgUrl=../images/m1.jpg&uploadUrl=./upfile.jsp&uploadSrc=false"
NAME="myMovieName" ALIGN="" TYPE="application/x-shockwave-flash" allowScriptAccess="always"
PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer">
</EMBED>
</OBJECT>
 

  </div>

  <div id="avatar_priview"></div>
					
					
					
					
		
<br><br><br>
</div>

	
<br><br>

	
	

    <!-- begin footer -->
    <div class="footer">
        <div class="layout1200">
            <div class="clearfix">
            <div class="fl bdLine">
                <ul class="fl unit ml15" style="width:120px">
                    <li class="first"><em>微贷吧</em></li>
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
                   <li class="first"><em>手机微贷吧</em></li>
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
	
        
        
        <script src="../js/list.js"></script>
       <!--  头部下拉列表js -->
   <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
<script type="text/javascript">
requirejs(['../js/detail.js?v=20150915']);
</script> 
<div id="userdata_el" _oklj_uj="4UTX7O3REAERDF6A" style="visibility: hidden; position: absolute;"></div></body></html>