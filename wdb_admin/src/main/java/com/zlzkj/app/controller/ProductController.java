package com.zlzkj.app.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

import com.zlzkj.app.model.WdbCategories;
import com.zlzkj.app.model.WdbProducts;
import com.zlzkj.app.service.OrderService;
import com.zlzkj.core.base.BaseController;
import com.zlzkj.core.sql.Row;
import com.zlzkj.app.service.ProductService;
import com.zlzkj.app.util.CoreUtils;
import com.zlzkj.app.util.Page;
@Controller
@RequestMapping("/product")
public class ProductController extends BaseController{
	@Autowired
	private ProductService productService;
	@Autowired
	private OrderService orderService;
	@RequestMapping("/productadd")
	public ModelAndView productadd()throws Exception{
		ModelAndView modelAndView=new ModelAndView();
		
		modelAndView.setViewName("product/productadd");
		return modelAndView;
	}
	
	@RequestMapping("/productaddCheck")
	public ModelAndView productaddCheck(HttpServletRequest request,WdbProducts wdbProducts,WdbCategories wdbCategories)throws Exception{
		ModelAndView modelAndView=new ModelAndView();
		String content=request.getParameter("content");
		//防止数组为null
		
		//获取属性name相同数组
		String[] demo=request.getParameterValues("demo[]");
		String[] demo2=request.getParameterValues("demo2[]");

		
		
		System.out.println(content);
		productService.insertProduct(demo, demo2, wdbProducts, wdbCategories);
		
		modelAndView.setViewName("product/productadd");
		return modelAndView;
	}
	
	@RequestMapping("/productview")
	public String productview(HttpServletRequest request,Integer productnumber,Model  model)throws Exception{
		
		WdbProducts wdbProducts= productService.findProductById(productnumber);
		
		model.addAttribute("product",wdbProducts);
		return "product/productview";
	}
	
	@RequestMapping("/productedit")
	public String productedit(HttpServletRequest request,Integer productnumber,Model  model)throws Exception{
		
		WdbProducts wdbProducts= productService.findProductById(productnumber);
		
		model.addAttribute("product",wdbProducts);
		return "product/productedit";
	}
	
	@RequestMapping("/editSubmit")
	public String editSubmit(HttpServletResponse response,HttpServletRequest request,WdbProducts wdbProducts,Integer productnumber)throws Exception{
		
		String str=wdbProducts.getImageurls();
		//只保留kindeditor传过来路径中的引号内部分
        Pattern p=Pattern.compile("\"(.*?)\"");
        Matcher m=p.matcher(str);
       
        while(m.find()){
        	 wdbProducts.setImageurls(m.group(1)); 	
        	 break;
        } 
        productService.updateProduct(wdbProducts);
        PrintWriter out = response.getWriter();  
        out.print("<script>alert('修改成功！')</script>");  
        out.flush();
		return "product/productedit";
	}
	
	
	@RequestMapping("/productdelete")
	public String productdelete(HttpServletRequest request,Integer productnumber,String categoryid)throws Exception{
		 productService.deleteProductById(productnumber);
		return "redirect:productcategory.action?categoryid='"+categoryid+"'";
	}
	
	@RequestMapping("/groupdelete")
	public String groupdelete(HttpServletRequest request,String categoryid)throws Exception{
		 productService.deleteProductGroup(categoryid);
		return "redirect:productgroup.action?functionid=0";
	}
	
	

		@RequestMapping("/productlist")
		public String productlist(HttpServletRequest request,Model model)throws Exception{
			/*List<Row> wdbProducts  = productService.findProdcts();
			System.out.println(wdbProducts);
			model.addAttribute("productlist",wdbProducts);*/

			String strPage = request.getParameter("page");
			Integer page = 1;
			Integer rows = 13;
			if(strPage!=null)
				page = Integer.parseInt(strPage);
			Integer count= productService.findProdctsCount() ;
			List<Row> wdbProducts =  productService.findProdctsPage((page-1)*rows, rows);
			System.out.println(count+"总条数");
			model.addAttribute("page",new Page(page,rows,count,wdbProducts));
			
			//分页url参数处理
			Map<String, String[]> map = request.getParameterMap();
			String str = CoreUtils.formatUrl(map);
			//指定视图
			model.addAttribute("strParam",str);
			
			
			return "product/productlist";	
		}
		
		
		@RequestMapping("/productgroup")
		public String productgroup(HttpServletRequest request,Model model,String functionid)throws Exception{

			String strPage = request.getParameter("page");
			Integer page = 1;
			Integer rows = 13;
			if(strPage!=null)
				page = Integer.parseInt(strPage);
			Integer count= productService.findProdctGroup(functionid).size();
			List<Row> Productgroup =  productService.findProdctgroupPage((page-1)*rows, rows,functionid);
			System.out.println(count+"总条数");
			model.addAttribute("page",new Page(page,rows,count,Productgroup));
			
			//分页url参数处理
			Map<String, String[]> map = request.getParameterMap();
			String str = CoreUtils.formatUrl(map);
			//指定视图
			model.addAttribute("strParam",str);
			//用于select框保存原选中值
			model.addAttribute("functionid",functionid);
		
			
			return "product/productgroup";	
		}
		
		
		@RequestMapping("/productcategory")
		public String productcategory(HttpServletRequest request,Model model,String categoryid)throws Exception{

		String strPage = request.getParameter("page");
			Integer page = 1;
			Integer rows = 13;
			if(strPage!=null)
				page = Integer.parseInt(strPage);
			Integer count= productService.findProdctCategory(categoryid).size();
			List<Row> Productcategory =  productService.findProdctCategoryPage((page-1)*rows, rows,categoryid);
			System.out.println(count+"总条数");
			model.addAttribute("page",new Page(page,rows,count,Productcategory));
			
			//分页url参数处理
			Map<String, String[]> map = request.getParameterMap();
			String str = CoreUtils.formatUrl(map);
			//指定视图
			model.addAttribute("strParam",str);
			//用于select框保存原选中值
			model.addAttribute("categoryid",categoryid);
		
			
			return "product/productcategory";	
		}

}
