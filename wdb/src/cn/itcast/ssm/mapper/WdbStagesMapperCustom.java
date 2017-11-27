package cn.itcast.ssm.mapper;

public interface WdbStagesMapperCustom {
	public void updateStagesForOverdue(String ordernumber,String duekey)throws Exception;
	public void updateStagesRepayStatusByOrdernumber(String ordernumber)throws Exception;

}
