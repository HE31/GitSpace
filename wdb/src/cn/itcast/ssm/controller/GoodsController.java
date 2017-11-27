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
//�����·��
@RequestMapping("/products")
public class GoodsController {
	@Autowired
	private ProductsService productsService;
	//һ�㽨�齫��������URLд��һ�£�����ά��
		//@RequestMapping��������URL����ӳ�䣬һ��������Ӧһ��URL
		@RequestMapping("/productsList")
		//��Ʒ��ѯ�б�
		public ModelAndView productsList(HttpServletRequest request,WdbProductsQueryVo wdbProductsQueryVo,Integer categoryid)throws Exception{
	//System.out.println(goodstype+"��Ʒ����+++");
			
	
			List<WdbProductsCustom> productsTypeList=productsService.findProductsType(categoryid);
			
			if(categoryid!=null){
				ModelAndView modelAndView1=new ModelAndView();
				modelAndView1.addObject("productsList", productsTypeList);
				modelAndView1.setViewName("products/productsList");
			
				 return modelAndView1;
			}else{
				//����ModelAndView
				ModelAndView modelAndView=new ModelAndView();
				//�൱ ��request��setAttribut����jspҳ����ͨ��itemsListȡ����
				//modelAndView.addObject("goodsList", goodsList);
			
				//��ҳ����
				String strPage = request.getParameter("page");
				Integer page = 1;
				Integer rows = 8;
				if(strPage!=null)
					page = Integer.parseInt(strPage);
				Integer count= productsService.findProductsList(wdbProductsQueryVo).size();
				List<WdbProductsCustom> productList=productsService.findProductsListPage(wdbProductsQueryVo,(page-1)*rows, rows);
				
				System.out.println(count+"������");
				modelAndView.addObject("page",new Page(page,rows,count,productList));
				System.out.println(new Page(page,rows,count,productList).toString()+"��ҳ");
				//��ҳurl��������
				Map<String, String[]> map = request.getParameterMap();
				String str = CoreUtils.formatUrl(map);
				//ָ����ͼ
				modelAndView.addObject("strParam",str);
				modelAndView.setViewName("products/productsList");
				
				
				return modelAndView;
				
			}
}
		
		
		
		
		/**��Ʒ��ѯ**/
		@RequestMapping("/productsList2")
		//��Ʒ��ѯ�б�
		public ModelAndView productsList2(HttpServletRequest request,WdbProductsQueryVo wdbProductsQueryVo,Integer categoryid)throws Exception{
	//System.out.println(goodstype+"��Ʒ����+++");
			
		//����service���� ���ݿ⣬��ѯ��Ʒ�б�����ʹ�ö�̬
			List<WdbProductsCustom> productsList = productsService.findProductsList(wdbProductsQueryVo);
			List<WdbProductsCustom> productsTypeList=productsService.findProductsType(categoryid);
			if(categoryid!=null){
				ModelAndView modelAndView1=new ModelAndView();
				modelAndView1.addObject("productsList", productsTypeList);
				modelAndView1.setViewName("products/productsList2");
				 return modelAndView1;
			}else{
				//����ModelAndView
				ModelAndView modelAndView=new ModelAndView();
				//�൱ ��request��setAttribut����jspҳ����ͨ��itemsListȡ����
				modelAndView.addObject("productsList", productsList);
				//ָ����ͼ
				modelAndView.setViewName("products/productsList2");
				
	 return modelAndView;
			}
}
		
		
		
		
		
		
		//����ҳ���ѯ�б�
		@RequestMapping("/manageproducts")
		//��Ʒ��ѯ�б�
		public ModelAndView manageProducts(HttpServletRequest request,WdbProductsQueryVo wdbProductsQueryVo)throws Exception{
			
			
		//����service���� ���ݿ⣬��ѯ��Ʒ�б�����ʹ�ö�̬
			List<WdbProductsCustom> productsList = productsService.findProductsList(wdbProductsQueryVo);
			
			
			//����ModelAndView
			ModelAndView modelAndView=new ModelAndView();
			//�൱ ��request��setAttribut����jspҳ����ͨ��itemsListȡ����
			modelAndView.addObject("productsList", productsList);
			
			//ָ����ͼ
			modelAndView.setViewName("products/manageProducts");
			
			
			//��ҳ
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
			//��ҳurl��������
			Map<String, String[]> map = request.getParameterMap();
			String str = CoreUtils.formatUrl(map);
			
			modelAndView.addObject("strParam",str);
			
			
	 return modelAndView;

}
		
		@RequestMapping("/editProducts")
		public String editGoods(Model model,Integer productnumber)throws Exception{
		
			WdbProductsCustom wdbsProductsCustom=productsService.findProductsByProductNumber(productnumber);
		
			//ָ����ͼ
			model.addAttribute("productsCustom",wdbsProductsCustom);
	        return "products/editProducts";
	 }
		
		
		//��Ʒ��Ϣ�޸��ύ
		@RequestMapping("/editProductsSubmit")
		public String editProductsSubmit(HttpServletRequest request,Integer productnumber,WdbProductsCustom wdbProductsCustom,
				MultipartFile products_images//������ƷͼƬ
				)throws Exception{
			
			//��ȡ��ǰϵͳʱ��
			GetDate GD=new GetDate();
		  
			//ԭʼ����
			String originalFilename = products_images.getOriginalFilename();
			//�ϴ�ͼƬ
		   if(products_images!=null && originalFilename!=null && originalFilename.length()>0){

				//�洢ͼƬ������·��
				String pic_path = "D:\\JSP\\wdb\\WdbUpload\\temp\\";
				
				
				//�µ�ͼƬ����
				// UUID.randomUUID()���������ͼƬ
				//String newFileName = GD.getNow()+UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));
				String newFileName =  originalFilename;
				File newFile = new File(pic_path+newFileName);
				
				//���ڴ��е�����д�����
				products_images.transferTo(newFile);
				
				//����ͼƬ����д��itemsCustom��
				wdbProductsCustom.setImageurls(newFileName);
			}
		   productsService.updateProducts(productnumber,wdbProductsCustom);
			return "redirect:manageGoods.action";
}
	
		
		
		
		
		
		
		
				
				@RequestMapping("/productsDetailed")
				//��Ʒ��ѯ�б�
				public String ProductsDetailed(HttpSession session,HttpServletRequest request,Integer productnumber,Model model,
						Integer firstpay,Integer times)throws Exception{
					
					WdbProductsCustom wdbProductsCustom=productsService.findProductsByProductNumber(productnumber);
					//session.setAttribute("productnumber", productnumber);
					WdbCategories wdbCategories =productsService.findDescriptionByCategoryId(wdbProductsCustom.getCategoryid());
					model.addAttribute(wdbProductsCustom);
					
					
		//List<WdbProductsCustom> pl = new ArrayList<WdbProductsCustom>();
		
		Map<String, Object> type = new LinkedHashMap<String, Object>();
		
		if (wdbCategories.getCategorydescription() != null) {
         //��ȡ��Ʒ���Դ���
			String[] attrs = wdbCategories.getCategorydescription().split("��");
			for (int i =0; i <attrs.length; i++) {
				
				String[] attr = attrs[i].split("��");
				List<String> list = new LinkedList<String>();
				System.out.println(attrs[i] + "��Ʒ����");
				
				//attrdata.put("attr" + i, attrs[i]);
				for(int k=1;k<attr.length;k++){
			//��ÿ����Ʒ���ԵĿɹ�ѡ�����Է���list�У�		
			list.add(attr[k]);
				}
				//for (int j = 0; j < attrs.length; j++) {
				//��ÿ������ͨ������ѡ���Զ�Ӧ��������LinkedHashMap
					type.put(attr[0],list);
				
					//.substring�ָ��һ����������ַ���
					//	type.put(attr[0],attrs[i].substring(attrs[i].indexOf("��")+1));
				//}			
			}		
			} 
					   System.out.println(type.toString()+"type");
						// System.out.println(list+"list");
				//����service���� ���ݿ⣬��ѯ��Ʒ�б�����ʹ�ö�̬
		
		model.addAttribute("type",type);
					String productname=wdbProductsCustom.getProductname();
					System.out.println("��Ʒ���ƣ���"+productname);
					//����categoryid��ȡ��Ʒ�б�������ǰ�˱�����ѡ�������û�ѡ�����Ʒ
					List<WdbProductsCustom> wdbProductsList=productsService.findProductsType(wdbProductsCustom.getCategoryid());
					System.out.println("����������Ʒ�۸�"+wdbProductsList.get(0).getQuotoprice());
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
				
				
				/*΢����*/
				@RequestMapping("/loan")
				//��Ʒ��ѯ�б�
				public String loan(HttpSession session,HttpServletRequest request,Integer productnumber,Model model,
						Integer firstpay,Integer times)throws Exception{
			
					//����categoryid��ȡ��Ʒ�б�����categoryid=10
					List<WdbProductsCustom> wdbProductsList=productsService.findProductsType(10);
					System.out.println("����������Ʒ�۸�"+wdbProductsList.get(0).getQuotoprice());
				model.addAttribute("wdbProductsList",wdbProductsList);
			 return "products/loan";

		}
				
				
				
				
				@RequestMapping("train")
				public ModelAndView train(WdbProductsQueryVo wdbProductsQueryVo)throws Exception {
					List<WdbProductsCustom> productsList = productsService.findTravelList(wdbProductsQueryVo);
					ModelAndView modelAndView=new ModelAndView();
					//�൱ ��request��setAttribut����jspҳ����ͨ��itemsListȡ����
					modelAndView.addObject("productsList", productsList);
					//ָ����ͼ
					modelAndView.setViewName("products/train");
				return modelAndView;	
				}
				
				
				@RequestMapping("/trainDetail")
				//��Ʒ��ѯ�б�
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