 
 <%@ page language="java" pageEncoding="UTF-8"%>
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://zlzkj.com/tags" prefix="z" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>”微你而生“近一年各类型产品销量统计</title>
        <link type="text/css" rel="stylesheet" href="${__static__}/css/main.css" >
        <script type="text/javascript" src="${__static__}/js/jquery.js"></script>
        <script src="${__static__}/js/highcharts.js"></script>
        <script src="${__static__}/js/highcharts-3d.js"></script>
		<script src="${__static__}/js/exporting.js"></script>
       <script type="text/javascript">
$(function () {
 var xtext = [];
 var browser1 = [];
 var browser2 = [];
 var browser3 = [];
 var browser4 = [];
 var browser5 = [];
 
 
   $.ajax({
                    type:"GET",
                    dataType:"json",
                    url:'${pageContext.request.contextPath}/chart/linechart2',
                    success:function(data){
                    console.log(data);
                    //alert(data);
                        
                     
                        //迭代，把异步获取的数据放到数组中
                         $.each(data,function(i,d){
                   
                       if(d.FunctionId=="1"){
                     
                         browser1.push(d.jan,d.feb,d.mar,d.apr,d.may,d.jun,d.jul,d.aug,d.sept,d.oct,d.nov,d.dece);
                       }if( d.FunctionId=="2"){
                        
                          browser2.push(d.jan,d.feb,d.mar,d.apr,d.may,d.jun,d.jul,d.aug,d.sept,d.oct,d.nov,d.dece);
                       }if( d.FunctionId=="3"){
                       
                          browser3.push(d.jan,d.feb,d.mar,d.apr,d.may,d.jun,d.jul,d.aug,d.sept,d.oct,d.nov,d.dece);
                       }if( d.FunctionId=="4"){
                       
                         browser4.push(d.jan,d.feb,d.mar,d.apr,d.may,d.jun,d.jul,d.aug,d.sept,d.oct,d.nov,d.dece);
                       }if( d.FunctionId=="5"){
                       
                          browser5.push(d.jan,d.feb,d.mar,d.apr,d.may,d.jun,d.jul,d.aug,d.sept,d.oct,d.nov,d.dece);
                       }
                         
                       
                            
                        }); 
                        //设置数据
                        chart.series[0].setData(browser1);  
                        chart.series[1].setData(browser2);  
                        chart.series[2].setData(browser3);  
                        chart.series[3].setData(browser4);  
                        chart.series[4].setData(browser5);  
                         
                    
                    },
                    error:function(e){
                        alert(e);
                    }
                }); 

     var chart = new Highcharts.Chart({
        chart: {
         renderTo: 'container',
            type: 'line'
        },
        title: {
            text: '”微你而生“近一年各类型产品销量统计'
        },
        subtitle: {
            text: ''
        },
        xAxis: {
            categories: ['2016.01', '2016.02', '2016.03', '2016.04', '2016.05', '2016.06', '2016.07', '2016.08', '2016.09', '2016.10', '2016.11','2016.12']
        },
        yAxis: {
		/*  tickInterval: 200,  //自定义刻度  
          max:1000,//纵轴的最大值  
          min: 0,//纵轴的最小值   */
            title: {
                text: '单位：万元'
            }
        },
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true
                },
                enableMouseTracking: false
            }
        },
        series: [{
            name: '微分期',
           /*  data: [85.5, 99.2, 180, 189.5, 550.4, 553.4, 421.7, 226.5, 123.3, 188.3, 139.9, 180.6]  */
        }, {
            name: '微未来',
          /*   data: [75.5, 69.2, 190, 139.5, 250.4, 353.4, 421.7, 526.5, 423.3, 388.3, 139.9, 100.6] */
        },
		    {
            name: '微拼团',
            /* data: [56.7, 43.2, 56.3,89.5, 150.4, 200.4, 239.7, 542.5, 423.3, 388.3, 39.9, 100.6] */
        },
		{
            name: '微贷款',
            /* data: [66.7, 93.2, 86.3,89.5, 90.4, 100.4, 139.7, 242.5, 323.3, 388.3, 391.9, 200.6] */
        },
		{
		name: '微生活',
          /*   data: [106.7, 193.2, 186.3,189.5, 190.4, 100.4, 139.7, 242.5, 323.3, 488.3, 291.9, 300.6] */
        } 
		]
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
    <li><a href="#">”微你而生“近一年各类型产品销量统计
</a></li>
    </ul>
    </div>
    <!--  图表的呈现区域，和常规图表选项设置中的renderTo: 'container'对应-->
    
<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	</div>
	</div>
	</div>
	<div class="bottom"></div>
<div id="footer"><p>微你而生后台管理系统</p></div>
    </body>
</html>
 