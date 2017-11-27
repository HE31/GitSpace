package cn.itcast.ssm.service;

import java.util.List;

import cn.itcast.ssm.po.WdbCategories;
import cn.itcast.ssm.po.WdbProductsCustom;
import cn.itcast.ssm.po.WdbProductsExample;
import cn.itcast.ssm.po.WdbProductsQueryVo;
import cn.itcast.ssm.util.Page;


public interface ProductsService {
	
	//商品查询列表
	  public List<WdbProductsCustom> findProductsList(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
	  public List<WdbProductsCustom> findProductsListPage(WdbProductsQueryVo wdbProductsQueryVo,Integer page,Integer rows)throws Exception;
	  //根据ID查询商品
	  public WdbProductsCustom findProductsByProductNumber(Integer productnumber)throws Exception;
	 //修改商品信息
	  public void updateProducts(Integer productnumber,WdbProductsCustom wdbProductsCustom)throws Exception;
	//添加商品   
	  public void insertProducts(WdbProductsCustom wdbProductsCustom)throws Exception;
	  //删除商品
	  public void deleteProductsByProductNumber(Integer productnumber)throws Exception;
	  //分类查询
	public List<WdbProductsCustom> findProductsType(Integer categoryid)throws Exception;
	//根据categoryid查询商品属性
	public WdbCategories findDescriptionByCategoryId(Integer categoryid)throws Exception;
	 //分类查询
	public WdbProductsCustom findProductsListByDetail(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
	//搜索查询
	public List<WdbProductsCustom> findProductsBySearchKey(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
	//根据productnumber查找微未来相关产品
	public List<WdbProductsCustom> findTravelList(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
	
}
