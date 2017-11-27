package cn.itcast.ssm.mapper;

import java.util.List;

import cn.itcast.ssm.po.WdbProductsCustom;
import cn.itcast.ssm.po.WdbProductsQueryVo;



public interface WdbProductsMapperCustom {
	public List<WdbProductsCustom> findProductsList(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
	public List<WdbProductsCustom> findProductsListPage(WdbProductsQueryVo wdbProductsQueryVo,Integer page,Integer rows)throws Exception;
	//��Ʒ����
	public List<WdbProductsCustom> insertProductsList(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
	//������Ʒ���ͷ������
	public List<WdbProductsCustom> findProductsType(Integer categoryid)throws Exception;
	//�����û�ѡ�����Բ�ѯ��Ʒ��Ϣ
	public WdbProductsCustom findProductsListByDetail(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
	//������Ʒ���ͷ������
		public List<WdbProductsCustom> findProductsBySearchKey(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
		//����productnumber����΢δ����ز�Ʒ
		public List<WdbProductsCustom> findTravelList(WdbProductsQueryVo wdbProductsQueryVo)throws Exception;
		
}
