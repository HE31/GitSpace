package cn.itcast.ssm.mapper;

import cn.itcast.ssm.po.WdbCustomers;
import cn.itcast.ssm.po.WdbCustomersExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WdbCustomersMapper {
    int countByExample(WdbCustomersExample example);

    int deleteByExample(WdbCustomersExample example);

    int deleteByPrimaryKey(Integer customerid);

    int insert(WdbCustomers record);

    int insertSelective(WdbCustomers record);

    List<WdbCustomers> selectByExampleWithBLOBs(WdbCustomersExample example);

    List<WdbCustomers> selectByExample(WdbCustomersExample example);

    WdbCustomers selectByPrimaryKey(Integer customerid);

    int updateByExampleSelective(@Param("record") WdbCustomers record, @Param("example") WdbCustomersExample example);

    int updateByExampleWithBLOBs(@Param("record") WdbCustomers record, @Param("example") WdbCustomersExample example);

    int updateByExample(@Param("record") WdbCustomers record, @Param("example") WdbCustomersExample example);

    int updateByPrimaryKeySelective(WdbCustomers record);

    int updateByPrimaryKeyWithBLOBs(WdbCustomers record);

    int updateByPrimaryKey(WdbCustomers record);
}