package com.zlzkj.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zlzkj.app.mapper.WdbCategoriesMapper;
import com.zlzkj.app.mapper.WdbProductsMapper;
import com.zlzkj.app.model.WdbCategories;
import com.zlzkj.app.model.WdbProducts;
import com.zlzkj.core.mybatis.SqlRunner;
import com.zlzkj.core.sql.Row;
import com.zlzkj.core.sql.SQLBuilder;


	@Service
	@Transactional
	public class ProductService {
		@Autowired
		private WdbProductsMapper wdbProductsMapper;
		@Autowired
		private WdbCategoriesMapper wdbCategoriesMapper;
		@Autowired
		private SqlRunner sqlRunner;
	public void insertProduct (String[] demo,String[] demo2,WdbProducts wdbProducts,WdbCategories wdbCategories)throws Exception{
		if(demo2.length!=0){
		String categorydescription="";
		for(int i=0;i<demo.length;i++){
			String description=demo[i]+"，"+demo2[i];
			if(i<demo.length-1){
			categorydescription=categorydescription+description+"；";
			}else{
				categorydescription=categorydescription+description;
				System.out.println(categorydescription);
				wdbCategories.setCategorydescription(categorydescription);
				wdbCategoriesMapper.insert(wdbCategories);
				
			}
		}
		//String a[][]=new String[demo2.length][20];//得到的每一项存储起来
		//int b[]=new int[demo2.length];//每行有几个
		//int num=1;//排列组合的总个数
		for (int j =0; j <demo2.length; j++) {
			String[] attr = demo2[j].split("，");
			int k;
			//b[demo2.length-1]=attr.length;
			//num*=b[demo2.length-1];
			for( k=0;k<attr.length;k++){
			//	a[demo2.length-1][attr.length-1]=attr[k];
				System.out.println(attr[k]+ "??");
				wdbProducts.setProductdescription(categorydescription);
				wdbProductsMapper.insert(wdbProducts);
			}	
		}
		/*String c[]=new String[num];//用来存储所有的排列组合
		//输出
		for (int j =0; j <demo2.length; j++) {
			for( int k=0;k<b[demo2.length-1];k++){
				//a[demo2.length-1][attr.length-1]=attr[k];
			//System.out.println(a[demo2.length-1][k]);
			}	
			//System.out.println(attr[k]+ "++");
		}
		System.out.println(wdbProducts.getProductname());*/
	}
		
	}
	public Integer findProdctsCount()throws Exception{
		SQLBuilder.getSQLBuilder(WdbProducts.class)
		.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId");
		String str="SELECT count(*) FROM wdb_products JOIN wdb_categories USING(CategoryId)";
		return sqlRunner.count(str);
	}
	
	public List<Row> findProdctsPage(Integer page,Integer rows)throws Exception{
		SQLBuilder.getSQLBuilder(WdbProducts.class)
		.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId");
		String str="SELECT * FROM wdb_products JOIN wdb_categories USING(CategoryId) limit "+page+","+rows+"";
		return  sqlRunner.select(str);
	}
	
	public WdbProducts findProductById(Integer productnumber)throws Exception{
		
		return  wdbProductsMapper.selectByPrimaryKey(productnumber);
	}
	
	
public int deleteProductById(Integer productnumber)throws Exception{
		
		return  wdbProductsMapper.deleteByPrimaryKey(productnumber);
	}
public void deleteProductGroup(String categoryid)throws Exception{

	String str="DELETE FROM wdb_products  WHERE CategoryId="+categoryid+"";
	sqlRunner.delete(str);
	String str1="DELETE FROM wdb_categories  WHERE CategoryId="+categoryid+"";
	sqlRunner.delete(str1);
}
	
	
public void updateProduct(WdbProducts wdbProducts){
		
	 wdbProductsMapper.updateByPrimaryKey(wdbProducts);
	}

public List<Row> findProdctgroupPage(Integer page,Integer rows,String functionid)throws Exception{
	SQLBuilder.getSQLBuilder(WdbProducts.class)
	.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId");
	String str;
	if(functionid.equals("0")){
	 str="SELECT *,COUNT(CategoryId)as productcount FROM wdb_products JOIN wdb_categories USING(CategoryId) group by CategoryId limit "+page+","+rows+"";
}else{
	 str="SELECT *,COUNT(CategoryId)as productcount FROM wdb_products JOIN wdb_categories USING(CategoryId) WHERE FunctionId="+functionid+" group by CategoryId limit "+page+","+rows+"";
}
	return  sqlRunner.select(str);
}

public List<Row> findProdctGroup(String functionid)throws Exception{
	SQLBuilder.getSQLBuilder(WdbProducts.class)
	.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId");
	String str;
	if(functionid.equals("0")){
	 str="SELECT *,COUNT(CategoryId)as productcount FROM wdb_products JOIN wdb_categories USING(CategoryId) group by CategoryId";
}else{
	 str="SELECT *,COUNT(CategoryId)as productcount FROM wdb_products JOIN wdb_categories USING(CategoryId) WHERE FunctionId="+functionid+" group by CategoryId";
}
	return  sqlRunner.select(str);
	}


public List<Row> findProdctCategoryPage(Integer page,Integer rows,String categoryid)throws Exception{
	SQLBuilder.getSQLBuilder(WdbProducts.class)
	.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.CategoryId");
	String str;
	if(categoryid.equals("all")){
	 str="SELECT * FROM wdb_products JOIN wdb_categories USING(CategoryId)  limit "+page+","+rows+"";
}else{
	 str="SELECT * FROM wdb_products JOIN wdb_categories USING(CategoryId) WHERE CategoryId="+categoryid+"  limit "+page+","+rows+"";
}
	return  sqlRunner.select(str);
}

public List<Row> findProdctCategory(String categoryid)throws Exception{
	SQLBuilder.getSQLBuilder(WdbProducts.class)
	.join(WdbCategories.class,"WdbProducts.CategoryId=WdbCategories.categoryid");
	String str;
	if(categoryid.equals("all")){
	 str="SELECT * FROM wdb_products JOIN wdb_categories USING(CategoryId)";
}else{
	 str="SELECT *FROM wdb_products JOIN wdb_categories USING(CategoryId) WHERE CategoryId="+categoryid+"";
}
	return  sqlRunner.select(str);
	}

	}

