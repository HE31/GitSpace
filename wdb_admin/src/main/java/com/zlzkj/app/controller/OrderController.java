package com.zlzkj.app.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zlzkj.app.service.OrderService;
import com.zlzkj.app.util.CoreUtils;
import com.zlzkj.app.util.Page;
import com.zlzkj.core.base.BaseController;
import com.zlzkj.core.sql.Row;


@Controller
@RequestMapping("/order")
public class OrderController extends BaseController{
	@Autowired
	private OrderService orderService;
	@RequestMapping("/orderlist")
public String orderlist(Model model,HttpServletRequest request)throws Exception {
		/*List<Row> wdbOrders = orderService.findOrdersList();*/
		
		
		String strPage = request.getParameter("page");
		Integer page = 1;
		Integer rows = 13;
		if(strPage!=null)
			page = Integer.parseInt(strPage);
		Integer count= (Integer) orderService.findOrdersListcount();
		List<Row> wdbOrders =  orderService.findOrdersListPage((page-1)*rows, rows);
	
		model.addAttribute("page",new Page(page,rows,count,wdbOrders));
		
		//分页url参数处理
		Map<String, String[]> map = request.getParameterMap();
		String str = CoreUtils.formatUrl(map);
		//指定视图
		model.addAttribute("strParam",str);
		return "order/orderlist";
	}
	@RequestMapping("/statusChange")
	public String  orderstatus(Model model,HttpServletRequest request,String ordernumber,Integer orderStatus)throws Exception {
		orderStatus=Integer.valueOf(request.getParameter("orderstatus"));
		orderService.updateOrderStatus(ordernumber, orderStatus);
		
		return "redirect:orderlist.action";
	}
	
	@RequestMapping("/ordertype")
	public String OrderType(HttpServletRequest request,Integer orderStatus,Model model)throws Exception {
		orderStatus=Integer.valueOf(request.getParameter("orderStatus"));
		model.addAttribute("orderStatus",orderStatus);	
		String strPage = request.getParameter("page");
		Integer page = 1;
		Integer rows = 13;
		if(strPage!=null)
			page = Integer.parseInt(strPage);
		Integer count= orderService.findOrderType(orderStatus);
		List<Row> wdbOrders=orderService.findOrderTypePage(orderStatus,(page-1)*rows, rows);	
		
		System.out.println(count+"总条数");
		model.addAttribute("page",new Page(page,rows,count,wdbOrders));
		//分页url参数处理
		Map<String, String[]> map = request.getParameterMap();
		String str = CoreUtils.formatUrl(map);
		//指定视图
		model.addAttribute("strParam",str);
		
		
		return "order/ordertype";
	}
	
	
	
	@RequestMapping("/ordersort")
	
public String ordersort(Model model,HttpServletRequest request,String sortkey,String sorttype,String tabid)throws Exception {
			
		
		
		String strPage = request.getParameter("page");
		Integer page = 1;
		Integer rows = 13;
		if(strPage!=null)
			page = Integer.parseInt(strPage);
		Integer count= (Integer) orderService.findOrdersListcount();
		List<Row> wdbOrders =  orderService.findOrdersSortPage((page-1)*rows, rows,sortkey,sorttype);
		System.out.println(wdbOrders);
		model.addAttribute("page",new Page(page,rows,count,wdbOrders));
		//用于跳转指定tab页
		model.addAttribute("tabid",tabid);
		//分页url参数处理
		Map<String, String[]> map = request.getParameterMap();
		String str = CoreUtils.formatUrl(map);
		//指定视图
		model.addAttribute("strParam",str);
		
		return "order/orderlist";
	}
	
	@RequestMapping("/typesort")
	public String typesort(Model model,HttpServletRequest request,String sortkey,String sorttype,String tabid,Integer orderStatus)throws Exception {
			/*List<Row> wdbOrders = orderService.findOrdersList();*/
		orderStatus=Integer.valueOf(request.getParameter("orderStatus"));
		model.addAttribute("orderStatus",orderStatus);
			
			String strPage = request.getParameter("page");
			Integer page = 1;
			Integer rows = 13;
			if(strPage!=null)
				page = Integer.parseInt(strPage);
			Integer count= (Integer) orderService.findOrdersListcount();
			List<Row> wdbOrders =  orderService.findTypeSortPage((page-1)*rows, rows,sortkey,sorttype,orderStatus);
			model.addAttribute("page",new Page(page,rows,count,wdbOrders));
			//用于跳转指定tab页
			model.addAttribute("tabid",tabid);
			//分页url参数处理
			Map<String, String[]> map = request.getParameterMap();
			String str = CoreUtils.formatUrl(map);
			//指定视图
			model.addAttribute("strParam",str);
			
			return "order/ordertype";
		}
	
	
	@RequestMapping("/orderclassify")
public String orderclassify(Model model,HttpServletRequest request,String times,String tabid)throws Exception {
		/*List<Row> wdbOrders = orderService.findOrdersList();*/
		System.out.println(times);
		
		String strPage = request.getParameter("page");
		Integer page = 1;
		Integer rows = 13;
		if(strPage!=null)
			page = Integer.parseInt(strPage);
		Integer count= (Integer) orderService.findOrdersListcount();
		List<Row> wdbOrders =  orderService.findOrdersClassifyPage((page-1)*rows, rows,times);
		model.addAttribute("page",new Page(page,rows,count,wdbOrders));
		model.addAttribute("tabid",tabid);
		//分页url参数处理
		Map<String, String[]> map = request.getParameterMap();
		String str = CoreUtils.formatUrl(map);
		//指定视图
		model.addAttribute("strParam",str);
		
		return "order/orderlist";
	}
	
	
	
	@RequestMapping("/typeclassify")
	public String typeclassify(Model model,HttpServletRequest request,String times,String tabid,Integer orderStatus)throws Exception {
			/*List<Row> wdbOrders = orderService.findOrdersList();*/
		orderStatus=Integer.valueOf(request.getParameter("orderStatus"));
		model.addAttribute("orderStatus",orderStatus);
			
			String strPage = request.getParameter("page");
			Integer page = 1;
			Integer rows = 13;
			if(strPage!=null)
				page = Integer.parseInt(strPage);
			Integer count= (Integer) orderService.findOrdersListcount();
			List<Row> wdbOrders =  orderService.findTypeClassifyPage((page-1)*rows, rows,times,orderStatus);
			model.addAttribute("page",new Page(page,rows,count,wdbOrders));
			model.addAttribute("tabid",tabid);
			//分页url参数处理
			Map<String, String[]> map = request.getParameterMap();
			String str = CoreUtils.formatUrl(map);
			//指定视图
			model.addAttribute("strParam",str);
			
			return "order/ordertype";
		}
	
	

	@RequestMapping("/orderrecent")
public String orderrecent(Model model,HttpServletRequest request,String times,String tabid)throws Exception {
		/*List<Row> wdbOrders = orderService.findOrdersList();*/
		System.out.println(times);
		
		String strPage = request.getParameter("page");
		Integer page = 1;
		Integer rows = 13;
		if(strPage!=null)
			page = Integer.parseInt(strPage);
		Integer count= (Integer) orderService.findOrdersListcount();
		List<Row> wdbOrders =  orderService.findOrdersRecentPage((page-1)*rows, rows,times);
		model.addAttribute("page",new Page(page,rows,count,wdbOrders));
		model.addAttribute("tabid",tabid);
		//分页url参数处理
		Map<String, String[]> map = request.getParameterMap();
		String str = CoreUtils.formatUrl(map);
		//指定视图
		model.addAttribute("strParam",str);
		
		return "order/orderlist";
	}
	
	
	
	@RequestMapping("/typerecent")
	public String typerecent(Model model,HttpServletRequest request,String times,String tabid,Integer orderStatus)throws Exception {
			/*List<Row> wdbOrders = orderService.findOrdersList();*/
		orderStatus=Integer.valueOf(request.getParameter("orderStatus"));
		model.addAttribute("orderStatus",orderStatus);
			
			String strPage = request.getParameter("page");
			Integer page = 1;
			Integer rows = 13;
			if(strPage!=null)
				page = Integer.parseInt(strPage);
			Integer count= (Integer) orderService.findOrdersListcount();
			List<Row> wdbOrders =  orderService.findTypeRecentPage((page-1)*rows, rows,times,orderStatus);
			model.addAttribute("page",new Page(page,rows,count,wdbOrders));
			model.addAttribute("tabid",tabid);
			//分页url参数处理
			Map<String, String[]> map = request.getParameterMap();
			String str = CoreUtils.formatUrl(map);
			//指定视图
			model.addAttribute("strParam",str);
			
			return "order/ordertype";
		}
	
	@RequestMapping("/orderquery")
	public String orderquery(Model model,HttpServletRequest request,HttpServletResponse response,String searchkey,String tabid,String orderStatus)throws Exception {
			
		//Integer orderStatus=Integer.valueOf(request.getParameter("orderStatus"));
		
		searchkey = new String(request.getParameter("searchkey").getBytes("ISO-8859-1"),"utf-8");
		model.addAttribute("searchkey", searchkey);
		System.out.println(searchkey+"+"+tabid+"+"+orderStatus);
			
			String strPage = request.getParameter("page");
			Integer page = 1;
			Integer rows = 13;
			if(strPage!=null)
				page = Integer.parseInt(strPage);
			Integer count= (Integer) orderService.findOrdersListcount();
			List<Row> wdbOrders =  orderService.findOrderQueryPage((page-1)*rows, rows,searchkey,orderStatus);
			model.addAttribute("page",new Page(page,rows,count,wdbOrders));
			model.addAttribute("tabid",tabid);
			//分页url参数处理
			Map<String, String[]> map = request.getParameterMap();
			String str = CoreUtils.formatUrl(map);
			//指定视图
			model.addAttribute("strParam",str);
			/* PrintWriter out = response.getWriter();  
		        out.print("<script type='text/javascript'>$(function(){$('body').textSearch("+searchkey+");});</script>");  
		        out.flush();*/
			if(orderStatus.equals("all")){
			return "order/orderlist";
			}else{
				model.addAttribute("orderStatus",orderStatus);
				return "order/ordertype";
			}
		}
	

}
