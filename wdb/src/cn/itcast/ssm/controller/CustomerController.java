package cn.itcast.ssm.controller;


import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import cn.itcast.ssm.po.WdbCustomersCustom;
import cn.itcast.ssm.po.WdbCustomersQueryVo;
import cn.itcast.ssm.po.WdbOrders;
import cn.itcast.ssm.po.WdbOrdersQueryVo;
import cn.itcast.ssm.po.WdbRepaymentsCustom;
import cn.itcast.ssm.service.CustomersService;
import cn.itcast.ssm.service.OrdersService;
import cn.itcast.ssm.service.ProductsService;
import cn.itcast.ssm.service.RepaymentsService;



@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Autowired
	private CustomersService customersService;
	@Autowired
	private OrdersService ordersService;
	@Autowired
	private ProductsService productsService;
	@Autowired
	private RepaymentsService repaymentsService;
	
	//ע��
	@RequestMapping(value="/Registered",method={RequestMethod.POST,RequestMethod.GET})
	//@RequestParam���ָ��request����������ƺ��βν��а󶨡�
	//ͨ��required����ָ�������Ƿ����Ҫ����
	//ͨ��defaultValue��������Ĭ��ֵ�����id����û�д��룬��Ĭ��ֵ���βΰ󶨡�
	public String registered()throws Exception {

		return "customer/Registered";
	}
	
	
	
	
	
	
	@RequestMapping("/RegisteredSubmit")
	public String registeredSubmit(Model model, HttpServletRequest request,HttpSession session,WdbCustomersCustom wdbCustomersCustom,String custnick, String  custphonenum, WdbCustomersQueryVo wdbCustomersQueryVo )throws Exception {
		   List<WdbCustomersCustom> customerslist = customersService.findCustomerList(wdbCustomersQueryVo);
			 Iterator it =  customerslist.iterator();
			    WdbCustomersCustom custom;
			    //���ò���flag,���ڱ�����¼���ж�ע����Ϣ�Ƿ������ݿ����ظ�
			    boolean flag=true;
			    while(it.hasNext()){
			    	custom = (WdbCustomersCustom) it.next();
			    	//�����ֻ����ѱ�ע�ᣬ����������ʾ��������flagΪflase
			    		if(custom.getCustphonenum().equals(custphonenum)){
			    		model.addAttribute("telError","���ֻ����ѱ�ע��");
			    		
			    		System.out.println("���1");
			    		flag=false;
			    		
			    		}
			    		if(custom.getCustnick().equals(custnick)){
			    			model.addAttribute("usernameError","���û����Ѵ���");
			    			System.out.println("���2");
			    			flag=false;
			    		}
			    		//ֱ�����������һ�������Ҹ���flag�ж��д������ת
			    		while(!it.hasNext()&&flag==false){
			    			System.out.println("���3");
			    		return "customer/Registered";
			    	}
			    	
			    	}
			    
			    		//���޴�����ע��ɹ�
			    wdbCustomersCustom.setCustcreditrest(3000);
			    wdbCustomersCustom.setCuststatus( 1);
			    wdbCustomersCustom.setRoleid( 1);
			    customersService.insertCustomer(wdbCustomersCustom);
			    session.setAttribute("customerid",wdbCustomersCustom.getCustomerid());
			    System.out.println(wdbCustomersCustom.getCustomerid()+"�û�id");
	    		return "customer/Regsucc";	
		
	}
	//ע��2
	@RequestMapping(value="/Regsucc",method={RequestMethod.POST,RequestMethod.GET})

	public String regsucc()throws Exception {

		return "customer/Regsucc";
	}

	
	
	//���Ƹ�����Ϣ
	@RequestMapping(value="/perinfo",method={RequestMethod.POST,RequestMethod.GET})
	//@RequestParam���ָ��request����������ƺ��βν��а󶨡�
	//ͨ��required����ָ�������Ƿ����Ҫ����
	//ͨ��defaultValue��������Ĭ��ֵ�����id����û�д��룬��Ĭ��ֵ���βΰ󶨡�
	public String perinfo(HttpServletRequest request)throws Exception {
		
		return "customer/perinfo";
	}
	
	
	
	
	@RequestMapping("/perInfoSubmit")
	public String perInfoSubmit(Model model, HttpServletRequest request,HttpSession session,WdbCustomersCustom wdbCustomersCustom,WdbCustomersQueryVo wdbCustomersQueryVo,String email,String idcard,
			String province,String city,String county,String university,String department,String add )throws Exception {
		System.out.println(email+"youxiang");
		String address=province+city+county+university+department+add;
		model.addAttribute("university",university);
		model.addAttribute("department",department);
		model.addAttribute("add",add);
		model.addAttribute("province",province);
		model.addAttribute("city",city);
		model.addAttribute("county",county);
		 List<WdbCustomersCustom> customerlist = customersService.findCustomerList(wdbCustomersQueryVo);
		 Iterator it =  customerlist.iterator();
		    WdbCustomersCustom usercustom;
		    //���ò���flag,���ڱ�����¼���ж�ע����Ϣ�Ƿ������ݿ����ظ�
		    boolean flag=true;
		    while(it.hasNext()){
		    	usercustom =  (WdbCustomersCustom) it.next();
		    	//�����ֻ����ѱ�ע�ᣬ����������ʾ��������flagΪflase
		    		if(idcard.equals(wdbCustomersCustom.getCustidcard())){
		    		model.addAttribute("idcardError","�����֤���ѱ�ע��");
		    		
		    		System.out.println("���1");
		    		flag=false;
		    		
		    		}
		    		if(email.equals(wdbCustomersCustom.getCustemail())){
		    			model.addAttribute("emailError","�������ѱ�ע��");
		    			System.out.println("���2");
		    			flag=false;
		    		}
		    		//ֱ�����������һ�������Ҹ���flag�ж��д������ת
		    		while(!it.hasNext()&&flag==false){
		    			System.out.println("���3");
		    		return "customer/perinfo";
		    	}
		    	
		    	}
		    
	
		
		Integer customerid=(Integer) session.getAttribute("customerid"); 
		WdbCustomersCustom custom=customersService.findCustomerById(customerid);
		/*wdbCustomersCustom.setCustnick(custom.getCustnick());
		wdbCustomersCustom.setCustloginpwd(custom.getCustloginpwd());
		wdbCustomersCustom.setCustdealpwd(custom.getCustdealpwd());
		wdbCustomersCustom.setCustphonenum(custom.getCustphonenum());*/
		wdbCustomersCustom.setCustaddress(address);
		wdbCustomersCustom.setCustemail(email);
		wdbCustomersCustom.setCustidcard(idcard);
		wdbCustomersCustom.setCustuniversity(university);
		 
		
		customersService.EditCustomer(customerid, wdbCustomersCustom);
		   
		   
		return "customer/Login";
	
	}
	
	//��¼
	@RequestMapping(value="/Login", method={RequestMethod.POST,RequestMethod.GET})
	
	public String Login()throws Exception {
		
		return "customer/Login";
	}
	//@RequestParam���ָ��request����������ƺ��βν��а󶨡�
	//ͨ��required����ָ�������Ƿ����Ҫ����
	//ͨ��defaultValue��������Ĭ��ֵ�����id����û�д��룬��Ĭ��ֵ���βΰ󶨡�
	
	
	
	 //��¼��֤
	@RequestMapping(value="/LoginCheck",method={RequestMethod.POST,RequestMethod.GET})
	public String findUserByname(HttpServletRequest request,  HttpSession session,String custnick, String custloginpwd, WdbCustomersQueryVo wdbCustomersQueryVo,String LoginDate ) throws Exception {
	
           System.out.println("�û�"+custnick);
           System.out.println("����"+custloginpwd);
	    List<WdbCustomersCustom> userlist = customersService.findCustomerList(wdbCustomersQueryVo);
	 Iterator it =  userlist.iterator();
	    WdbCustomersCustom custom;
	    while(it.hasNext()){
	    	custom = (WdbCustomersCustom) it.next();
	    	
	    	if(custom.getCustnick().equals(custnick) &&custom.getCustloginpwd().equals(custloginpwd)){
	    		//��ȡ��¼ʱ��
	    		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				 Date d = new Date();
				 LoginDate = df.format(d);	  
				 System.out.println(LoginDate);
				 session.setAttribute("LoginDate",LoginDate);
	    		session.setAttribute("custnick",custnick);
	    		session.setAttribute("customerid",custom.getCustomerid());
	    		//�����������
	    		String perurl=java.net.URLDecoder.decode(request.getHeader("Referer"), "utf-8");
	    		
	    		 
	    		//perurl = new String(perurl.getBytes("gbk"),"utf-8");
	    	
	    		System.out.println("�ϴη��ʵ�ַ��"+perurl);
	    		
	    		System.out.println("��½�ɹ�");
	    		if(!perurl.equals("http://42.96.150.57:8080/wdb/customer/Login.action")&&!perurl.equals(null)
	    				&&!perurl.equals("http://localhost:8080/wdb/customer/Login.action")){
	    			return  "redirect:"+new String(perurl.getBytes("utf-8"),"ISO-8859-1");
	    		}else{
	    		return  "redirect:/products/weidaiba.action";
	    		}
		    }
	    	
	    }
		return "customer/Login";	
	}
	    
	//�˳�
		@RequestMapping("/Logout")
		public String loginout(HttpSession session)throws Exception{
			session.invalidate();
			return "redirect:/products/productsList.action";
		}   
	  
	//��������
		@RequestMapping(value="/Personal",method={RequestMethod.POST,RequestMethod.GET})
		public String Personal(HttpSession session,Integer customerid,Model model)throws Exception{
			customerid=(Integer) session.getAttribute("customerid");
			List<WdbOrdersQueryVo> wdbOrdersQueryVo = ordersService.findOrdersByCustomerId(customerid);
			//�����û���Ϣ����ȡ���ö��
			WdbCustomersCustom wdbCustomersCustom=customersService.findCustomerById(customerid);
			model.addAttribute("wdbCustomersCustom",wdbCustomersCustom);
			System.out.println(session.getAttribute("LoginDate"));
			
			if(wdbOrdersQueryVo.size()>0){
			
			String orderdate=(new SimpleDateFormat("yyyy-MM-dd HH:MM:SS")).format(wdbOrdersQueryVo.get(0).getOrderdate());    
			String enddate=(new SimpleDateFormat("yyyy-MM-dd")).format(wdbOrdersQueryVo.get(0).getWdbStagesCustom().getEnddate());
			model.addAttribute("orderdate",orderdate);
			model.addAttribute("enddate",enddate);
			model.addAttribute("wdbOrdersQueryVo",wdbOrdersQueryVo);
			
			}
           
            System.out.println();
			
					
			return "customer/Personal";
		}
		
		
		
		//���������ҵĶ���ҳ��
				@RequestMapping("/PersonalOrders")
				public String PersonalOrders(HttpSession session,Integer customerid,Model model,HttpServletRequest request)throws Exception{
					
					
					
					
					customerid=(Integer) session.getAttribute("customerid");
					//List<WdbOrdersQueryVo> wdbOrdersQueryVo = ordersService.findOrdersByCustomerId(customerid);
					List<WdbOrdersQueryVo> wdbOrdersQueryVo = ordersService.findAllOrdersByCustomerId(customerid);
					//�����û���Ϣ����ȡ���ö��
					WdbCustomersCustom wdbCustomersCustom=customersService.findCustomerById(customerid);
					
					   
					
					model.addAttribute("wdbOrdersQueryVo",wdbOrdersQueryVo);
					model.addAttribute("wdbCustomersCustom",wdbCustomersCustom);
					System.out.println(session.getAttribute("LoginDate"));
					
					return "customer/PersonalOrders";
						
					
				}
				//ȷ���ջ�
				@RequestMapping("/ConfirmGoods")
				public String ConfirmGoods(HttpSession session,Integer customerid,Model model,HttpServletRequest request)throws Exception{
					
					if(!request.getParameter("ordernumber").equals(null)){
						String ordernumber=request.getParameter("ordernumber");
						WdbOrders wdbOrders=ordersService.findOrderAndUpdateByOrdernumber(ordernumber);
						
						System.out.println("��Ϊ��"+wdbOrders.getOrdernumber());
						System.out.println(ordernumber);				
					}
					return "forward:PersonalOrders.action";					
				}
				
				//�������Ļ����¼ҳ��
				@RequestMapping("/repaymentsRecord")
				public String repaymentsRecord(HttpSession session,Integer customerid,Model model)throws Exception{
					
					
					
					customerid=(Integer) session.getAttribute("customerid");
					//List<WdbOrdersQueryVo> wdbOrdersQueryVo = ordersService.findOrdersByCustomerId(customerid);
					List<WdbRepaymentsCustom> WdbRepaymentsCustom = repaymentsService.findAllRepaymentsByCustomerId(customerid);
					//�����û���Ϣ����ȡ���ö��
					WdbCustomersCustom wdbCustomersCustom=customersService.findCustomerById(customerid);
				if(WdbRepaymentsCustom.size()>0){
					String createdate=(new SimpleDateFormat("yyyy-MM-dd HH:MM:SS")).format(WdbRepaymentsCustom.get(0).getCreatedate());    
					
					model.addAttribute("createdate",createdate);
					
					model.addAttribute("WdbRepaymentsCustom",WdbRepaymentsCustom);
					model.addAttribute("wdbCustomersCustom",wdbCustomersCustom);
					System.out.println(WdbRepaymentsCustom.size()+"PPPPPPPPPPPPP");
					WdbRepaymentsCustom.get(0).getWdbOrders().getRepayment();
				}
					
					return "customer/repaymentsRecord";
						
					
				}
		
		
	
		@RequestMapping("EditAddress")
		public String EditAddress(HttpServletRequest request)throws Exception{
			System.out.println("��ַ"+request.getParameter("province")+","
		+request.getParameter("city")+","+request.getParameter("county")+","+request.getParameter("addr"));
			String address=request.getParameter("province")+","
					+request.getParameter("city")+","+request.getParameter("county")+","+request.getParameter("addr");
			System.out.println("��ַ"+address);
			return "customer/EditAddress";
			
		}
		
		
		@RequestMapping("video")
		public String video()throws Exception{
			
			return "customer/video";
			
		}
		
		
		
		
		
		
	    }
	
	  //  if(userlist.size()>1){
	    	

	   

	
	
