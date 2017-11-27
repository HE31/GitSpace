package com.zlzkj.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zlzkj.app.mapper.WdbOrdersMapper;
import com.zlzkj.app.model.WdbCategories;
import com.zlzkj.app.model.WdbCustomers;
import com.zlzkj.app.model.WdbOrders;
import com.zlzkj.app.model.WdbProducts;
import com.zlzkj.core.mybatis.SqlRunner;
import com.zlzkj.core.sql.Row;
import com.zlzkj.core.sql.SQLBuilder;

@Service
@Transactional
public class OrderService {
	@Autowired
	private WdbOrdersMapper WdbordersMapper;
	@Autowired
	private SqlRunner sqlRunner;
public Integer findOrdersListcount()throws Exception{	
	//SQLBuilder sb =
			SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
			.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId").join(WdbCustomers.class, "WdbOrders.CustomerId=WdbCustomers.CustomerId");
	String str="SELECT count(*) FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId)";
		return sqlRunner.count(str);	
	}

public List<Row> findOrdersListPage(Integer page,Integer rows)throws Exception{	
	//SQLBuilder sb =
			SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
			.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId").join(WdbCustomers.class, "WdbOrders.CustomerId=WdbCustomers.CustomerId");
	String str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId)order by OrderDate DESC limit "+page+","+rows+"";
		return sqlRunner.select(str);	
	}
//订单升序降序
public List<Row> findOrdersSortPage(Integer page,Integer rows,String sortkey,String sorttype )throws Exception{	
	
			SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
			.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId").join(WdbCustomers.class, "WdbOrders.CustomerId=WdbCustomers.CustomerId");
	String str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId) order by "+sortkey+ " "+sorttype+" limit "+page+","+rows+" ";
		return sqlRunner.select(str);	
	}
//根据分期次数查询订单
public List<Row> findOrdersClassifyPage(Integer page,Integer rows,String times)throws Exception{	
	
			SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
			.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId").join(WdbCustomers.class, "WdbOrders.CustomerId=WdbCustomers.CustomerId");
	String str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId) where times="+times+" limit "+page+","+rows+" ";
		return sqlRunner.select(str);	
	}

//ordertype根据分期次数查询订单
public List<Row> findTypeClassifyPage(Integer page,Integer rows,String times,Integer orderStatus)throws Exception{	
	//SQLBuilder sb =
			SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
			.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId").join(WdbCustomers.class, "WdbOrders.CustomerId=WdbCustomers.CustomerId");
	String str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId) where times="+times+" and OrderStatus="+orderStatus+" limit "+page+","+rows+" ";
		return sqlRunner.select(str);	
	}
//查询近期订单
public List<Row> findOrdersRecentPage(Integer page,Integer rows,String times)throws Exception{	
	//SQLBuilder sb =
			SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
			.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId").join(WdbCustomers.class, "WdbOrders.CustomerId=WdbCustomers.CustomerId");
			String str;
			if(times.equals("0")){
	str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId) where to_days(OrderDate) = to_days(now()) limit "+page+","+rows+" ";
			}	else if(times.equals("1")){
				str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId) where to_days(now())-to_days(OrderDate) <= 1 limit "+page+","+rows+" ";
			}else if(times.equals("2")){
				str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId)  where date_format(OrderDate, '%Y%m') = date_format(curdate() , '%Y%m') limit "+page+","+rows+" ";
			}else if(times.equals("3")){
				str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId)  where period_diff(date_format(now() , '%Y%m') , date_format(OrderDate, '%Y%m')) =1 limit "+page+","+rows+" ";
			}else if(times.equals("4")){
				str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId)  where date_sub(curdate(), INTERVAL 7 DAY) <= date(OrderDate) limit "+page+","+rows+" ";
			}else if(times.equals("5")){
				str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId)  where date_sub(curdate(), INTERVAL 30 DAY) <= date(OrderDate) limit "+page+","+rows+" ";
			}else if(times.equals("6")){
				str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId)  where date_sub(curdate(), INTERVAL 90 DAY) <= date(OrderDate) limit "+page+","+rows+" ";
			}else {
				str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId)  where date_sub(curdate(), INTERVAL 365 DAY) <= date(OrderDate) limit "+page+","+rows+" ";
			}
	return sqlRunner.select(str);	
	}



//查询近期订单
public List<Row> findTypeRecentPage(Integer page,Integer rows,String times,Integer orderStatus)throws Exception{	
	//SQLBuilder sb =
			SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
			.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId").join(WdbCustomers.class, "WdbOrders.CustomerId=WdbCustomers.CustomerId");
			String str;
			if(times.equals("0")){
	str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId) where to_days(OrderDate) = to_days(now()) and OrderStatus="+orderStatus+" limit "+page+","+rows+" ";
			}	else if(times.equals("1")){
				str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId) where to_days(now())-to_days(OrderDate) <= 1 and OrderStatus="+orderStatus+" limit "+page+","+rows+" ";
			}else if(times.equals("2")){
				str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId)  where date_format(OrderDate, '%Y%m') = date_format(curdate() , '%Y%m') and OrderStatus="+orderStatus+" limit "+page+","+rows+" ";
			}else if(times.equals("3")){
				str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId)  where period_diff(date_format(now() , '%Y%m') , date_format(OrderDate, '%Y%m')) =1 and OrderStatus="+orderStatus+" limit "+page+","+rows+" ";
			}else if(times.equals("4")){
				str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId)  where date_sub(curdate(), INTERVAL 7 DAY) <= date(OrderDate) and OrderStatus="+orderStatus+" limit "+page+","+rows+" ";
			}else if(times.equals("5")){
				str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId)  where date_sub(curdate(), INTERVAL 30 DAY) <= date(OrderDate) and OrderStatus="+orderStatus+" limit "+page+","+rows+" ";
			}else if(times.equals("6")){
				str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId)  where date_sub(curdate(), INTERVAL 90 DAY) <= date(OrderDate) and OrderStatus="+orderStatus+" limit "+page+","+rows+" ";
			}else {
				str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId)  where date_sub(curdate(), INTERVAL 365 DAY) <= date(OrderDate) and OrderStatus="+orderStatus+" limit "+page+","+rows+" ";
			}
	return sqlRunner.select(str);	
	}


//ordertype订单升序降序
public List<Row> findTypeSortPage(Integer page,Integer rows,String sortkey,String sorttype,Integer orderStatus )throws Exception{	
	//SQLBuilder sb =
			SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
			.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId").join(WdbCustomers.class, "WdbOrders.CustomerId=WdbCustomers.CustomerId");
	String str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId) WHERE OrderStatus='"+orderStatus+"' order by "+sortkey+ " "+sorttype+" limit "+page+","+rows+" ";
		return sqlRunner.select(str);	
	}


public void updateOrderStatus(String ordernumber,Integer orderStatus)throws Exception{
	WdbOrders wdborders=WdbordersMapper.selectByPrimaryKey(ordernumber);
	
	wdborders.setOrderstatus(orderStatus);
	WdbordersMapper.updateByPrimaryKey(wdborders);
}

public List<Row> findOrderTypePage(Integer orderStatus,Integer page,Integer rows)throws Exception{
	//SQLBuilder sb =
			SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
			.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId").join(WdbCustomers.class, "WdbOrders.CustomerId=WdbCustomers.CustomerId");
	String str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId) WHERE OrderStatus='"+orderStatus+"'Limit "+page+","+rows+"";
	return  sqlRunner.select(str);
}


public Integer findOrderType(Integer orderStatus)throws Exception{
	//SQLBuilder sb =
			SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
			.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId");
	String str="SELECT count(*) FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId) WHERE OrderStatus='"+orderStatus+"'";
	return  sqlRunner.count(str);
}

public List<Row> findPieChart()throws Exception{
	
	SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
	.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId");
String str="SELECT COUNT(FunctionId) AS functionidcount,FunctionId,OrderNumber FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId) WHERE OrderStatus=3 	GROUP BY FunctionId ";
return  sqlRunner.select(str);
}


public List<Row> findColumnChart()throws Exception{
	
	SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
	.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId");
String str="SELECT sum(QuotoPrice) AS sumprice,COUNT(FunctionId) AS functionidcount,FunctionId,OrderNumber FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId) WHERE OrderStatus=3 	GROUP BY FunctionId ";
return  sqlRunner.select(str);
}

public List<Row> findCircleChart(Integer customerid)throws Exception{
	
	SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
	.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId").join(WdbCustomers.class, "WdbOrders.CustomerId=WdbCustomers.CustomerId");
String str="SELECT count(CategoryId) AS categorycount,FunctionId,OrderNumber,ProductName,CustNick FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId) JOIN wdb_customers USING(CustomerId) WHERE OrderStatus=3 AND CustomerId='"+customerid+"' GROUP BY CategoryId  ORDER BY categorycount DESC ";
return  sqlRunner.select(str);
}

public List<Row> findgroupcolumn()throws Exception{
	
	SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
	.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId");
String str="SELECT FunctionId,OrderNumber,Times FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId) WHERE OrderStatus=3  ";
return  sqlRunner.select(str);
}

public List<Row> findlinecolumn()throws Exception{
	
	SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
	.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId");
String str="SELECT YEAR(OrderDate) as yearsale,"
		+ "FunctionId,"
		+ "SUM(CASE WHEN MONTH(OrderDate) =1 THEN Repayment*Times ELSE 0 END)as jan,   "
		+ "SUM(CASE WHEN MONTH(OrderDate) =2 THEN Repayment*Times ELSE 0 END)as feb,"
		+ "SUM(CASE WHEN MONTH(OrderDate) =3 THEN Repayment*Times ELSE 0 END)as mar,"
		+ "SUM(CASE WHEN MONTH(OrderDate) =4 THEN Repayment*Times ELSE 0 END)as apr,"
		+ "SUM(CASE WHEN MONTH(OrderDate) =5 THEN Repayment*Times ELSE 0 END)as may,"
		+ "SUM(CASE WHEN MONTH(OrderDate) =6 THEN Repayment*Times ELSE 0 END) as jun,"
		+ "SUM(CASE WHEN MONTH(OrderDate) =7 THEN Repayment*Times ELSE 0 END)as jul,"
		+ "SUM(CASE WHEN MONTH(OrderDate) =8 THEN Repayment*Times ELSE 0 END) as aug,"
		+ "SUM(CASE WHEN MONTH(OrderDate) =9 THEN Repayment*Times ELSE 0 END)as sept,"
		+ "SUM(CASE WHEN MONTH(OrderDate) =10 THEN Repayment*Times ELSE 0 END) as oct,"
		+ "SUM(CASE WHEN MONTH(OrderDate) =11 THEN Repayment*Times ELSE 0 END) as nov,"
		+ "SUM(CASE WHEN MONTH(OrderDate) =12 THEN Repayment*Times ELSE 0 END) as dece "
		+ "FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId) "
		+ "WHERE OrderStatus=3 GROUP BY FunctionId  ";
return  sqlRunner.select(str);
}


//订单模糊查询
public List<Row> findOrderQueryPage(Integer page,Integer rows,String searchkey,String orderStatus)throws Exception{	
	//SQLBuilder sb =
			SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
			.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId").join(WdbCustomers.class, "WdbOrders.CustomerId=WdbCustomers.CustomerId");
			String str;
			if(orderStatus.equals("all")){
			 str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId) where concat(OrderNumber,Times,OrderDate,HasFirstPay,Repayment,CustNick,CustName,CustAddress,CustPhoneNum,ProductName,QuotoPrice,ProductDescription) like '%"+searchkey+"%' limit "+page+","+rows+"";
	}else{
		     str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId) where concat(OrderNumber,Times,OrderDate,HasFirstPay,Repayment,CustNick,CustName,CustAddress,CustPhoneNum,ProductName,QuotoPrice,ProductDescription) like '%"+searchkey+"%' and OrderStatus="+orderStatus+" limit "+page+","+rows+"";
	}
			return sqlRunner.select(str);	
	}
public WdbOrders findOrderById(String ordernumber)throws Exception{
	
	return WdbordersMapper.selectByPrimaryKey(ordernumber);
}
}
