package cn.itcast.ssm.service;

import java.util.List;

import cn.itcast.ssm.po.WdbRepaymentsCustom;

public interface RepaymentsService {
	 //还款记录查询
	 public List<WdbRepaymentsCustom> findAllRepaymentsByCustomerId(Integer customerid)throws Exception;
}
