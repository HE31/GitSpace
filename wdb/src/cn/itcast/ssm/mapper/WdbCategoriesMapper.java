package cn.itcast.ssm.mapper;

import cn.itcast.ssm.po.WdbCategories;
import cn.itcast.ssm.po.WdbCategoriesExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WdbCategoriesMapper {
    int countByExample(WdbCategoriesExample example);

    int deleteByExample(WdbCategoriesExample example);

    int deleteByPrimaryKey(Integer categoryid);

    int insert(WdbCategories record);

    int insertSelective(WdbCategories record);

    List<WdbCategories> selectByExample(WdbCategoriesExample example);

    WdbCategories selectByPrimaryKey(Integer categoryid);

    int updateByExampleSelective(@Param("record") WdbCategories record, @Param("example") WdbCategoriesExample example);

    int updateByExample(@Param("record") WdbCategories record, @Param("example") WdbCategoriesExample example);

    int updateByPrimaryKeySelective(WdbCategories record);

    int updateByPrimaryKey(WdbCategories record);
}