package com.zlzkj.app.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;







import com.zlzkj.app.model.WdbCustomers;
import com.zlzkj.app.model.WdbOrders;
import com.zlzkj.app.service.CustomerService;
import com.zlzkj.app.service.OrderService;
import com.zlzkj.app.util.CoreUtils;
import com.zlzkj.app.util.Page;
import com.zlzkj.core.base.BaseController;
import com.zlzkj.core.sql.Row;

@Controller
@RequestMapping("/customer")
public class CustomerController extends BaseController{
	
	@Autowired
	private CustomerService customerService;
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value={"/customerlist"})
	public String customerlist(Model model,HttpServletRequest request)throws Exception {
		

	/*	List<WdbCustomers> wdbCustomers = (List<WdbCustomers>) customerService.findCustomersList();
		System.out.println(wdbCustomers.get(0).getCustname());
		model.addAttribute("userList",wdbCustomers);*/
		
		String strPage = request.getParameter("page");
		Integer page = 1;
		Integer rows = 13;
		if(strPage!=null)
			page = Integer.parseInt(strPage);
		Integer count= (Integer) customerService.findCustomersList().size();
		List<Row> wdbCustomers =  customerService.findCustomersListPage((page-1)*rows, rows);
	
		
		System.out.println(count+"总条数");
		model.addAttribute("page",new Page(page,rows,count,wdbCustomers));
		
		//分页url参数处理
		Map<String, String[]> map = request.getParameterMap();
		String str = CoreUtils.formatUrl(map);
		//指定视图
		model.addAttribute("strParam",str);
		
		return "customer/customerlist";
	}
	
	
	
	@RequestMapping(value={"/customerorder"})
	public String customerorder(Model model,HttpServletRequest request,Integer customerid)throws Exception {
		String strPage = request.getParameter("page");
		Integer page = 1;
		Integer rows = 20;
		if(strPage!=null)
			page = Integer.parseInt(strPage);
		Integer count=customerService.findCustomerOrderCount(customerid);
		customerid=Integer.valueOf(request.getParameter("customerid"));
		List<Row> CustomerOrder =  customerService.findCustomerOrderPage(customerid, (page-1)*rows, rows);
		WdbCustomers wdbCustomers =customerService.findCustmerById(customerid);
		String custnick=wdbCustomers.getCustnick();
		model.addAttribute("custnick",custnick);
	model.addAttribute("page",new Page(page,rows,count,CustomerOrder));
		
		//分页url参数处理
		Map<String, String[]> map = request.getParameterMap();
		String str = CoreUtils.formatUrl(map);
		//指定视图
		model.addAttribute("strParam",str);
		
		
		return "customer/customerorder";
	}
	
	
	
	@RequestMapping(value={"/customerstage"})
	public String customerstage(Model model,HttpServletRequest request,Integer customerid,String ordernumber)throws Exception {
		customerid=Integer.valueOf(request.getParameter("customerid"));
		List<Row> customerstage =  customerService.findCustomerStage(ordernumber);
		WdbCustomers wdbCustomers =customerService.findCustmerById(customerid);
		WdbOrders WdbOrders=orderService.findOrderById(ordernumber);
		model.addAttribute("wdbcustomers",wdbCustomers);
		model.addAttribute("customerstage",customerstage);
		model.addAttribute("WdbOrders",WdbOrders);
		
		
		
		return "customer/customerstage";
	}
	
    }  
	
