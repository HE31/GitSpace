package cn.itcast.ssm.controller;

import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.itcast.ssm.po.WdbCategories;
import cn.itcast.ssm.po.WdbCustomersCustom;
import cn.itcast.ssm.po.WdbOrdersCustom;
import cn.itcast.ssm.po.WdbOrdersQueryVo;
import cn.itcast.ssm.po.WdbProductsCustom;
import cn.itcast.ssm.po.WdbProductsQueryVo;
import cn.itcast.ssm.po.WdbRepayments;
import cn.itcast.ssm.po.WdbStages;
import cn.itcast.ssm.po.WdbStagesCustom;
import cn.itcast.ssm.service.CustomersService;
import cn.itcast.ssm.service.OrdersService;
import cn.itcast.ssm.service.ProductsService;
import cn.itcast.ssm.service.StagesService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private OrdersService ordersService;
	@Autowired
	private CustomersService customersService;
	@Autowired
	private ProductsService productsService;
	@Autowired
	private StagesService stagesService;

	@RequestMapping(value = "/createOrder")
	public String createOrder(HttpServletRequest request, HttpSession session,
			Model model, Integer customerid, Integer productnumber,String detail,
			Integer hasfirstpay, Integer times,
			WdbProductsQueryVo wdbProductsQueryVo) throws Exception {
		customerid = (Integer) session.getAttribute("customerid");
		// 获取hidden在商品详情页面的商品编号
		productnumber = Integer.valueOf(request.getParameter("productnumber"));
		WdbProductsCustom wdbProductsCustom = productsService
				.findProductsByProductNumber(productnumber);
		WdbCategories wdbCategories = productsService
				.findDescriptionByCategoryId(wdbProductsCustom.getCategoryid());
		
		
		
		
		
		// 获取商品属性大类
		/*char c = '；';
		int num = 0;
		String detail = "";
		
		for (int j = 0; j < wdbCategories.getCategorydescription().length(); j++) {
			if (c == wdbCategories.getCategorydescription().charAt(j))
				num++;
		}*/

		// 获取用户选择的属性,并根据属性查询数据库符合的商品
		/*for (int i = 0; i < num + 1; i++) {

			if (i < num) {
				detail = detail + request.getParameter("type" + i) + "，";

			} else {
				detail = detail + request.getParameter("type" + i);
			}
			System.out.println(request.getParameter("type" + i) + "");
			System.out.println(detail);
			System.out.println("属性长度："+productnumber);
		}*/
		   
		//detail=request.getParameter("thr");
		hasfirstpay=Integer.valueOf(request.getParameter("hasfirstpay"));
		times=Integer.valueOf(request.getParameter("times"));
		detail=new String(request.getParameter("thr").getBytes("ISO-8859-1"),"UTF-8");
		System.out.println(request.getParameter("thr")+"-----------");
		System.out.println(detail+"+++++++++++");
		WdbProductsCustom wdbProductsCustom1;
		if(detail.equals("1")){
			wdbProductsCustom1 = productsService
					.findProductsByProductNumber(productnumber);
		}else{
			wdbProductsQueryVo.setDetail(detail.trim());
			
			wdbProductsCustom1 = productsService
					.findProductsListByDetail(wdbProductsQueryVo);
			
		}
		// 根据用户选择的属性筛选的商品放入session
		session.setAttribute("productnumber",
				wdbProductsCustom1.getProductnumber());
		System.out.println(wdbProductsCustom1.getProductdescription()+"阿萨飒飒");
		
		//计算分期价格及首付金额，用于用户下单确认
		DecimalFormat df  = new DecimalFormat("###0.00");
		String repayment=df.format((wdbProductsCustom1.getQuotoprice() - hasfirstpay
				* wdbProductsCustom.getQuotoprice() / 10)*1.12
				/ times);
		String firstpay=df.format(hasfirstpay
				* wdbProductsCustom1.getQuotoprice() / 10);
		session.setAttribute("repayment",repayment);
		session.setAttribute("firstpay",firstpay);
		System.out.println("首付金额"+firstpay);

		// 设置goodsid session，方便有首付时付款方法中重新查找商品信息
		if (hasfirstpay != null) {
			session.setAttribute("hasfirstpay", hasfirstpay);
			session.setAttribute("times", times);
		}

		System.out.println(customerid + "azxsw");
		System.out.println(productnumber + "azxsw");
		WdbCustomersCustom wdbCustomersCustom = customersService
				.findCustomerById(customerid);

		// 将goodsid放入session以便跨页面传到createStageSubmit方法中
		session.setAttribute("productdescription",
				request.getParameter("productdescription"));
		model.addAttribute("wdbCustomersCustom", wdbCustomersCustom);
		model.addAttribute("wdbProductsCustom", wdbProductsCustom1);

		return "order/createOrder";
	}

	@RequestMapping("/pay")
	public String pay(HttpServletRequest request, Integer customerid,
			Model model, Integer productnumber, HttpSession session,
			Integer hasfirstpay) throws Exception {
		WdbCustomersCustom wdbCustomersCustom = customersService
				.findCustomerById(customerid);
		System.out.println(session.getAttribute("productnumber") + "77777777");
		productnumber = Integer.valueOf(session.getAttribute("productnumber")
				.toString());
		WdbProductsCustom wdbProductsCustom = productsService
				.findProductsByProductNumber(productnumber);
		System.out.println(productnumber + "shangpig");
		model.addAttribute(wdbCustomersCustom);
		model.addAttribute(wdbProductsCustom);
		hasfirstpay = (Integer) session.getAttribute("hasfirstpay");
		System.out.println(hasfirstpay);
		if (hasfirstpay == 0) {
			return "forward:createOrderSubmit.action";
		} else {
			return "order/pay";
		}
	}

	@RequestMapping("/createOrderSubmit")
	public String createOrderSubmit(HttpServletRequest request,
			WdbOrdersCustom wdbOrdersCustom, WdbRepayments wdbRepayments,
			WdbStagesCustom wdbStagesCustom, HttpSession session, String pwd2,
			Integer customerid, Integer hasfirstpay, Integer times,
			Integer productnumber) throws Exception {

		customerid = (Integer) session.getAttribute("customerid");
		// 获取goodDetail页面传输的session firetpay和times
		hasfirstpay = (Integer) session.getAttribute("hasfirstpay");
		times = (Integer) session.getAttribute("times");
		// 获取insertStage中的productnumber；
		productnumber = (Integer) session.getAttribute("productnumber");
		System.out.println("商品ID" + productnumber);
		// 将session获得的form值暂时写入stageServiceImpl
		wdbOrdersCustom.setTimes(times);

		wdbOrdersCustom.setProductnumber(productnumber);
		wdbOrdersCustom.setOrderstatus(0);
		WdbCustomersCustom wdbCustomersCustom = customersService
				.findCustomerById(customerid);
		WdbProductsCustom wdbProductsCustom = productsService
				.findProductsByProductNumber(productnumber);
		// 计算首付
		wdbOrdersCustom.setHasfirstpay(hasfirstpay
				* wdbProductsCustom.getQuotoprice() / 10);
		// 计算每期应还金额
		wdbOrdersCustom
				.setRepayment((float) ((wdbProductsCustom.getQuotoprice() - hasfirstpay
						* wdbProductsCustom.getQuotoprice() / 10)*1.12
						/ times));
		System.out.println("用户id" + customerid);
		System.out.println("页面传值密码：" + pwd2);

		System.out.println("首付:" + hasfirstpay);

		String Ordernumber = wdbOrdersCustom.getOrdernumber();
		wdbRepayments.setOrdernumber(Ordernumber);
		wdbStagesCustom.setOrdernumber(Ordernumber);
		wdbStagesCustom.setRepaystatus(0);
		// stages表中计算每期应还金额
		wdbStagesCustom
				.setMoney((float) ((wdbProductsCustom.getQuotoprice() - hasfirstpay
						* wdbProductsCustom.getQuotoprice() / 10)*1.12
						/ times));

		int c = wdbCustomersCustom.getCustcreditrest();
		int C = c - 200;
		// 下单成功，扣除相应引用额度
		if (hasfirstpay == 0
				|| pwd2.equals(wdbCustomersCustom.getCustdealpwd())) {
			wdbCustomersCustom.setCustcreditrest(C);

			ordersService.insertOrders(wdbOrdersCustom, wdbRepayments,
					wdbCustomersCustom, wdbStagesCustom);
			// 页面转发
			return "redirect:/order/ordersucc.action";
		} else {

			return "forward:pay.action";
		}

	}
	
	
	
	
	@RequestMapping("/loanOrderSubmit")
	public String loanOrderSubmit(HttpServletRequest request,
			WdbOrdersCustom wdbOrdersCustom, WdbRepayments wdbRepayments,
			WdbStagesCustom wdbStagesCustom, HttpSession session, String pwd2,
			Integer customerid, float loan, Integer times,
			Integer productnumber) throws Exception {

		customerid = (Integer) session.getAttribute("customerid");
		// 获取goodDetail页面传输的session firetpay和times
		loan=Float.parseFloat(request.getParameter("loan"));
		times = Integer.valueOf(request.getParameter("times"));
		// 获取insertStage中的productnumber；
		System.out.println(loan+"%%%%");
		List<WdbProductsCustom> wdbProductsList=productsService.findProductsType(10);
		System.out.println(wdbProductsList.get(0).getQuotoprice()+"$$$$$");
		 Iterator<WdbProductsCustom> it =  wdbProductsList.iterator();
		 WdbProductsCustom products;
		while(it.hasNext()){
			
			 products = (WdbProductsCustom) it.next();
			
			 if(products.getQuotoprice().equals(loan)){
				 System.out.println(products.getQuotoprice()+"￥￥￥￥￥￥￥￥￥");
				 productnumber =products.getProductnumber(); 
				 System.out.println("商品ID" + productnumber);
		 }

		}
		
		System.out.println("商品ID" + productnumber);
		// 将session获得的form值暂时写入stageServiceImpl
		wdbOrdersCustom.setTimes(times);

		wdbOrdersCustom.setProductnumber(productnumber);
		wdbOrdersCustom.setOrderstatus(0);
		wdbOrdersCustom.setCustomerid(customerid);
		WdbCustomersCustom wdbCustomersCustom = customersService
				.findCustomerById(customerid);
		WdbProductsCustom wdbProductsCustom = productsService
				.findProductsByProductNumber(productnumber);
		// 计算首付
		wdbOrdersCustom.setHasfirstpay((float) 0.00);
		// 计算每期应还金额
		wdbOrdersCustom
				.setRepayment((wdbProductsCustom.getQuotoprice() )
						/ times);
		System.out.println("用户id" + customerid);
		System.out.println("页面传值密码：" + pwd2);

	
		String Ordernumber = wdbOrdersCustom.getOrdernumber();
		wdbRepayments.setOrdernumber(Ordernumber);
		wdbStagesCustom.setOrdernumber(Ordernumber);
		wdbStagesCustom.setRepaystatus(0);
		// stages表中计算每期应还金额
		wdbStagesCustom.setMoney((float) ((wdbProductsCustom.getQuotoprice()*1.005)/ times));

		int c = wdbCustomersCustom.getCustcreditrest();
		int C = c - 200;
		// 下单成功，扣除相应引用额度
		
			wdbCustomersCustom.setCustcreditrest(C);

			ordersService.insertOrders(wdbOrdersCustom, wdbRepayments,
					wdbCustomersCustom, wdbStagesCustom);
		
	
		return "redirect:/order/ordersucc.action";

	}
	
	

	@RequestMapping("/repayment")
	public String repayment(HttpSession session, Integer customerid,String ordernumber, Model model)
			throws Exception {
		customerid = (Integer) session.getAttribute("customerid");
		
		WdbOrdersQueryVo wdbOrdersQueryVo = ordersService
				.findOrderByCustomerIdAndOrderNumber(customerid, ordernumber);
		model.addAttribute("wdbOrdersQueryVo", wdbOrdersQueryVo);
		
		return "order/repayment";

	}

	@RequestMapping("/repaymentSubmit")
	public String repaymentSubmit(String pwd2, HttpServletRequest request,
			HttpSession session, WdbRepayments wdbRepayments,
			Integer customerid,  Integer productnumber,String ordernumber)
			throws Exception {
	
		customerid = (Integer) session.getAttribute("customerid");
		productnumber = (Integer) session.getAttribute("productnumber");
		WdbOrdersQueryVo wdbOrdersQueryVo = ordersService
				.findOrderByCustomerIdAndOrderNumber(customerid, ordernumber);
		WdbCustomersCustom wdbCustomersCustom = customersService
				.findCustomerById(customerid);
		
		
		wdbRepayments.setCustname(wdbCustomersCustom.getCustname());
		
		if (pwd2.equals(wdbCustomersCustom.getCustdealpwd())) {
			ordersService.insertRepayment(wdbOrdersQueryVo,  wdbRepayments, wdbCustomersCustom);

			return "forward:/order/repaysucc.action";
		} else {
			return "forward:/order/repayment.action";
		}

	}

	@RequestMapping("/repaysucc")
	public String repaysucc(HttpServletRequest request,HttpSession session,Integer customerid,String ordernumber,Model model) throws Exception {
		customerid = (Integer) session.getAttribute("customerid");
		/*List<WdbOrdersQueryVo> wdbOrdersQueryVo =  ordersService
			.findOrdersByCustomerId(customerid);
	
		//判断是否有多条订单
		if(wdbOrdersQueryVo.size()>0){
			//判断前后两条订单号是否相同
		
					int lefttime =  wdbOrdersQueryVo.get(0).getTimes()-wdbOrdersQueryVo.get(0).getWdbStagesCustom().getTime()+1;
		model.addAttribute("lefttime",lefttime);
		System.out.println(lefttime);
				}
	
		
	
		else{
			model.addAttribute("lefttime",0);
		}
		
				return "order/repaysucc";

	}
	*/
	int count=ordersService.findOrderCountByCustomerId(customerid, ordernumber);
	System.out.println(count+"未还款订单");
		
			//判断是否有多条订单
			if(count!=0){
				//判断前后两条订单号是否相同
				WdbOrdersQueryVo wdbOrdersQueryVo =  ordersService
						.findOrderByCustomerIdAndOrderNumber(customerid, ordernumber);
						int lefttime =  wdbOrdersQueryVo.getTimes()-wdbOrdersQueryVo.getWdbStagesCustom().getTime()+1;
			model.addAttribute("lefttime",lefttime);
			System.out.println(lefttime);
					}
		
			
		
			else{
				model.addAttribute("lefttime",0);
			}
			
					return "order/repaysucc";

		}
		
	@RequestMapping("/ordersucc")
	public String ordersucc(HttpServletRequest request,HttpSession session,Integer customerid,Model model) throws Exception {
		customerid = (Integer) session.getAttribute("customerid");
		List<WdbOrdersQueryVo> wdbOrdersQueryVo = ordersService
				.findOrdersByCustomerId(customerid);
		String ordernumber=wdbOrdersQueryVo.get(0).getOrdernumber();
		model.addAttribute("ordernumber",ordernumber);
				return "order/ordersucc";

	}
	
	@RequestMapping("/overdue")
	public String overdue(String ordernumber,Model model)throws Exception{
		
		model.addAttribute("ordernumber",ordernumber);
		System.out.println(ordernumber+"逾期订单编号");
		
		return"order/overdue";
		
	}
	@RequestMapping("/overdueSubmit")
	public void overdueSubmit(HttpSession session,HttpServletRequest request,String duekey,Model model,HttpServletResponse response,
			WdbOrdersQueryVo wdbOrdersQueryVo,String ordernumber)throws Exception{
		
		Integer customerid = (Integer) session.getAttribute("customerid");
		
		wdbOrdersQueryVo= ordersService
				.findOrderByCustomerIdAndOrderNumber(customerid, ordernumber);
		
		WdbCustomersCustom wdbCustomersCustom = customersService
				.findCustomerById(customerid);
		
		
	duekey=request.getParameter("duekey");
		
		System.out.println("预期时间："+duekey);
		stagesService.updateStagesForOverdue(ordernumber, duekey);
		//逾期申请提交后，关闭子窗口弹窗，刷新父窗口
		model.addAttribute("refresh","刷新后的页面"+duekey);
		  PrintWriter out = response.getWriter();  
	        out.print("<script>window.parent.location.href='../customer/Personal.action?duekey="+duekey+"';</script>");  
	        out.flush();
	       // return "order/overdue";
		
	}
	
}

