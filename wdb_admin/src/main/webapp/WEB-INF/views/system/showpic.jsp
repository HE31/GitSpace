 
 <%@ page language="java" pageEncoding="UTF-8"%>
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://zlzkj.com/tags" prefix="z" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>微你而生后台管理系统</title>
        <link type="text/css" rel="stylesheet" href="${__static__}/system/css/public.css" >
        <script type="text/javascript" src="${__static__}/js/jquery.js"></script>
        <script src="${__static__}/system/js/global.js"></script>
    </head>
    <body>
    
<div class="top"></div>
<div id="header">
  <jsp:include page="../public/top.jsp"></jsp:include>
</div>
<div id="content">
	<!-- <div class="left_menu"> -->
		
   <jsp:include page="../public/left.jsp"></jsp:include> 
		<!-- </div> -->
		 <div class="m-right">
			<div class="right-nav">
					<%--   <ul>
							<li><img src="${__static__}/images/home.png"></li>
								<li style="margin-left:25px;">您当前的位置：</li>
								<li><a href="#">首页</a></li>
								<li></li>
								<li><a href="#">订单列表</a></li>
						</ul> --%>
			</div>  
			<div class="main">
				<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">数据统计</a></li>
    <li><a href="#">2016"微"系列产品销售统计饼状图
</a></li>
    </ul>
    </div>
   <div id="dcMain">
   <!-- 当前位置 -->
<div id="urHere">DouPHP 管理中心<b>></b><strong>首页幻灯广告</strong> </div>   <div class="mainBox imgModule">
    <h3>首页幻灯广告</h3>
    <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
    <tr>
       <th>添加幻灯</th>
       <th>幻灯列表</th>
     </tr>
     <tr>
      <td width="350" valign="top">
       <form action="show.php?rec=insert" method="post" enctype="multipart/form-data">
        <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableOnebor">
         <tr>
          <td><b>幻灯名称</b>
<input type="text" name="show_name" value="" size="20" class="inpMain" />
          </td>
         </tr>
         <tr>
          <td><b>幻灯图片</b>
           <input type="file" name="show_img" class="inpFlie" />          </td>
         </tr>
         <tr>
          <td><b>链接地址</b>
           <input type="text" name="show_link" value="" size="40" class="inpMain" />
          </td>
         </tr>
         <tr>
          <td><b>排序</b>
<input type="text" name="sort" value="50" size="20" class="inpMain" />
          </td>
         </tr>
         <tr>
          <td>
                      <input type="hidden" name="token" value="79db104d" />
           <input name="submit" class="btn" type="submit" value="提交" />
          </td>
         </tr>
        </table>
       </form>
      </td>
      <td valign="top">
       <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableOnebor">
        <tr>
         <td width="100">幻灯名称</td>
         <td></td>
         <td width="50" align="center">排序</td>
         <td width="80" align="center">操作</td>
        </tr>
                <tr>
         <td><a href="http://www.weiqing.com/data/slide/20130514acunau.jpg" target="_blank"><img src="http://www.weiqing.com/data/slide/thumb/20130514acunau_thumb.jpg" width="100" /></a></td>
         <td>广告图片01</td>
         <td align="center">1</td>
         <td align="center"><a href="editshow.html?id=1">编辑</a> | <a href="delshow.htmlid=1">删除</a></td>
        </tr>
                <tr>
         <td><a href="http://www.weiqing.com/data/slide/20130514rjzqdt.jpg" target="_blank"><img src="http://www.weiqing.com/data/slide/thumb/20130514rjzqdt_thumb.jpg" width="100" /></a></td>
         <td>广告图片02</td>
         <td align="center">2</td>
         <td align="center"><a href="editshow.html?id=2">编辑</a> | <a href="delshow.htmlid=2">删除</a></td>
        </tr>
                <tr>
         <td><a href="http://www.weiqing.com/data/slide/20130514xxsctt.jpg" target="_blank"><img src="http://www.weiqing.com/data/slide/thumb/20130514xxsctt_thumb.jpg" width="100" /></a></td>
         <td>广告图片03</td>
         <td align="center">3</td>
         <td align="center"><a href="editshow.html?id=3">编辑</a> | <a href="delshow.htmlid=3">删除</a></td>
        </tr>
                <tr>
         <td><a href="http://www.weiqing.com/data/slide/20130523hiqafl.jpg" target="_blank"><img src="http://www.weiqing.com/data/slide/thumb/20130523hiqafl_thumb.jpg" width="100" /></a></td>
         <td>广告图片04</td>
         <td align="center">4</td>
         <td align="center"><a href="editshow.html?id=4">编辑</a> | <a href="delshow.htmlid=4">删除</a></td>
        </tr>
               </table>
      </td>
     </tr>
    </table>
   </div>
 </div>
	</div>
	</div>
	</div>
	<div class="bottom"></div>
<div id="footer"><p>微你而生后台管理系统</p></div>
    </body>
</html>
 