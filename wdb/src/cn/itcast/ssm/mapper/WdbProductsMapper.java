package cn.itcast.ssm.mapper;

import cn.itcast.ssm.po.WdbProducts;
import cn.itcast.ssm.po.WdbProductsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WdbProductsMapper {
    int countByExample(WdbProductsExample example);

    int deleteByExample(WdbProductsExample example);

    int deleteByPrimaryKey(Integer productnumber);

    int insert(WdbProducts record);

    int insertSelective(WdbProducts record);

    List<WdbProducts> selectByExample(WdbProductsExample example);

    WdbProducts selectByPrimaryKey(Integer productnumber);

    int updateByExampleSelective(@Param("record") WdbProducts record, @Param("example") WdbProductsExample example);

    int updateByExample(@Param("record") WdbProducts record, @Param("example") WdbProductsExample example);

    int updateByPrimaryKeySelective(WdbProducts record);

    int updateByPrimaryKey(WdbProducts record);
}