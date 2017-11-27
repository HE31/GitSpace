package com.zlzkj.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zlzkj.app.model.WdbCustomers;
import com.zlzkj.app.service.CustomerService;
import com.zlzkj.app.service.OrderService;
import com.zlzkj.core.base.BaseController;
import com.zlzkj.core.sql.Row;

@Controller
@RequestMapping("/chart")
public class ChartController extends BaseController {
	@Autowired
	private CustomerService customerService;
	@Autowired
	private OrderService orderService;
	@RequestMapping(value={"/piechart2"})
	public @ResponseBody List<Row> PieChart(HttpServletRequest request)throws Exception {
		List<Row> chartData = orderService.findPieChart();
		System.out.println(chartData.get(0));
		return chartData;
	}
	
	@RequestMapping(value={"/piechart"})
	public String aa()throws Exception {
	
		return "chart/piechart";
	}

	
	
	@RequestMapping(value={"/columnchart2"})
	public @ResponseBody List<Row> columnChart(HttpServletRequest request)throws Exception {
		List<Row> chartData = orderService.findColumnChart();
		System.out.println(chartData.get(0));
		
		return chartData;
	}
	
	@RequestMapping(value={"/columnchart"})
	public String columnchart2()throws Exception {
	
		return "chart/columnchart";
	}
	
	
	@RequestMapping(value={"/circlechart2"})
	public @ResponseBody List<Row> circleChart(HttpServletRequest request,Integer customerid)throws Exception {
		System.out.println("�û���ţ�"+customerid);
		List<Row> chartData = orderService.findCircleChart(customerid);
		//��ȡkey��CustNick������Ӧvalue
		System.out.println(chartData.get(0).get("CustNick"));
		return chartData;
	}
	
	@RequestMapping(value={"/circlechart"})
	public String clrclechart2(Integer customerid,Model model)throws Exception {

		//����customerid��ѯcustnick��������model����circlechart.jsp����(��Ϊ@ResponseBody��model����ͬʱʹ��)
		WdbCustomers wdbCustomers=customerService.findCustmerById(customerid);
		model.addAttribute("custnick",wdbCustomers.getCustnick());
		//��ȡ�û��б�ҳ�������û�������ֵ��circlechart.jspҳ�棬��ajax��url�л�ȡ�ò���
		model.addAttribute("customerid", customerid);
		return "chart/circlechart";
	}
	
	
	
	
	@RequestMapping(value={"/linechart"})
	public String linechart()throws Exception {
	
		return "chart/linechart";
	}
	
	@RequestMapping(value={"/linechart2"})
	public @ResponseBody List<Row> lineChart(HttpServletRequest request)throws Exception {
		List<Row> chartData = orderService.findlinecolumn();
		System.out.println(chartData.get(0));
		
		return chartData;
	}
	
	@RequestMapping(value={"/groupcolumn"})
	public String groupcolumnchart2( Model model)throws Exception {
		List<Row> timesData = orderService.findgroupcolumn();
		model.addAttribute("timesData", timesData);
		return "chart/groupcolumn";
	}
	
	/*@RequestMapping(value={"/groupcolumn3"})
	public @ResponseBody List<Row> groupcolumn3( Model model,HttpServletRequest request)throws Exception {
		List<Row> timesData = orderService.findgroupcolumn();
		model.addAttribute("timesData", timesData);
		System.out.println(timesData.get(0));
		
		return timesData;
	}*/
	
	
	@RequestMapping(value={"/schoolcolumn"})
	public String schoolcolumnchart()throws Exception {
	
		return "chart/schoolcolumn";
	}
	
	
	
		@RequestMapping(value={"/test"})
	public String test()throws Exception {
	
		return "chart/test";
	}
	
}
