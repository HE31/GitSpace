package com.zlzkj.app.mapper;

import com.zlzkj.app.model.WdbOrders;
import java.util.List;

public interface WdbOrdersMapper {
    int deleteByPrimaryKey(String ordernumber);

    int insert(WdbOrders record);

    WdbOrders selectByPrimaryKey(String ordernumber);

    List<WdbOrders> selectAll();

    int updateByPrimaryKey(WdbOrders record);
}