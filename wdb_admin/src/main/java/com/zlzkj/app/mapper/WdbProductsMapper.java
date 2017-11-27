package com.zlzkj.app.mapper;

import com.zlzkj.app.model.WdbProducts;
import java.util.List;

public interface WdbProductsMapper {
    int deleteByPrimaryKey(Integer productnumber);

    int insert(WdbProducts record);

    WdbProducts selectByPrimaryKey(Integer productnumber);

    List<WdbProducts> selectAll();

    int updateByPrimaryKey(WdbProducts record);
}