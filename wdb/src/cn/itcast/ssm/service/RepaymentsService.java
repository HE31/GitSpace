package cn.itcast.ssm.service;

import java.util.List;

import cn.itcast.ssm.po.WdbRepaymentsCustom;

public interface RepaymentsService {
	 //�����¼��ѯ
	 public List<WdbRepaymentsCustom> findAllRepaymentsByCustomerId(Integer customerid)throws Exception;
}
