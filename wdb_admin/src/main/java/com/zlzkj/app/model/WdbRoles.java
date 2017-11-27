package com.zlzkj.app.model;

public class WdbRoles {
    private Integer roleid;

    private String rolename;

    private String rolepwd;

    private Integer rolestatus;

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename == null ? null : rolename.trim();
    }

    public String getRolepwd() {
        return rolepwd;
    }

    public void setRolepwd(String rolepwd) {
        this.rolepwd = rolepwd == null ? null : rolepwd.trim();
    }

    public Integer getRolestatus() {
        return rolestatus;
    }

    public void setRolestatus(Integer rolestatus) {
        this.rolestatus = rolestatus;
    }
}