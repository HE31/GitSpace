package cn.itcast.ssm.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.ssm.mapper.WdbOrdersMapper;
import cn.itcast.ssm.mapper.WdbOrdersMapperCustom;
import cn.itcast.ssm.mapper.WdbStagesMapper;
import cn.itcast.ssm.mapper.WdbStagesMapperCustom;
import cn.itcast.ssm.po.WdbOrders;
import cn.itcast.ssm.po.WdbOrdersQueryVo;
import cn.itcast.ssm.po.WdbStagesCustom;
import cn.itcast.ssm.po.WdbStagesExample;
import cn.itcast.ssm.po.WdbStagesExample.Criteria;
import cn.itcast.ssm.service.StagesService;

public class StagesServiceImpl implements StagesService{
	@Autowired
	private WdbStagesMapper wdbStagesMapper;
	@Autowired
	private WdbOrdersMapperCustom wdbOrdersMapperCustom;
	@Autowired
	private WdbStagesMapperCustom wdbStagesMapperCustom;
	@Autowired
	private WdbOrdersMapper wdbOrdersMapper;
	
	@Override
	public void insertStages(WdbStagesCustom wdbStagesCustom) throws Exception {
		// TODO Auto-generated method stub
		
		wdbStagesMapper.insert(wdbStagesCustom);
		
	}
	@Override
	public void updateStagesForOverdue(String ordernumber, String duekey)
			throws Exception {
		
		wdbStagesMapperCustom.updateStagesRepayStatusByOrdernumber(ordernumber);
		wdbStagesMapperCustom.updateStagesForOverdue(ordernumber, duekey);
		
	}
	

}
