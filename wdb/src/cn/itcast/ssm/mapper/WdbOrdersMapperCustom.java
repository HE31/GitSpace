package cn.itcast.ssm.mapper;

import java.util.List;

import cn.itcast.ssm.po.WdbOrdersQueryVo;

public interface WdbOrdersMapperCustom {
	//����δ�����¼��ѯ
	public List<WdbOrdersQueryVo> findOrderByCustomerId(Integer customerid)throws Exception;
	//��ʷ������ѯ
	public List<WdbOrdersQueryVo> findAllOrdersByCustomerId(Integer customerid)throws Exception;
	//����δ�������ѯ
	public WdbOrdersQueryVo findOrderByCustomerIdAndOrderNumber(Integer customerid,String ordernumber)throws Exception;
	//δ�����¼����ѯ
	public Integer findOrderCountByCustomerId(Integer customerid,String ordernumber)throws Exception;

}
