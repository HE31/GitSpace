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
	//生成订单
		 public void insertOrders(WdbOrdersCustom wdbOrdersCustom,WdbRepayments wdbRepayments,WdbCustomersCustom wdbCustomersCustom,WdbStagesCustom wdbStagesCustom)throws Exception;
		 //订单查询
	    public List<WdbOrdersQueryVo> findOrdersByCustomerId(Integer customerid)throws Exception;
	    //历史订单查询
	 public List<WdbOrdersQueryVo> findAllOrdersByCustomerId(Integer customerid)throws Exception;
	 //根据用户ID跟订单号查询
	 public WdbOrdersQueryVo findOrderByCustomerIdAndOrderNumber(Integer customerid,String ordernumber)throws Exception;
	  
		//用户还款
	 public void insertRepayment(WdbOrdersQueryVo wdbOrdersQueryVo,WdbRepayments wdbRepayments,WdbCustomersCustom wdbCustomersCustom)throws Exception;
	    
	//逾期处理
	 public void updateOrdersByDueKey(WdbOrdersQueryVo wdbOrdersQueryVo,WdbCustomersCustom wdbCustomersCustom)throws Exception;
	 //查找订单
	 public WdbOrders findOrderAndUpdateByOrdernumber(String ordernumber)throws Exception;
	 //查询记录条数
	 public Integer findOrderCountByCustomerId(Integer customerid,String ordernumber)throws Exception;
}
