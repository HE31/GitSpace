package com.zlzkj.app.mapper;

import com.zlzkj.app.model.WdbCategories;
import java.util.List;

public interface WdbCategoriesMapper {
    int deleteByPrimaryKey(Integer categoryid);

    int insert(WdbCategories record);

    WdbCategories selectByPrimaryKey(Integer categoryid);

    List<WdbCategories> selectAll();

    int updateByPrimaryKey(WdbCategories record);
}