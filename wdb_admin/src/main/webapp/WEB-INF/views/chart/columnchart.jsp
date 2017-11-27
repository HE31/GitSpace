 
 <%@ page language="java" pageEncoding="UTF-8"%>
 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://zlzkj.com/tags" prefix="z" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>“微”系列产品销售额统计</title>
        <link type="text/css" rel="stylesheet" href="${__static__}/css/main.css" >
        <script type="text/javascript" src="${__static__}/js/jquery.js"></script>
        <script src="${__static__}/js/highcharts.js"></script>
        <script src="${__static__}/js/highcharts-3d.js"></script>
		<script src="${__static__}/js/exporting.js"></script>
 <style type="text/css">
#container, #sliders {
    min-width: 310px; 
    max-width: 800px;
    margin: 0 auto;
}
#container {
    height: 400px; 
}
		</style>
		<script type="text/javascript">
$(function () {
var xtext = [];
 var browsers = [];
 
 
   $.ajax({
                    type:"GET",
                    dataType:"json",
                    url:'${pageContext.request.contextPath}/chart/columnchart2',
                    success:function(data){
                    console.log(data);
                    //alert(data);
                        
                     
                        //迭代，把异步获取的数据放到数组中
                         $.each(data,function(i,d){
                   
                       if(d.FunctionId=="1"){
                        xtext.push(["微分期"]);
                        
                         browsers.push([d.sumprice]);
                       }if( d.FunctionId=="2"){
                        xtext.push(["微贷款"]);
                        browsers.push([d.sumprice]);
                       }if( d.FunctionId=="3"){
                        xtext.push(["微未来"]);
                        browsers.push([d.sumprice]);
                       }if( d.FunctionId=="4"){
                        xtext.push(["微拼团"]);
                        browsers.push([d.sumprice]);
                       }if( d.FunctionId=="5"){
                        xtext.push(["微生活"]);
                        browsers.push([d.sumprice]);
                       }
                           
                            
                        }); 
                        //设置数据
                        chart.series[0].setData(browsers);  
                    },
                    error:function(e){
                        alert(e);
                    }
                });

    // Set up the chart
    var chart = new Highcharts.Chart({
        chart: {
            renderTo: 'container',
            type: 'column',
            options3d: {
                enabled: true,
                alpha: 15,
                beta: 15,
                depth: 50,
                viewDistance: 25
            }
        },
        title: {
            text: '“微”系列产品销售额统计'
        },
        subtitle: {
            text: ''
        },
		
		 xAxis: {
            categories: xtext
        },
         yAxis: {  
         /*  tickInterval: 200,  //自定义刻度  
          max:1000,//纵轴的最大值  
          min: 0,//纵轴的最小值   */
            title: {//纵轴标题  
                text: '万元'  
            },  
			}, 
        plotOptions: {
            column: {
                depth: 25
            }
        },
        series: [{
		
          name:'销售额（万元）'
        }]
    });

    function showValues() {
        $('#alpha-value').html(chart.options.chart.options3d.alpha);
        $('#beta-value').html(chart.options.chart.options3d.beta);
        $('#depth-value').html(chart.options.chart.options3d.depth);
    }

    // Activate the sliders
    $('#sliders input').on('input change', function () {
        chart.options.chart.options3d[this.id] = this.value;
        showValues();
        chart.redraw(false);
    });

    showValues();
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
    <li><a href="#">"微"系列产品销售额统计图 </a></li>
    </ul>
    </div>
    <!--  图表的呈现区域，和常规图表选项设置中的renderTo: 'container'对应-->
    
  <div id="container"></div>
<div id="sliders">
    <table>
        <tr>
        	<td>Alpha Angle</td>
        	<td><input id="alpha" type="range" min="0" max="45" value="15"/> <span id="alpha-value" class="value"></span></td>
        </tr>
        <tr>
        	<td>Beta Angle</td>
        	<td><input id="beta" type="range" min="-45" max="45" value="15"/> <span id="beta-value" class="value"></span></td>
        </tr>
        <tr>
        	<td>Depth</td>
        	<td><input id="depth" type="range" min="20" max="100" value="50"/> <span id="depth-value" class="value"></span></td>
        </tr>
    </table>
</div>
	</div>
	</div>
	</div>
	<div class="bottom"></div>
<div id="footer"><p>微你而生后台管理系统</p></div>
    </body>
</html>
 