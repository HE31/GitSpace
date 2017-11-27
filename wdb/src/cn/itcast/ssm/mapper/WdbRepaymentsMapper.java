package cn.itcast.ssm.mapper;

import cn.itcast.ssm.po.WdbRepayments;
import cn.itcast.ssm.po.WdbRepaymentsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WdbRepaymentsMapper {
    int countByExample(WdbRepaymentsExample example);

    int deleteByExample(WdbRepaymentsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WdbRepayments record);

    int insertSelective(WdbRepayments record);

    List<WdbRepayments> selectByExample(WdbRepaymentsExample example);

    WdbRepayments selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WdbRepayments record, @Param("example") WdbRepaymentsExample example);

    int updateByExample(@Param("record") WdbRepayments record, @Param("example") WdbRepaymentsExample example);

    int updateByPrimaryKeySelective(WdbRepayments record);

    int updateByPrimaryKey(WdbRepayments record);
}