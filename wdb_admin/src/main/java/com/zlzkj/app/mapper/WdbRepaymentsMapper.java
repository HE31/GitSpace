package com.zlzkj.app.mapper;

import com.zlzkj.app.model.WdbRepayments;
import java.util.List;

public interface WdbRepaymentsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(WdbRepayments record);

    WdbRepayments selectByPrimaryKey(Integer id);

    List<WdbRepayments> selectAll();

    int updateByPrimaryKey(WdbRepayments record);
}