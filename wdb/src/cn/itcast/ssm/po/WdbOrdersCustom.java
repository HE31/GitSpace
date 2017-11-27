package cn.itcast.ssm.po;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

import cn.itcast.ssm.util.GetDate;

public class WdbOrdersCustom extends WdbOrders{

	@Override
	public String getOrdernumber() {
		Date d = new Date();
		String nowdate = GetDate.dateFormat(d, "yyyyMMddhhmm");
		/*Random rand =new Random();
		int i;
		i=rand.nextInt(90)+10;
		System.out.println("ÈÎÒâÊı×Ö"+i);*/
		
		String ordernumber = super.getCustomerid()+ nowdate;
		
		return ordernumber;
	}


	
}
	
