package cn.itcast.ssm.mapper;

import java.util.List;

import cn.itcast.ssm.po.WdbProductsCustom;
import cn.itcast.ssm.po.WdbProductsQueryVo;



public interface WdbProductsMapperCustom {
	public List<WdbProductsCustom> findProductsList(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
	public List<WdbProductsCustom> findProductsListPage(WdbProductsQueryVo wdbProductsQueryVo,Integer page,Integer rows)throws Exception;
	//商品插入
	public List<WdbProductsCustom> insertProductsList(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
	//根据商品类型分类查找
	public List<WdbProductsCustom> findProductsType(Integer categoryid)throws Exception;
	//根据用户选择属性查询商品信息
	public WdbProductsCustom findProductsListByDetail(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
	//根据商品类型分类查找
		public List<WdbProductsCustom> findProductsBySearchKey(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
		//根据productnumber查找微未来相关产品
		public List<WdbProductsCustom> findTravelList(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
		
}
