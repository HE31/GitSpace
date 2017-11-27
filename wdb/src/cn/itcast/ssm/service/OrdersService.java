package cn.itcast.ssm.service;

import java.util.List;

import cn.itcast.ssm.po.WdbCustomersCustom;
import cn.itcast.ssm.po.WdbOrders;
import cn.itcast.ssm.po.WdbOrdersCustom;
import cn.itcast.ssm.po.WdbOrdersQueryVo;
import cn.itcast.ssm.po.WdbRepayments;
import cn.itcast.ssm.po.WdbStages;
import cn.itcast.ssm.po.WdbStagesCustom;


public interface OrdersService {
	//���ɶ���
		 public void insertOrders(WdbOrdersCustom wdbOrdersCustom,WdbRepayments wdbRepayments,WdbCustomersCustom wdbCustomersCustom,WdbStagesCustom wdbStagesCustom)throws Exception;
		 //������ѯ
	    public List<WdbOrdersQueryVo> findOrdersByCustomerId(Integer customerid)throws Exception;
	    //��ʷ������ѯ
	 public List<WdbOrdersQueryVo> findAllOrdersByCustomerId(Integer customerid)throws Exception;
	 //�����û�ID�������Ų�ѯ
	 public WdbOrdersQueryVo findOrderByCustomerIdAndOrderNumber(Integer customerid,String ordernumber)throws Exception;
	  
		//�û�����
	 public void insertRepayment(WdbOrdersQueryVo wdbOrdersQueryVo,WdbRepayments wdbRepayments,WdbCustomersCustom wdbCustomersCustom)throws Exception;
	    
	//���ڴ���
	 public void updateOrdersByDueKey(WdbOrdersQueryVo wdbOrdersQueryVo,WdbCustomersCustom wdbCustomersCustom)throws Exception;
	 //���Ҷ���
	 public WdbOrders findOrderAndUpdateByOrdernumber(String ordernumber)throws Exception;
	 //��ѯ��¼����
	 public Integer findOrderCountByCustomerId(Integer customerid,String ordernumber)throws Exception;
}
