package cn.itcast.ssm.mapper;

import java.util.List;

import cn.itcast.ssm.po.WdbCustomersQueryVo;
import cn.itcast.ssm.po.WdbCustomersCustom;

public interface WdbCustomersMapperCustom {
	//≤Â»Î”√ªß
	public  void insertCustomer(WdbCustomersQueryVo wdbCustomersQueryVo) throws Exception;
	public List<WdbCustomersCustom> findCustomerList(WdbCustomersQueryVo wdbCustomersQueryVo)throws Exception;
	
}
