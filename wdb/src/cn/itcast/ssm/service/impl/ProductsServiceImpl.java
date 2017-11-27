package cn.itcast.ssm.service.impl;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;









import cn.itcast.ssm.mapper.WdbCategoriesMapper;
import cn.itcast.ssm.mapper.WdbProductsMapper;
import cn.itcast.ssm.mapper.WdbProductsMapperCustom;
import cn.itcast.ssm.po.WdbCategories;
import cn.itcast.ssm.po.WdbProducts;
import cn.itcast.ssm.po.WdbProductsCustom;
import cn.itcast.ssm.po.WdbProductsExample;
import cn.itcast.ssm.po.WdbProductsQueryVo;
import cn.itcast.ssm.service.ProductsService;
import cn.itcast.ssm.util.Page;

public class ProductsServiceImpl implements ProductsService{
	@Autowired
	private WdbProductsMapper wdbProductsMapper;
	@Autowired
	private WdbProductsMapperCustom wdbProductsMapperCustom;
	@Autowired
	private WdbCategoriesMapper wdbCategoriesMapper;
	

	@Override
	public List<WdbProductsCustom> findProductsList(
			WdbProductsQueryVo wdbProductsQueryVo) throws Exception {
		// TODO Auto-generated method stub
		return wdbProductsMapperCustom.findProductsList(wdbProductsQueryVo);
	}
	@Override
	public List<WdbProductsCustom> findProductsListPage(
			WdbProductsQueryVo wdbProductsQueryVo, Integer page, Integer rows)
			throws Exception {
		// TODO Auto-generated method stub
		return wdbProductsMapperCustom.findProductsListPage(wdbProductsQueryVo, page, rows);
	}
	
	@Override
	public void insertProducts(WdbProductsCustom wdbProductsCustom)
			throws Exception {
		wdbProductsMapper.insert(wdbProductsCustom);
		
	}
	@Override
	public List<WdbProductsCustom> findProductsType(Integer categoryid)
			throws Exception {
		 List<WdbProductsCustom> wdbProductsCustom=wdbProductsMapperCustom.findProductsType(categoryid);
		return wdbProductsCustom;
	}
	@Override
	public WdbProductsCustom findProductsByProductNumber(Integer productnumber)
			throws Exception {
		
			WdbProducts wdbProducts=wdbProductsMapper.selectByPrimaryKey(productnumber);
			WdbProductsCustom wdbProductsCustom = new WdbProductsCustom();
			//将items的内容拷贝到goodsCustom
			BeanUtils.copyProperties(wdbProducts, wdbProductsCustom);

			return wdbProductsCustom;
		}
		
	
	@Override
	public void updateProducts(Integer productnumber,
			WdbProductsCustom wdbProductsCustom) throws Exception {
		// TODO Auto-generated method stub
		wdbProductsMapper.updateByPrimaryKey(wdbProductsCustom);
		
	}
	@Override
	public void deleteProductsByProductNumber(Integer productnumber)
			throws Exception {
		// TODO Auto-generated method stub
		wdbProductsMapper.deleteByPrimaryKey(productnumber);
	}
	@Override
	public WdbCategories findDescriptionByCategoryId(Integer categoryid)
			throws Exception {
		// TODO Auto-generated method stub
		WdbCategories wdbCategories=wdbCategoriesMapper.selectByPrimaryKey(categoryid);
		return wdbCategories;
	}
	@Override
	public WdbProductsCustom findProductsListByDetail(WdbProductsQueryVo wdbProductsQueryVo)
			throws Exception {
		// TODO Auto-generated method stub
		return wdbProductsMapperCustom.findProductsListByDetail(wdbProductsQueryVo);
	}
	@Override
	public List<WdbProductsCustom> findProductsBySearchKey(
			WdbProductsQueryVo wdbProductsQueryVo) throws Exception {
		// TODO Auto-generated method stub
		return wdbProductsMapperCustom.findProductsBySearchKey(wdbProductsQueryVo);
	}
	@Override
	public List<WdbProductsCustom> findTravelList(
			WdbProductsQueryVo wdbProductsQueryVo) throws Exception {
		// TODO Auto-generated method stub
		return wdbProductsMapperCustom.findTravelList(wdbProductsQueryVo);
	}
	
	
	

}
