package cn.itcast.ssm.service;

import java.util.List;

import cn.itcast.ssm.po.WdbCategories;
import cn.itcast.ssm.po.WdbProductsCustom;
import cn.itcast.ssm.po.WdbProductsExample;
import cn.itcast.ssm.po.WdbProductsQueryVo;
import cn.itcast.ssm.util.Page;


public interface ProductsService {
	
	//��Ʒ��ѯ�б�
	  public List<WdbProductsCustom> findProductsList(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
	  public List<WdbProductsCustom> findProductsListPage(WdbProductsQueryVo wdbProductsQueryVo,Integer page,Integer rows)throws Exception;
	  //����ID��ѯ��Ʒ
	  public WdbProductsCustom findProductsByProductNumber(Integer productnumber)throws Exception;
	 //�޸���Ʒ��Ϣ
	  public void updateProducts(Integer productnumber,WdbProductsCustom wdbProductsCustom)throws Exception;
	//�����Ʒ   
	  public void insertProducts(WdbProductsCustom wdbProductsCustom)throws Exception;
	  //ɾ����Ʒ
	  public void deleteProductsByProductNumber(Integer productnumber)throws Exception;
	  //�����ѯ
	public List<WdbProductsCustom> findProductsType(Integer categoryid)throws Exception;
	//����categoryid��ѯ��Ʒ����
	public WdbCategories findDescriptionByCategoryId(Integer categoryid)throws Exception;
	 //�����ѯ
	public WdbProductsCustom findProductsListByDetail(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
	//������ѯ
	public List<WdbProductsCustom> findProductsBySearchKey(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
	//����productnumber����΢δ����ز�Ʒ
	public List<WdbProductsCustom> findTravelList(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
	
}
