package cn.itcast.ssm.mapper;

import cn.itcast.ssm.po.WdbStages;
import cn.itcast.ssm.po.WdbStagesExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WdbStagesMapper {
    int countByExample(WdbStagesExample example);

    int deleteByExample(WdbStagesExample example);

    int insert(WdbStages record);

    int insertSelective(WdbStages record);

    List<WdbStages> selectByExample(WdbStagesExample example);

    int updateByExampleSelective(@Param("record") WdbStages record, @Param("example") WdbStagesExample example);

    int updateByExample(@Param("record") WdbStages record, @Param("example") WdbStagesExample example);
}