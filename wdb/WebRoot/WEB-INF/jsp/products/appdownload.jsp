<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>App下载</title>

<link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="../css/appdownload.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="The Lab Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Asap:400,700,400italic,700italic' rel='stylesheet' type='text/css'>

<link rel="stylesheet" type="text/css" href="../css/base.css">

<link rel="icon" href="../images/icon_wdb.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="../images/icon_wdb.ico" type="image/x-icon" />


</head>
<body>

 <div class="clearfix header-help-tel">
        <div class="layout1200">
            <div class="fl fs12">
            欢迎来到微你而生</div>
            <div class="fr fs12">
                <a class="fl mr20" href="/helpcenter.html" target="_blank">帮助中心</a>
                <span class="fl mr20">咨询热线：888-8888-8888</span>
                <span class="fl orange-color hand" id="J_Report">我要举报</span></div>
        </div>
    </div>
    <!-- end topbar -->    <!-- begin header -->
    <div id="header">
        <div class="header-top">
            <div class="layout1200">
                <div class="clearfix">
                    <a class="fl header-logo" href="/" title="爱学贷,最受大学生欢迎的分期消费品牌"></a>
                    <div class="fr header-search">
                        <form class="clearfix header-search-box" action="${pageContext.request.contextPath }/products/productsSearch.action" method="get" target="_blank">
                            <input type="text" class="fl header-search-input" id="text" name="text" placeholder="同学们都在热搜 iphone6s" value="" />
                            <input type="submit" class="fl block header-search-btn bigfs" value="搜索" />
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

                    <a class="fl  " href="${pageContext.request.contextPath }/products/productsList.action">微分期</a>
                    <a class="fl " href="${pageContext.request.contextPath }/products/loan.action">微贷款</a> 
					 <a class="fl " href="${pageContext.request.contextPath }/products/travel.action">微拼团</a>
					  <a class="fl " href="${pageContext.request.contextPath }/products/train.action">微未来</a>
                    <a class="fl current" href="${pageContext.request.contextPath }/products/appdownload.action">App下载</a> 
                    <a class="fl " href="/merchantintroduce.html">客服中心</a>
                    
                </div>
				
				  <div class="header-user-box fr">
	                <a class="fl mr5" href="/goreg.html">注册</a> 
	                <a class="fl ml10 split" href="/login.html">登录</a>
                    <a class="fl ml15 go-paypage-btn" href="/login.html?url=/mall/bill/order/creditBillDetail.html">我要还款</a>                 
               </div>
            </div>
        </div>
    </div>
	
	
	
	
                  
            

	<!-- header-section-starts -->
	<div class="appheader">
		<div class="container">
			<div class="top-header">
				
			</div>
			<div class="header-info">
				<div class="col-md-7 header-info-left">
					<h1>用心服务，<br> 打造美好大学生活</h1>
					<p>微你而生，大学生理想分期消费服务平台 </p>
					<a href="#" class="btn btn-primary btn-normal btn-inline " target="_self">Android下载</a>
					<div class="social-networks">
						
						<div class="right">
						<div class="facebook"><div id="fb-root"></div>
							
							<div id="fb-root"></div>
							</div>
							<script>(function(d, s, id) {
							  var js, fjs = d.getElementsByTagName(s)[0];
							  if (d.getElementById(id)) return;
							  js = d.createElement(s); js.id = id;
							  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
							  fjs.parentNode.insertBefore(js, fjs);
							}(document, 'script', 'facebook-jssdk'));</script>
	   						
	   						<div class="fb-like" data-href="https://www.facebook.com/w3layouts" data-layout="button_count" data-action="like" data-show-faces="true" data-share="false"></div>
							
					<div class="twitter">	
						<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
					</div>
					</div>
					<div class="clearfix"></div>
					</div>
					</div>
				</div>
				<div class="col-md-5 header-info-right text-center">
					<img src="../images/mobile.png" alt="" />
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="content">
		<div class="top-row-grids">
			<div class="container">
				<div class="col-md-4 top-row-grid text-center">
					<img src="../images/p1.jpg" alt="" />
					<h3>5.5 </h3>
					<p>space trips</p>
				</div>
				<div class="col-md-4 top-row-grid text-center">
					<img src="../images/p2.jpg" alt="" />
					<h3>500+  </h3>
					<p>magic potions</p>
				</div>
				<div class="col-md-4 top-row-grid text-center">
					<img src="../images/p3.jpg" alt="" />
					<h3>What</h3>
					<p>does this button do ?</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="middle-row">
			<div class="container">
				<div class="middle-top-row">
					<div class="col-md-6 middle-top-left-row-grid text-center">
						<img src="../images/m1.jpg" alt="" />
					</div>
					<div class="col-md-6 middle-top-right-grid">
						<h3>One Lonely Ginger</h3>
						<p>One lonely ginger tried to learn french over night, but he f*ked up and now he speaks only about eggs and cheese. </p>
						<div class="about">
							<p>My name is Mandark and I am Dexter's rival. He and I have been competing in science and other things for years and this race is just one more of those things where we try to beat each other, except I try to win by being sneaky and bad!</p>
							<div class="person">
								<img src="../images/person.png" alt="" />
							</div>
							<a href="#">Mandark, </a><a href="#">Dexter’s rival</a>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="middle-bottom-row">
					<div class="col-md-6 middle-bottom-left-row-grid">
						<h3>Fighting for Power</h3>
						<p>In a world where nobody understands him and his brilliant mind. Dexter is the first ginger we ever fell in love with, he is the original developer of evil deeds.</p>
						<a href="#" class="btn btn-primary btn-normal btn-inline " target="_self">Le’ Download</a>
					</div>
					<div class="col-md-6 middle-bottom-right-row-grid text-center">
						<img src="../images/m2.jpg" alt="" />
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="bottom-row">
			<div class="container">
				<div class="col-md-4 bottom-row-grid text-center">
					<img src="../images/b1.jpg" alt="" />
					<h3>Dexter</h3>
					<h6>“ the genius ”</h6>
					<p>Dexter is an extremely intelligent boy (a self described "Boy Genius") who has been creating fantastic inventions since he was a baby. He considers Albert Einstein to be his greatest influence. He is normally in conflict with his sweet 15-year-old sister Dee Dee. Dexter, though highly intelligent, often fails at what he has set out to do</p>
					<a href="#">+ more</a>
				</div>
				<div class="col-md-4 bottom-row-grid text-center">
					<img src="../images/b2.jpg" alt="" />
					<h3>Dee Dee</h3>
					<h6>“ the sister ”</h6>
					<p>Dee Dee is Dexter's extremely ditzy, simple-minded, energetic, hyperactive older sister, who inexplicably makes "squishy" sounds with her feet on every step. She usually, in one way or another, sabotages his experiments and destroys the lab every time.</p>
					<a href="#">+ more</a>
				</div>
				<div class="col-md-4 bottom-row-grid text-center">
					<img src="../images/b3.jpg" alt="" />
					<h3>Mandark</h3>
					<h6>“ the rival ”</h6>
					<p>Dexter's arch-nemesis. Approximately equal in intelligence to Dexter, he too possesses his own laboratory, which has a very black-and-red color scheme to make it look more evil and may be organic-based. It also is sphere shaped, opposing the design of Dexter's Laboratory. </p>
					<a href="#">+ more</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="yellow-strip text-center">
			<div class="container">
				<h3>If you’re watching this, than don’t be a dick. Share & Like :)<a href="#"><img src="../images/dribble.jpg" alt="" /></a></h3>
			</div>
		</div>
		<div class="contact-section">
			<div class="container">
				<div class="col-md-4 grid_1_of_3">
					<div class="icon">
						<img src="../images/icon1.jpg" alt="" />
					</div>
					<div class="icon-data">
						<a class="mail" href="mail-to:example@gmail.com">info@balkan-brothers.com</a>
						<a href="mail-to:example@gmail.com">filip.justic91@gmail.com</a>
						<a href="mail-to:example@gmail.com">matej.justic@gmail.com</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 grid_1_of_3">
					<div class="icon">
						<img src="../images/location.jpg" alt="" />
					</div>
					<div class="icon-data">
						<h3>Island Krk, Croatia<h3>
						<p>We are located on a sunny <br>little island in the <br>Mediterranean.</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 grid_1_of_3">
					<div class="icon">
						<img src="../images/skype.jpg" alt="" />
					</div>
					<div class="icon-data">
						<h3>matej.justic</h3>
						<a href="#">filip.justic</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="container">
			<div class="copyright text-center">
					<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
			</div>
		</div>
	</div>
</body>
</html>