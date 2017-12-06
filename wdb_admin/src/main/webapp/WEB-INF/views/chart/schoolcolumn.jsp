 
 <%@ page language="java" pageEncoding="UTF-8"%>
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://zlzkj.com/tags" prefix="z" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>截至2017年“微你而生”在杭州市内各大高校用户量统计</title>
        <link type="text/css" rel="stylesheet" href="${__static__}/css/main.css" >
        <script type="text/javascript" src="${__static__}/js/jquery.js"></script>
        <script src="${__static__}/js/highcharts.js"></script>
        <script src="${__static__}/js/highcharts-3d.js"></script>
		<script src="${__static__}/js/exporting.js"></script>
    	<script type="text/javascript">
$(function () {
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: '截至2017年“微你而生”在杭州市内各大高校用户量统计 '
        },
        subtitle: {
            text: ''
        },
        xAxis: {
            type: 'category',
            labels: {
                rotation: -45,
                style: {
                    fontSize: '13px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        },
        yAxis: {
            min: 0,
         max:10000,
            title: {
                text: '用户量 '
            }
        },
        legend: {
            enabled: false
        },
        tooltip: {
            pointFormat: '截止2017年9月: <b>{point.y:.1f} 人</b>'
        },
        series: [{
            name: 'Population',
            data: [
                ['浙江大学', 5374],
                ['浙江工业大学', 3601],
                ['杭州电子科技大学', 5482],
                ['浙江理工大学', 6490],
                ['浙江工商大学', 5275],
                ['浙江财经大学', 7291],
                ['杭州师范大学', 8128],
                ['中国计量大学', 6137],
                ['浙江中医学院', 7151],
                ['浙江教育学院', 5611],
                ['浙江广播电视大学', 4075],
                ['中国美术学院', 6094],
                ['杭州广播电视大学', 4010],
                ['浙江树人大学', 5923],
                ['浙江传媒学院', 6723],
                ['浙江大学城市学院', 5920],
                ['浙江警官学院', 4869],
                ['浙江水利水电专科学院', 5589],
                ['浙江交通职业技术学院 ', 4289],
                ['浙江同济科技职业学院 ', 5289],
				['浙江机电职业技术学院 ', 6289],
				[' 浙江建设职业技术学院', 4289],
				[' 浙江艺术职业学院 ', 5289],
				['浙江经贸职业技术学院 ', 6589],
				[' 浙江商业职业技术学院 ', 4389],
				[' 浙江经济职业技术学院', 6839],
				['浙江旅游职业学院  ', 4389],
				[' 浙江育英职业技术学院 ', 4389],
				['浙江警官职业学院 ', 5389],
				[' 浙江金融职业学院 ', 6389],
				[' 杭州职业技术学院  ', 7389],
				[' 浙江医学高等专科学校  ', 6339],
				[' 浙江长征职业技术学院  ', 5389],
				[' 杭州万向职业技术学院  ', 5389]
				
            ],
            dataLabels: {
                enabled: true,
                rotation: -90,
                color: '#FFFFFF',
                align: 'right',
                format: '{point.y:.1f}', // one decimal
                y: 10, // 10 pixels down from the top
                style: {
                    fontSize: '13px',
                    fontFamily: 'Verdana, sans-serif'
                }
            }
        }]
    });
});
		</script>
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
    <li><a href="#">截至2017年“微你而生”在杭州市内各大高校用户量统计 </a></li>
    </ul>
    </div>
    <!--  图表的呈现区域，和常规图表选项设置中的renderTo: 'container'对应-->

<div id="container" style="min-width: 300px; height: 500px; margin: 0 auto"></div>
	</div>
	</div>
	</div>
	<div class="bottom"></div>
<div id="footer"><p>大学生信用生活服务平台后台管理系统</p></div>
    </body>
</html>
 