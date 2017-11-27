package com.zlzkj.app.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zlzkj.app.mapper.WdbCustomersMapper;
import com.zlzkj.app.model.WdbCategories;
import com.zlzkj.app.model.WdbCustomers;
import com.zlzkj.app.model.WdbOrders;
import com.zlzkj.app.model.WdbProducts;
import com.zlzkj.app.model.WdbStages;
import com.zlzkj.core.mybatis.SqlRunner;
import com.zlzkj.core.sql.Row;
import com.zlzkj.core.sql.SQLBuilder;

@Service
@Transactional
public class CustomerService {

	@Autowired
	private WdbCustomersMapper wdbCustomersMapper;
	
	@Autowired
	private SqlRunner sqlRunner;
	
	public List<WdbCustomers> findCustomersList()throws Exception{
		
		return wdbCustomersMapper.selectAll();
		
	}
	public WdbCustomers findCustmerById(Integer customerid)throws Exception{
		return wdbCustomersMapper.selectByPrimaryKey(customerid);
		
	}
	
public List<Row> findCustomersListPage(Integer page,Integer rows)throws Exception{
	SQLBuilder.getSQLBuilder(WdbCustomers.class);
String str=" select * from wdb_customers limit "+page+","+rows+"";
return  sqlRunner.select(str);
		
	}
	
public List<Row> findCustomerOrderPage(Integer customerid,Integer page,Integer rows)throws Exception{	
	//SQLBuilder sb =
			SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
			.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId").join(WdbCustomers.class, "WdbOrders.CustomerId=WdbCustomers.CustomerId");
	String str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId) where CustomerId="+customerid+" limit "+page+","+rows+"";
		return sqlRunner.select(str);	
	}

public Integer findCustomerOrderCount(Integer customerid)throws Exception{	
	//SQLBuilder sb =
			SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
			.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId").join(WdbCustomers.class, "WdbOrders.CustomerId=WdbCustomers.CustomerId");
	String str="SELECT count(*) FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_categories USING (CategoryId)JOIN wdb_customers USING(CustomerId) where CustomerId="+customerid+"";
		return sqlRunner.count(str);	
	}

public List<Row> findCustomerStage(String ordernumber)throws Exception{	
	//SQLBuilder sb =
			SQLBuilder.getSQLBuilder(WdbOrders.class).join(WdbProducts.class,"WdbOrders.ProductNumber=WdbProducts.ProductNumber")
			.join(WdbStages.class, "WdbOrders.OrderNumber=WdbStages.OrderNumber");
	String str="SELECT * FROM wdb_orders join wdb_products USING(ProductNumber) JOIN wdb_stages USING(OrderNumber) where OrderNumber="+ordernumber+"";
		return sqlRunner.select(str);	
	}
}
