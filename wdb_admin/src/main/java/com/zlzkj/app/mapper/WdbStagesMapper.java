package com.zlzkj.app.mapper;

import com.zlzkj.app.model.WdbStages;
import java.util.List;

public interface WdbStagesMapper {
    int insert(WdbStages record);

    List<WdbStages> selectAll();
}