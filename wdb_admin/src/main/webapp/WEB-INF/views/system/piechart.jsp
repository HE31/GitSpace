 
 <%@ page language="java" pageEncoding="UTF-8"%>
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://zlzkj.com/tags" prefix="z" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>2017"微"系列产品销售统计饼状图</title>
        <link type="text/css" rel="stylesheet" href="${__static__}/css/main.css" >
        <script type="text/javascript" src="${__static__}/js/jquery.js"></script>
        <script src="${__static__}/js/highcharts.js"></script>
        <script src="${__static__}/js/highcharts-3d.js"></script>
		<script src="${__static__}/js/exporting.js"></script>
        <script type="text/javascript">
            $(function () {
               var chart;
                $(document).ready(function() {
                 
                //alert(1);
                    chart = new Highcharts.Chart({
                        //常规图表选项设置
                        chart: {
                            renderTo: 'container',        //在哪个区域呈现，对应HTML中的一个元素ID
                            plotBackgroundColor: null,    //绘图区的背景颜色
                            plotBorderWidth: null,        //绘图区边框宽度
                            plotShadow: false   ,
                             options3d: {
                enabled: true,
                alpha: 45,
                beta: 0
            }         //绘图区是否显示阴影            
                        },
                        
                        //图表的主标题
                        title: {
                            text: '2017"微"系列产品销售统计饼状图'
                        },
                        //当鼠标经过时的提示设置
                        tooltip: {
                        /*     pointFormat: '{series.name}: <b>{point.percentage}%</b>',
                            percentageDecimals: 1 */
                              formatter: function() {
            return '<b>'+ this.point.name +'</b>: '+ Highcharts.numberFormat(this.percentage, 1) +'% (数量：'+
                         Highcharts.numberFormat(this.y, 0, ',') +')';//显示数量和所占百分比
         }
                        },
                        //每种图表类型属性设置
                        plotOptions: {
                            //饼状图
                            pie: {
                                allowPointSelect: true,
                                cursor: 'pointer',
                                depth:65,
                                dataLabels: {
                                enabled: true,
                                color: '#000000',
                                connectorColor: '#000000',
                                formatter: function() {
                                Highcharts.numberFormat(this.percentage,2);//格式化数字，保留2位精度
                                return '<b>'+ this.point.name +'</b>: '+Highcharts.numberFormat(this.percentage,2) +' %';
                                    }
                                }
                            }
                        },
                           //图表要展现的数据
                        series: [{
                            type: 'pie',
                            name: '市场份额'
                        }]
                    });
                });
                
                //异步请求数据
                $.ajax({
                    type:"GET",
                    dataType:"json",
                    url:'${pageContext.request.contextPath}/chart/piechart2',//提供数据的Servlet
                    success:function(data){
                    console.log(data);
                    //alert(data);
                        //定义一个数组
                        var browsers = [];
                        //迭代，把异步获取的数据放到数组中
                         $.each(data,function(i,d){
                   
                       if(d.FunctionId=="1"){
                        browsers.push(["微分期",d.functionidcount]);
                       }if( d.FunctionId=="2"){
                        browsers.push(["微贷款",d.functionidcount]);
                       }if( d.FunctionId=="3"){
                        browsers.push(["微未来",d.functionidcount]);
                       }if( d.FunctionId=="4"){
                        browsers.push(["微拼团",d.functionidcount]);
                       }if( d.FunctionId=="5"){
                        browsers.push(["微生活",d.functionidcount]);
                       }
                           
                            
                        }); 
                        //设置数据
                        chart.series[0].setData(browsers);  
                    },
                    error:function(e){
                        alert(e);
                    }
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
    <li><a href="#">2017"微"系列产品销售统计饼状图
</a></li>
    </ul>
    </div>
    <!--  图表的呈现区域，和常规图表选项设置中的renderTo: 'container'对应-->
    
    <div id="container" style="min-width: 650px; height: 650px; margin-top:50px;"></div>
	</div>
	</div>
	</div>
	<div class="bottom"></div>
<div id="footer"><p>大学生信用生活服务平台后台管理系统</p></div>
    </body>
</html>
 