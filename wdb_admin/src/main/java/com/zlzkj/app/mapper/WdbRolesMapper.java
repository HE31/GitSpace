package com.zlzkj.app.mapper;

import com.zlzkj.app.model.WdbRoles;
import java.util.List;

public interface WdbRolesMapper {
    int deleteByPrimaryKey(Integer roleid);

    int insert(WdbRoles record);

    WdbRoles selectByPrimaryKey(Integer roleid);

    List<WdbRoles> selectAll();

    int updateByPrimaryKey(WdbRoles record);
}