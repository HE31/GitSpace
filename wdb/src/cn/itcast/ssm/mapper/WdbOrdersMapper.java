package cn.itcast.ssm.mapper;

import cn.itcast.ssm.po.WdbOrders;
import cn.itcast.ssm.po.WdbOrdersExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WdbOrdersMapper {
    int countByExample(WdbOrdersExample example);

    int deleteByExample(WdbOrdersExample example);

    int deleteByPrimaryKey(String ordernumber);

    int insert(WdbOrders record);

    int insertSelective(WdbOrders record);

    List<WdbOrders> selectByExample(WdbOrdersExample example);

    WdbOrders selectByPrimaryKey(String ordernumber);

    int updateByExampleSelective(@Param("record") WdbOrders record, @Param("example") WdbOrdersExample example);

    int updateByExample(@Param("record") WdbOrders record, @Param("example") WdbOrdersExample example);

    int updateByPrimaryKeySelective(WdbOrders record);

    int updateByPrimaryKey(WdbOrders record);
}