package com.zlzkj.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zlzkj.app.mapper.WdbRolesMapper;
import com.zlzkj.app.model.WdbRoles;
import com.zlzkj.core.mybatis.SqlRunner;
import com.zlzkj.core.sql.Row;
import com.zlzkj.core.sql.SQLBuilder;

@Service
@Transactional
public class RoleService {

	@Autowired
	private WdbRolesMapper wdbRolesMapper;
	
	@Autowired
	private SqlRunner sqlRunner;
	
	public List<Row> findRole(String account,String pwd)throws Exception{
		SQLBuilder.getSQLBuilder(WdbRoles.class);
		 String str=" select * from wdb_roles where RoleName='"+account+"' and RolePwd='"+pwd+"'";
		return sqlRunner.select(str);
		
	}
}
