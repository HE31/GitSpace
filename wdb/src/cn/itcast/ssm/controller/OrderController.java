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
		// ��ȡhidden����Ʒ����ҳ�����Ʒ���
		productnumber = Integer.valueOf(request.getParameter("productnumber"));
		WdbProductsCustom wdbProductsCustom = productsService
				.findProductsByProductNumber(productnumber);
		WdbCategories wdbCategories = productsService
				.findDescriptionByCategoryId(wdbProductsCustom.getCategoryid());
		
		
		
		
		
		// ��ȡ��Ʒ���Դ���
		/*char c = '��';
		int num = 0;
		String detail = "";
		
		for (int j = 0; j < wdbCategories.getCategorydescription().length(); j++) {
			if (c == wdbCategories.getCategorydescription().charAt(j))
				num++;
		}*/

		// ��ȡ�û�ѡ�������,��������Բ�ѯ��ݿ��ϵ���Ʒ
		/*for (int i = 0; i < num + 1; i++) {

			if (i < num) {
				detail = detail + request.getParameter("type" + i) + "��";

			} else {
				detail = detail + request.getParameter("type" + i);
			}
			System.out.println(request.getParameter("type" + i) + "");
			System.out.println(detail);
			System.out.println("���Գ��ȣ�"+productnumber);
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
		// ����û�ѡ�������ɸѡ����Ʒ����session
		session.setAttribute("productnumber",
				wdbProductsCustom1.getProductnumber());
		System.out.println(wdbProductsCustom1.getProductdescription()+"������");
		
		//������ڼ۸��׸��������û��µ�ȷ��
		DecimalFormat df  = new DecimalFormat("###0.00");
		String repayment=df.format((wdbProductsCustom1.getQuotoprice() - hasfirstpay
				* wdbProductsCustom.getQuotoprice() / 10)*1.12
				/ times);
		String firstpay=df.format(hasfirstpay
				* wdbProductsCustom1.getQuotoprice() / 10);
		session.setAttribute("repayment",repayment);
		session.setAttribute("firstpay",firstpay);
		System.out.println("�׸����"+firstpay);

		// ����goodsid session���������׸�ʱ����������²�����Ʒ��Ϣ
		if (hasfirstpay != null) {
			session.setAttribute("hasfirstpay", hasfirstpay);
			session.setAttribute("times", times);
		}

		System.out.println(customerid + "azxsw");
		System.out.println(productnumber + "azxsw");
		WdbCustomersCustom wdbCustomersCustom = customersService
				.findCustomerById(customerid);

		// ��goodsid����session�Ա��ҳ�洫��createStageSubmit������
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
		// ��ȡgoodDetailҳ�洫���session firetpay��times
		hasfirstpay = (Integer) session.getAttribute("hasfirstpay");
		times = (Integer) session.getAttribute("times");
		// ��ȡinsertStage�е�productnumber��
		productnumber = (Integer) session.getAttribute("productnumber");
		System.out.println("��ƷID" + productnumber);
		// ��session��õ�formֵ��ʱд��stageServiceImpl
		wdbOrdersCustom.setTimes(times);

		wdbOrdersCustom.setProductnumber(productnumber);
		wdbOrdersCustom.setOrderstatus(0);
		WdbCustomersCustom wdbCustomersCustom = customersService
				.findCustomerById(customerid);
		WdbProductsCustom wdbProductsCustom = productsService
				.findProductsByProductNumber(productnumber);
		// �����׸�
		wdbOrdersCustom.setHasfirstpay(hasfirstpay
				* wdbProductsCustom.getQuotoprice() / 10);
		// ����ÿ��Ӧ�����
		wdbOrdersCustom
				.setRepayment((float) ((wdbProductsCustom.getQuotoprice() - hasfirstpay
						* wdbProductsCustom.getQuotoprice() / 10)*1.12
						/ times));
		System.out.println("�û�id" + customerid);
		System.out.println("ҳ�洫ֵ���룺" + pwd2);

		System.out.println("�׸�:" + hasfirstpay);

		String Ordernumber = wdbOrdersCustom.getOrdernumber();
		wdbRepayments.setOrdernumber(Ordernumber);
		wdbStagesCustom.setOrdernumber(Ordernumber);
		wdbStagesCustom.setRepaystatus(0);
		// stages���м���ÿ��Ӧ�����
		wdbStagesCustom
				.setMoney((float) ((wdbProductsCustom.getQuotoprice() - hasfirstpay
						* wdbProductsCustom.getQuotoprice() / 10)*1.12
						/ times));

		int c = wdbCustomersCustom.getCustcreditrest();
		int C = c - 200;
		// �µ��ɹ����۳���Ӧ���ö��
		if (hasfirstpay == 0
				|| pwd2.equals(wdbCustomersCustom.getCustdealpwd())) {
			wdbCustomersCustom.setCustcreditrest(C);

			ordersService.insertOrders(wdbOrdersCustom, wdbRepayments,
					wdbCustomersCustom, wdbStagesCustom);
			// ҳ��ת��
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
		// ��ȡgoodDetailҳ�洫���session firetpay��times
		loan=Float.parseFloat(request.getParameter("loan"));
		times = Integer.valueOf(request.getParameter("times"));
		// ��ȡinsertStage�е�productnumber��
		System.out.println(loan+"%%%%");
		List<WdbProductsCustom> wdbProductsList=productsService.findProductsType(10);
		System.out.println(wdbProductsList.get(0).getQuotoprice()+"$$$$$");
		 Iterator<WdbProductsCustom> it =  wdbProductsList.iterator();
		 WdbProductsCustom products;
		while(it.hasNext()){
			
			 products = (WdbProductsCustom) it.next();
			
			 if(products.getQuotoprice().equals(loan)){
				 System.out.println(products.getQuotoprice()+"������������������");
				 productnumber =products.getProductnumber(); 
				 System.out.println("��ƷID" + productnumber);
		 }

		}
		
		System.out.println("��ƷID" + productnumber);
		// ��session��õ�formֵ��ʱд��stageServiceImpl
		wdbOrdersCustom.setTimes(times);

		wdbOrdersCustom.setProductnumber(productnumber);
		wdbOrdersCustom.setOrderstatus(0);
		wdbOrdersCustom.setCustomerid(customerid);
		WdbCustomersCustom wdbCustomersCustom = customersService
				.findCustomerById(customerid);
		WdbProductsCustom wdbProductsCustom = productsService
				.findProductsByProductNumber(productnumber);
		// �����׸�
		wdbOrdersCustom.setHasfirstpay((float) 0.00);
		// ����ÿ��Ӧ�����
		wdbOrdersCustom
				.setRepayment((wdbProductsCustom.getQuotoprice() )
						/ times);
		System.out.println("�û�id" + customerid);
		System.out.println("ҳ�洫ֵ���룺" + pwd2);

	
		String Ordernumber = wdbOrdersCustom.getOrdernumber();
		wdbRepayments.setOrdernumber(Ordernumber);
		wdbStagesCustom.setOrdernumber(Ordernumber);
		wdbStagesCustom.setRepaystatus(0);
		// stages���м���ÿ��Ӧ�����
		wdbStagesCustom.setMoney((float) ((wdbProductsCustom.getQuotoprice()*1.005)/ times));

		int c = wdbCustomersCustom.getCustcreditrest();
		int C = c - 200;
		// �µ��ɹ����۳���Ӧ���ö��
		
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
	
		//�ж��Ƿ��ж�������
		if(wdbOrdersQueryVo.size()>0){
			//�ж�ǰ�������������Ƿ���ͬ
		
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
	System.out.println(count+"δ�����");
		
			//�ж��Ƿ��ж�������
			if(count!=0){
				//�ж�ǰ�������������Ƿ���ͬ
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
		System.out.println(ordernumber+"���ڶ������");
		
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
		
		System.out.println("Ԥ��ʱ�䣺"+duekey);
		stagesService.updateStagesForOverdue(ordernumber, duekey);
		//���������ύ�󣬹ر��Ӵ��ڵ�����ˢ�¸�����
		model.addAttribute("refresh","ˢ�º��ҳ��"+duekey);
		  PrintWriter out = response.getWriter();  
	        out.print("<script>window.parent.location.href='../customer/Personal.action?duekey="+duekey+"';</script>");  
	        out.flush();
	       // return "order/overdue";
		
	}
	
}

