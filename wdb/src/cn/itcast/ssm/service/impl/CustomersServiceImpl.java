package cn.itcast.ssm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.ssm.mapper.WdbCustomersMapper;
import cn.itcast.ssm.mapper.WdbCustomersMapperCustom;
import cn.itcast.ssm.po.WdbCustomers;
import cn.itcast.ssm.po.WdbCustomersCustom;
import cn.itcast.ssm.po.WdbCustomersQueryVo;
import cn.itcast.ssm.service.CustomersService;


public class CustomersServiceImpl implements CustomersService{
	@Autowired
	private WdbCustomersMapper wdbCustomersMapper;
	@Autowired
	private WdbCustomersMapperCustom wdbCustomersMapperCustom;
	@Override
	public int  insertCustomer(WdbCustomersCustom wdbCustomersCustom)
			throws Exception {
		
		return wdbCustomersMapper.insert(wdbCustomersCustom); 
		
	}
	@Override
	public List<WdbCustomersCustom> findCustomerList(
			WdbCustomersQueryVo wdbCustomersQueryVo) throws Exception {
		// TODO Auto-generated method stub
		return wdbCustomersMapperCustom.findCustomerList(wdbCustomersQueryVo);
	}
	@Override
	public WdbCustomersCustom findCustomerById(Integer customerid)
			throws Exception {
		WdbCustomers wdbCustomers=wdbCustomersMapper.selectByPrimaryKey(customerid);
		WdbCustomersCustom wdbCustomersCustom=new WdbCustomersCustom();
		BeanUtils.copyProperties(wdbCustomers, wdbCustomersCustom);
		return wdbCustomersCustom;
	}
	@Override
	public void EditCustomer(Integer customerid,
			WdbCustomersCustom wdbCustomersCustom) throws Exception {
		wdbCustomersCustom.setCustomerid(customerid);
		wdbCustomersMapper.updateByPrimaryKeySelective(wdbCustomersCustom);
		
	}
	
	

	


	

	

	


	

}
