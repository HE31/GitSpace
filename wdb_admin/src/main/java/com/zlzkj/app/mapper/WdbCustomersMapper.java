package com.zlzkj.app.mapper;

import com.zlzkj.app.model.WdbCustomers;
import java.util.List;

public interface WdbCustomersMapper {
    int deleteByPrimaryKey(Integer customerid);

    int insert(WdbCustomers record);

    WdbCustomers selectByPrimaryKey(Integer customerid);

    List<WdbCustomers> selectAll();

    int updateByPrimaryKey(WdbCustomers record);
}