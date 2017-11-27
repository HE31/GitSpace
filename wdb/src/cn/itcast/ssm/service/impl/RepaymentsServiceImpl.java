package cn.itcast.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.ssm.mapper.WdbRepaymentsMapperCustom;
import cn.itcast.ssm.po.WdbRepaymentsCustom;
import cn.itcast.ssm.service.RepaymentsService;

public class RepaymentsServiceImpl implements RepaymentsService{
	@Autowired
	private WdbRepaymentsMapperCustom WdbRepaymentsMapperCustom;
	@Override
	public List<WdbRepaymentsCustom> findAllRepaymentsByCustomerId(
			Integer customerid) throws Exception {
		// TODO Auto-generated method stub
		return WdbRepaymentsMapperCustom.findAllRepaymentsByCustomerId(customerid);
	}

}
