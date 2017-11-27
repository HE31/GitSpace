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
	
	//注册
	@RequestMapping(value="/Registered",method={RequestMethod.POST,RequestMethod.GET})
	//@RequestParam里边指定request传入参数名称和形参进行绑定。
	//通过required属性指定参数是否必须要传入
	//通过defaultValue可以设置默认值，如果id参数没有传入，将默认值和形参绑定。
	public String registered()throws Exception {

		return "customer/Registered";
	}
	
	
	
	
	
	
	@RequestMapping("/RegisteredSubmit")
	public String registeredSubmit(Model model, HttpServletRequest request,HttpSession session,WdbCustomersCustom wdbCustomersCustom,String custnick, String  custphonenum, WdbCustomersQueryVo wdbCustomersQueryVo )throws Exception {
		   List<WdbCustomersCustom> customerslist = customersService.findCustomerList(wdbCustomersQueryVo);
			 Iterator it =  customerslist.iterator();
			    WdbCustomersCustom custom;
			    //设置参数flag,用于遍历记录中判断注册信息是否与数据库有重复
			    boolean flag=true;
			    while(it.hasNext()){
			    	custom = (WdbCustomersCustom) it.next();
			    	//若该手机号已被注册，给出错误提示，并更改flag为flase
			    		if(custom.getCustphonenum().equals(custphonenum)){
			    		model.addAttribute("telError","该手机号已被注册");
			    		
			    		System.out.println("获得1");
			    		flag=false;
			    		
			    		}
			    		if(custom.getCustnick().equals(custnick)){
			    			model.addAttribute("usernameError","该用户名已存在");
			    			System.out.println("获得2");
			    			flag=false;
			    		}
			    		//直到遍历完最后一条数据且根据flag判断有错误才跳转
			    		while(!it.hasNext()&&flag==false){
			    			System.out.println("获得3");
			    		return "customer/Registered";
			    	}
			    	
			    	}
			    
			    		//若无错误，则注册成功
			    wdbCustomersCustom.setCustcreditrest(3000);
			    wdbCustomersCustom.setCuststatus( 1);
			    wdbCustomersCustom.setRoleid( 1);
			    customersService.insertCustomer(wdbCustomersCustom);
			    session.setAttribute("customerid",wdbCustomersCustom.getCustomerid());
			    System.out.println(wdbCustomersCustom.getCustomerid()+"用户id");
	    		return "customer/Regsucc";	
		
	}
	//注册2
	@RequestMapping(value="/Regsucc",method={RequestMethod.POST,RequestMethod.GET})

	public String regsucc()throws Exception {

		return "customer/Regsucc";
	}

	
	
	//完善个人信息
	@RequestMapping(value="/perinfo",method={RequestMethod.POST,RequestMethod.GET})
	//@RequestParam里边指定request传入参数名称和形参进行绑定。
	//通过required属性指定参数是否必须要传入
	//通过defaultValue可以设置默认值，如果id参数没有传入，将默认值和形参绑定。
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
		    //设置参数flag,用于遍历记录中判断注册信息是否与数据库有重复
		    boolean flag=true;
		    while(it.hasNext()){
		    	usercustom =  (WdbCustomersCustom) it.next();
		    	//若该手机号已被注册，给出错误提示，并更改flag为flase
		    		if(idcard.equals(wdbCustomersCustom.getCustidcard())){
		    		model.addAttribute("idcardError","该身份证号已被注册");
		    		
		    		System.out.println("获得1");
		    		flag=false;
		    		
		    		}
		    		if(email.equals(wdbCustomersCustom.getCustemail())){
		    			model.addAttribute("emailError","该邮箱已被注册");
		    			System.out.println("获得2");
		    			flag=false;
		    		}
		    		//直到遍历完最后一条数据且根据flag判断有错误才跳转
		    		while(!it.hasNext()&&flag==false){
		    			System.out.println("获得3");
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
	
	//登录
	@RequestMapping(value="/Login", method={RequestMethod.POST,RequestMethod.GET})
	
	public String Login()throws Exception {
		
		return "customer/Login";
	}
	//@RequestParam里边指定request传入参数名称和形参进行绑定。
	//通过required属性指定参数是否必须要传入
	//通过defaultValue可以设置默认值，如果id参数没有传入，将默认值和形参绑定。
	
	
	
	 //登录验证
	@RequestMapping(value="/LoginCheck",method={RequestMethod.POST,RequestMethod.GET})
	public String findUserByname(HttpServletRequest request,  HttpSession session,String custnick, String custloginpwd, WdbCustomersQueryVo wdbCustomersQueryVo,String LoginDate ) throws Exception {
	
           System.out.println("用户"+custnick);
           System.out.println("密码"+custloginpwd);
	    List<WdbCustomersCustom> userlist = customersService.findCustomerList(wdbCustomersQueryVo);
	 Iterator it =  userlist.iterator();
	    WdbCustomersCustom custom;
	    while(it.hasNext()){
	    	custom = (WdbCustomersCustom) it.next();
	    	
	    	if(custom.getCustnick().equals(custnick) &&custom.getCustloginpwd().equals(custloginpwd)){
	    		//获取登录时间
	    		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				 Date d = new Date();
				 LoginDate = df.format(d);	  
				 System.out.println(LoginDate);
				 session.setAttribute("LoginDate",LoginDate);
	    		session.setAttribute("custnick",custnick);
	    		session.setAttribute("customerid",custom.getCustomerid());
	    		//解决中文乱码
	    		String perurl=java.net.URLDecoder.decode(request.getHeader("Referer"), "utf-8");
	    		
	    		 
	    		//perurl = new String(perurl.getBytes("gbk"),"utf-8");
	    	
	    		System.out.println("上次访问地址："+perurl);
	    		
	    		System.out.println("登陆成功");
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
	    
	//退出
		@RequestMapping("/Logout")
		public String loginout(HttpSession session)throws Exception{
			session.invalidate();
			return "redirect:/products/productsList.action";
		}   
	  
	//个人中心
		@RequestMapping(value="/Personal",method={RequestMethod.POST,RequestMethod.GET})
		public String Personal(HttpSession session,Integer customerid,Model model)throws Exception{
			customerid=(Integer) session.getAttribute("customerid");
			List<WdbOrdersQueryVo> wdbOrdersQueryVo = ordersService.findOrdersByCustomerId(customerid);
			//查找用户信息，获取信用额度
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
		
		
		
		//个人中心我的订单页面
				@RequestMapping("/PersonalOrders")
				public String PersonalOrders(HttpSession session,Integer customerid,Model model,HttpServletRequest request)throws Exception{
					
					
					
					
					customerid=(Integer) session.getAttribute("customerid");
					//List<WdbOrdersQueryVo> wdbOrdersQueryVo = ordersService.findOrdersByCustomerId(customerid);
					List<WdbOrdersQueryVo> wdbOrdersQueryVo = ordersService.findAllOrdersByCustomerId(customerid);
					//查找用户信息，获取信用额度
					WdbCustomersCustom wdbCustomersCustom=customersService.findCustomerById(customerid);
					
					   
					
					model.addAttribute("wdbOrdersQueryVo",wdbOrdersQueryVo);
					model.addAttribute("wdbCustomersCustom",wdbCustomersCustom);
					System.out.println(session.getAttribute("LoginDate"));
					
					return "customer/PersonalOrders";
						
					
				}
				//确认收货
				@RequestMapping("/ConfirmGoods")
				public String ConfirmGoods(HttpSession session,Integer customerid,Model model,HttpServletRequest request)throws Exception{
					
					if(!request.getParameter("ordernumber").equals(null)){
						String ordernumber=request.getParameter("ordernumber");
						WdbOrders wdbOrders=ordersService.findOrderAndUpdateByOrdernumber(ordernumber);
						
						System.out.println("不为空"+wdbOrders.getOrdernumber());
						System.out.println(ordernumber);				
					}
					return "forward:PersonalOrders.action";					
				}
				
				//个人中心还款记录页面
				@RequestMapping("/repaymentsRecord")
				public String repaymentsRecord(HttpSession session,Integer customerid,Model model)throws Exception{
					
					
					
					customerid=(Integer) session.getAttribute("customerid");
					//List<WdbOrdersQueryVo> wdbOrdersQueryVo = ordersService.findOrdersByCustomerId(customerid);
					List<WdbRepaymentsCustom> WdbRepaymentsCustom = repaymentsService.findAllRepaymentsByCustomerId(customerid);
					//查找用户信息，获取信用额度
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
			System.out.println("地址"+request.getParameter("province")+","
		+request.getParameter("city")+","+request.getParameter("county")+","+request.getParameter("addr"));
			String address=request.getParameter("province")+","
					+request.getParameter("city")+","+request.getParameter("county")+","+request.getParameter("addr");
			System.out.println("地址"+address);
			return "customer/EditAddress";
			
		}
		
		
		@RequestMapping("video")
		public String video()throws Exception{
			
			return "customer/video";
			
		}
		
		
		
		
		
		
	    }
	
	  //  if(userlist.size()>1){
	    	

	   

	
	
