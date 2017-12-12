package cn.itcast.ssm.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.ssm.mapper.WdbCustomersMapper;
import cn.itcast.ssm.mapper.WdbOrdersMapper;
import cn.itcast.ssm.mapper.WdbOrdersMapperCustom;
import cn.itcast.ssm.mapper.WdbRepaymentsMapper;
import cn.itcast.ssm.mapper.WdbStagesMapper;
import cn.itcast.ssm.po.WdbCustomersCustom;
import cn.itcast.ssm.po.WdbOrders;
import cn.itcast.ssm.po.WdbOrdersCustom;
import cn.itcast.ssm.po.WdbOrdersQueryVo;
import cn.itcast.ssm.po.WdbRepayments;
import cn.itcast.ssm.po.WdbStages;
import cn.itcast.ssm.po.WdbStagesCustom;
import cn.itcast.ssm.po.WdbStagesExample;
import cn.itcast.ssm.po.WdbStagesExample.Criteria;
import cn.itcast.ssm.service.OrdersService;
import cn.itcast.ssm.util.GetDate;

public class OrdersServiceImpl implements OrdersService {
	@Autowired
	private WdbStagesMapper wdbStagesMapper;
	@Autowired
	private WdbCustomersMapper wdbCustomersMpper;
	@Autowired
	private WdbRepaymentsMapper wdbRepaymentsMapper;
	@Autowired
	private WdbOrdersMapper wdbOrdersMapper;
	@Autowired
	private WdbOrdersMapperCustom wdbOrdersMapperCustom;

	@Override
	public void insertOrders(WdbOrdersCustom wdbOrdersCustom,
			WdbRepayments wdbRepayments, WdbCustomersCustom wdbCustomersCustom,WdbStagesCustom wdbStagesCustom)
			throws Exception {

		int T=wdbOrdersCustom.getTimes();
		Date d=new Date();
		
		//购买商品后扣除用户相应信用额度
		wdbCustomersMpper.updateByPrimaryKey(wdbCustomersCustom);
		
		for (Integer i = 1; i <= T; i++) {
			if (wdbOrdersCustom != null) {
				wdbStagesCustom.setTime(i);
				//计算每期还款时间
				Date date2 = new Date(d.getTime()+ (long)i*30 * 24 * 60 * 60 * 1000);
				Date date3 = new Date(d.getTime()+ (long)(i+1)*30 * 24 * 60 * 60 * 1000);
				wdbStagesCustom.setBegindate(date2);
				wdbStagesCustom.setEnddate(date3);
				wdbStagesCustom.setOrdernumber(wdbOrdersCustom.getOrdernumber());
				wdbStagesMapper.insert(wdbStagesCustom);
				
			}
		}
		if(wdbOrdersCustom.getHasfirstpay()!=0){
		if (wdbRepayments != null) {
			
			Date date = new Date(d.getTime());
			wdbStagesCustom.setBegindate(date);
			wdbStagesCustom.setEnddate(date);
			wdbStagesCustom.setTime(0);
			wdbStagesCustom.setRepaystatus(1);
			wdbStagesCustom.setPaydate(d);
			wdbStagesMapper.insert(wdbStagesCustom);
			wdbRepayments.setCreatedate(d);
			wdbRepayments.setDetail("首付");
			wdbStagesCustom.setOrdernumber(wdbOrdersCustom.getOrdernumber());
			wdbRepaymentsMapper.insert(wdbRepayments);
		}
	}
		wdbOrdersCustom.setOrderdate(d);
		wdbOrdersMapper.insert(wdbOrdersCustom);
		
	}

	@Override
	public List<WdbOrdersQueryVo> findOrdersByCustomerId(Integer customerid)
			throws Exception {
		// TODO Auto-generated method stub
		return wdbOrdersMapperCustom.findOrderByCustomerId(customerid);
	}

	@Override
	public void insertRepayment(WdbOrdersQueryVo wdbOrdersQueryVo,
			 WdbRepayments wdbRepayments,
			WdbCustomersCustom wdbCustomersCustom) throws Exception {
		
		Date createdate = GetDate.getNow();
		wdbRepayments.setCreatedate(createdate);
		wdbRepayments.setOrdernumber(wdbOrdersQueryVo
				.getOrdernumber());
		if(wdbOrdersQueryVo.getWdbProductsCustom().getCategoryid()==10){
			wdbRepayments.setDetail("微贷款还款");	
		}else{
		wdbRepayments.setDetail("分期购物还款");
		}
		wdbRepaymentsMapper.insert(wdbRepayments);
		// 还款表中获得当前时间，即还款时间
					
			//updateByExampleSelective用法http://blog.csdn.net/zhanwentao2/article/details/6951207		
		WdbStagesExample example=new WdbStagesExample();
		Criteria criteria = example.createCriteria();
		criteria.andTimeEqualTo(wdbOrdersQueryVo.getWdbStagesCustom().getTime());
		criteria.andOrdernumberEqualTo(wdbOrdersQueryVo.getOrdernumber());
		WdbStagesCustom wdbStagesCustom=new WdbStagesCustom();
		wdbStagesCustom.setRepaystatus(1);
		wdbStagesCustom.setPaydate(createdate);
		wdbStagesMapper.updateByExampleSelective(wdbStagesCustom, example);
		
		if(wdbOrdersQueryVo.getWdbStagesCustom().getTime()==wdbOrdersQueryVo.getTimes()){
			wdbOrdersQueryVo.setOrderstatus(3);
			wdbOrdersMapper.updateByPrimaryKeySelective(wdbOrdersQueryVo);
			
		}
		
		
	}

	@Override
	public void updateOrdersByDueKey(WdbOrdersQueryVo wdbOrdersQueryVo,WdbCustomersCustom wdbCustomersCustom) throws Exception {
	
		
		// TODO Auto-generated method stub
		int t=wdbOrdersQueryVo.getWdbStagesCustom().getTime();
		int T=wdbOrdersQueryVo.getTimes();
		int duekey=7;
		WdbStagesExample example= new WdbStagesExample();
		Criteria criteria =  example.createCriteria();
		criteria.andOrdernumberEqualTo(wdbOrdersQueryVo.getOrdernumber());
		List<WdbStages> wdbStages=wdbStagesMapper.selectByExample(example);
		//
		for(int i=t;i<T;i++){
			//修改逾期还款时间
			
			
			wdbStages.get(i).setBegindate(GetDate.dateAdd(1, wdbStages.get(i).getBegindate(), duekey));	
			wdbStages.get(i).setEnddate(GetDate.dateAdd(1, wdbStages.get(i).getEnddate(), duekey));
			wdbStages.get(i).setRepaystatus(-1);
			wdbStagesMapper.updateByExampleSelective(wdbStages.get(i), example);
			System.out.println(GetDate.dateAdd(1,wdbStages.get(i).getBegindate(), duekey)+"shijian1=======");
		}
		
		}

	@Override
	public List<WdbOrdersQueryVo> findAllOrdersByCustomerId(Integer customerid)
			throws Exception {
		// TODO Auto-generated method stub
		return wdbOrdersMapperCustom.findAllOrdersByCustomerId(customerid);
	}

	@Override
	public WdbOrders findOrderAndUpdateByOrdernumber(String ordernumber)
			throws Exception {
		WdbOrders wdbOrders=wdbOrdersMapper.selectByPrimaryKey(ordernumber);
		wdbOrders.setOrderstatus(2);
		 wdbOrdersMapper.updateByPrimaryKeySelective(wdbOrders);
		 return wdbOrders;
	}

	@Override
	public WdbOrdersQueryVo findOrderByCustomerIdAndOrderNumber(
			Integer customerid, String ordernumber) throws Exception {
		// TODO Auto-generated method stub
		return wdbOrdersMapperCustom.findOrderByCustomerIdAndOrderNumber(customerid, ordernumber);
	}

	@Override
	public Integer findOrderCountByCustomerId(Integer customerid, String ordernumber)
			throws Exception {
		// TODO Auto-generated method stub
		return wdbOrdersMapperCustom.findOrderCountByCustomerId(customerid, ordernumber);
	}

	

	
		
}