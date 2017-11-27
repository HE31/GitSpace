package cn.itcast.ssm.mapper;

import java.util.List;

import cn.itcast.ssm.po.WdbOrdersQueryVo;
import cn.itcast.ssm.po.WdbRepaymentsCustom;

public interface WdbRepaymentsMapperCustom {
	public List<WdbRepaymentsCustom> findAllRepaymentsByCustomerId(Integer customerid)throws Exception;
}
