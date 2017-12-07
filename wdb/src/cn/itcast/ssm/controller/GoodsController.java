
package cn.itcast.ssm.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.itcast.ssm.po.WdbCategories;
import cn.itcast.ssm.po.WdbProductsCustom;
import cn.itcast.ssm.po.WdbProductsQueryVo;
import cn.itcast.ssm.service.ProductsService;
import cn.itcast.ssm.util.CoreUtils;
import cn.itcast.ssm.util.GetDate;
import cn.itcast.ssm.util.Page;


@Controller
//定义根路径
@RequestMapping("/products")
public class GoodsController {
	@Autowired
	private ProductsService productsService;
	//一般建议将方法名和URL写成一致，方便维护
		//@RequestMapping将方法和URL进行映射，一个方法对应一个URL
		@RequestMapping("/productsList")
		//商品查询列表
		public ModelAndView productsList(HttpServletRequest request,WdbProductsQueryVo wdbProductsQueryVo,Integer categoryid)throws Exception{
	//System.out.println(goodstype+"商品类型+++");
			
	
			List<WdbProductsCustom> productsTypeList=productsService.findProductsType(categoryid);
			
			if(categoryid!=null){
				ModelAndView modelAndView1=new ModelAndView();
				modelAndView1.addObject("productsList", productsTypeList);
				modelAndView1.setViewName("products/productsList");
			
				 return modelAndView1;
			}else{
				//返回ModelAndView
				ModelAndView modelAndView=new ModelAndView();
				//相当 于request的setAttribut，在jsp页面中通过itemsList取数据
				//modelAndView.addObject("goodsList", goodsList);
			
				//分页代码
				String strPage = request.getParameter("page");
				Integer page = 1;
				Integer rows = 8;
				if(strPage!=null)
					page = Integer.parseInt(strPage);
				Integer count= productsService.findProductsList(wdbProductsQueryVo).size();
				List<WdbProductsCustom> productList=productsService.findProductsListPage(wdbProductsQueryVo,(page-1)*rows, rows);
				
				System.out.println(count+"总条数");
				modelAndView.addObject("page",new Page(page,rows,count,productList));
				System.out.println(new Page(page,rows,count,productList).toString()+"分页");
				//分页url参数处理
				Map<String, String[]> map = request.getParameterMap();
				String str = CoreUtils.formatUrl(map);
				//指定视图
				modelAndView.addObject("strParam",str);
				modelAndView.setViewName("products/productsList");
				
				
				return modelAndView;
				
			}
}
		
		
		
		
		/**商品查询**/
		@RequestMapping("/productsList2")
		//商品查询列表
		public ModelAndView productsList2(HttpServletRequest request,WdbProductsQueryVo wdbProductsQueryVo,Integer categoryid)throws Exception{
	//System.out.println(goodstype+"商品类型+++");
			
		//调用service查找 数据库，查询商品列表，这里使用动态
			List<WdbProductsCustom> productsList = productsService.findProductsList(wdbProductsQueryVo);
			List<WdbProductsCustom> productsTypeList=productsService.findProductsType(categoryid);
			if(categoryid!=null){
				ModelAndView modelAndView1=new ModelAndView();
				modelAndView1.addObject("productsList", productsTypeList);
				modelAndView1.setViewName("products/productsList2");
				 return modelAndView1;
			}else{
				//返回ModelAndView
				ModelAndView modelAndView=new ModelAndView();
				//相当 于request的setAttribut，在jsp页面中通过itemsList取数据
				modelAndView.addObject("productsList", productsList);
				//指定视图
				modelAndView.setViewName("products/productsList2");
				
	 return modelAndView;
			}
}
		
		
		
		
		
		
		//管理页面查询列表
		@RequestMapping("/manageproducts")
		//商品查询列表
		public ModelAndView manageProducts(HttpServletRequest request,WdbProductsQueryVo wdbProductsQueryVo)throws Exception{
			
			
		//调用service查找 数据库，查询商品列表，这里使用动态
			List<WdbProductsCustom> productsList = productsService.findProductsList(wdbProductsQueryVo);
			
			
			//返回ModelAndView
			ModelAndView modelAndView=new ModelAndView();
			//相当 于request的setAttribut，在jsp页面中通过itemsList取数据
			modelAndView.addObject("productsList", productsList);
			
			//指定视图
			modelAndView.setViewName("products/manageProducts");
			
			
			//分页
			String strPage = request.getParameter("page");
			Integer page = 1;
			Integer rows = 8;
			if(strPage!=null)
				page = Integer.parseInt(strPage);
			
			Integer count= productsService.findProductsList(wdbProductsQueryVo).size();
			List<WdbProductsCustom> productList=productsService.findProductsListPage(wdbProductsQueryVo,(page-1)*rows,page*rows);
			//Integer count=goodsService.findGoodsListPage(goodsQueryVo,page,rows).size();
			//Integer count=appointmentService.findCount("count(*)", "to_id="+user.getId());
			System.out.println(count);
			modelAndView.addObject("page",new Page(page,rows,count,productList));
			System.out.println(new Page(page,rows,count,productList));
			//分页url参数处理
			Map<String, String[]> map = request.getParameterMap();
			String str = CoreUtils.formatUrl(map);
			
			modelAndView.addObject("strParam",str);
			
			
	 return modelAndView;

}
		
		@RequestMapping("/editProducts")
		public String editGoods(Model model,Integer productnumber)throws Exception{
		
			WdbProductsCustom wdbsProductsCustom=productsService.findProductsByProductNumber(productnumber);
		
			//指定视图
			model.addAttribute("productsCustom",wdbsProductsCustom);
	        return "products/editProducts";
	 }
		
		
		//商品信息修改提交
		@RequestMapping("/editProductsSubmit")
		public String editProductsSubmit(HttpServletRequest request,Integer productnumber,WdbProductsCustom wdbProductsCustom,
				MultipartFile products_images//接收商品图片
				)throws Exception{
			
			//获取当前系统时间
			GetDate GD=new GetDate();
		  
			//原始名称
			String originalFilename = products_images.getOriginalFilename();
			//上传图片
		   if(products_images!=null && originalFilename!=null && originalFilename.length()>0){

				//存储图片的物理路径
				String pic_path = "D:\\JSP\\wdb\\WdbUpload\\temp\\";
				
				
				//新的图片名称
				// UUID.randomUUID()随机命名新图片
				//String newFileName = GD.getNow()+UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));
				String newFileName =  originalFilename;
				File newFile = new File(pic_path+newFileName);
				
				//将内存中的数据写入磁盘
				products_images.transferTo(newFile);
				
				//将新图片名称写到itemsCustom中
				wdbProductsCustom.setImageurls(newFileName);
			}
		   productsService.updateProducts(productnumber,wdbProductsCustom);
			return "redirect:manageGoods.action";
}
	
		
		
		
		
		
		
		
				
				@RequestMapping("/productsDetailed")
				//商品查询列表
				public String ProductsDetailed(HttpSession session,HttpServletRequest request,Integer productnumber,Model model,
						Integer firstpay,Integer times)throws Exception{
					
					WdbProductsCustom wdbProductsCustom=productsService.findProductsByProductNumber(productnumber);
					//session.setAttribute("productnumber", productnumber);
					WdbCategories wdbCategories =productsService.findDescriptionByCategoryId(wdbProductsCustom.getCategoryid());
					model.addAttribute(wdbProductsCustom);
					
					
		//List<WdbProductsCustom> pl = new ArrayList<WdbProductsCustom>();
		
		Map<String, Object> type = new LinkedHashMap<String, Object>();
		
		if (wdbCategories.getCategorydescription() != null) {
         //获取商品属性大类
			String[] attrs = wdbCategories.getCategorydescription().split("；");
			for (int i =0; i <attrs.length; i++) {
				
				String[] attr = attrs[i].split("，");
				List<String> list = new LinkedList<String>();
				System.out.println(attrs[i] + "商品属性");
				
				//attrdata.put("attr" + i, attrs[i]);
				for(int k=1;k<attr.length;k++){
			//将每类商品属性的可供选择属性放入list中；		
			list.add(attr[k]);
				}
				//for (int j = 0; j < attrs.length; j++) {
				//将每类属性通过跟可选属性对应起来放入LinkedHashMap
					type.put(attr[0],list);
				
					//.substring分割第一个，后面的字符串
					//	type.put(attr[0],attrs[i].substring(attrs[i].indexOf("，")+1));
				//}			
			}		
			} 
					   System.out.println(type.toString()+"type");
						// System.out.println(list+"list");
				//调用service查找 数据库，查询商品列表，这里使用动态
		
		model.addAttribute("type",type);
					String productname=wdbProductsCustom.getProductname();
					System.out.println("商品名称：："+productname);
					//根据categoryid获取商品列表，用于在前端遍历挑选出符合用户选择的商品
					List<WdbProductsCustom> wdbProductsList=productsService.findProductsType(wdbProductsCustom.getCategoryid());
					System.out.println("遍历出的商品价格"+wdbProductsList.get(0).getQuotoprice());
				model.addAttribute("wdbProductsList",wdbProductsList);
			 return "products/productsDetailed";

		}
				
				
				@RequestMapping("productsSearch")
				public ModelAndView productsSearch(HttpServletRequest request,WdbProductsQueryVo wdbProductsQueryVo,String searchkey)throws Exception{
					searchkey=request.getParameter("searchkey");
					System.out.println(searchkey);
					
					wdbProductsQueryVo.setSearchkey(searchkey);
					List<WdbProductsCustom> productsList=productsService.findProductsBySearchKey(wdbProductsQueryVo);
					
					ModelAndView modelAndView = new ModelAndView();
					
					modelAndView.addObject("productsList",productsList);
					modelAndView.setViewName("products/productsSearch");
					
					return modelAndView;
					
				}
				
				
				/*微贷款*/
				@RequestMapping("/loan")
				//商品查询列表
				public String loan(HttpSession session,HttpServletRequest request,Integer productnumber,Model model,
						Integer firstpay,Integer times)throws Exception{
			
					//根据categoryid获取商品列表，贷款categoryid=10
					List<WdbProductsCustom> wdbProductsList=productsService.findProductsType(10);
					System.out.println("遍历出的商品价格"+wdbProductsList.get(0).getQuotoprice());
				model.addAttribute("wdbProductsList",wdbProductsList);
			 return "products/loan";

		}
				
				
				
				
				@RequestMapping("train")
				public ModelAndView train(WdbProductsQueryVo wdbProductsQueryVo)throws Exception {
					List<WdbProductsCustom> productsList = productsService.findTravelList(wdbProductsQueryVo);
					ModelAndView modelAndView=new ModelAndView();
					//相当 于request的setAttribut，在jsp页面中通过itemsList取数据
					modelAndView.addObject("productsList", productsList);
					//指定视图
					modelAndView.setViewName("products/train");
				return modelAndView;	
				}
				
				
				@RequestMapping("/trainDetail")
				//商品查询列表
				public String trainDetail(HttpSession session,HttpServletRequest request,Integer productnumber,Model model
						)throws Exception{
					//productnumber=Integer.valueOf(request.getParameter("productnumber"));
					System.out.println(productnumber+"?????");
					WdbProductsCustom wdbProductsCustom=productsService.findProductsByProductNumber(productnumber);
					//session.setAttribute("productnumber", productnumber);
					
					model.addAttribute("wdbProductsCustom",wdbProductsCustom);
					
					
		
			 return "products/trainDetail";

		}
				
				
				
				@RequestMapping("appdownload")
				public String appdownload()throws Exception {
				return "products/appdownload";	
				}
				
				@RequestMapping("travel")
				public String travel()throws Exception {
				return "products/travel";	
				}
				@RequestMapping("travelDetail")
				public String travelDetail()throws Exception {
				return "products/travelDetail";	
				}
			
				
			
				
				@RequestMapping("weidaiba")
				public String weidaiba()throws Exception {
				return "products/weidaiba";	
				}
		
}
