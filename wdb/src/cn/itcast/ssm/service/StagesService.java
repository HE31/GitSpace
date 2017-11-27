package cn.itcast.ssm.service;

import java.util.List;

import cn.itcast.ssm.po.WdbStagesCustom;

public interface StagesService {
	public void insertStages(WdbStagesCustom wdbStagesCustom)throws Exception;
	public void updateStagesForOverdue(String ordernumber,String duekey)throws Exception;
	

}
