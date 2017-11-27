package cn.itcast.ssm.service;

import java.util.List;
import java.util.Map;

import cn.itcast.ssm.po.WdbCustomersCustom;
import cn.itcast.ssm.po.WdbCustomersQueryVo;

public interface CustomersService {
	//添加用户
	public int insertCustomer(WdbCustomersCustom wdbCustomersCustom)throws Exception;
	 public List<WdbCustomersCustom> findCustomerList(WdbCustomersQueryVo  wdbCustomersQueryVo)throws Exception;
	 public WdbCustomersCustom findCustomerById(Integer customerid)throws Exception;
	 //编辑个人信息
	 public void EditCustomer(Integer customerid,WdbCustomersCustom WdbCustomersCustom)throws Exception;
	}

