package cn.itcast.ssm.mapper;

import java.util.List;

import cn.itcast.ssm.po.WdbOrdersQueryVo;

public interface WdbOrdersMapperCustom {
	//分期未还款记录查询
	public List<WdbOrdersQueryVo> findOrderByCustomerId(Integer customerid)throws Exception;
	//历史订单查询
	public List<WdbOrdersQueryVo> findAllOrdersByCustomerId(Integer customerid)throws Exception;
	//分期未还款订单查询
	public WdbOrdersQueryVo findOrderByCustomerIdAndOrderNumber(Integer customerid,String ordernumber)throws Exception;
	//未还款记录数查询
	public Integer findOrderCountByCustomerId(Integer customerid,String ordernumber)throws Exception;

}
