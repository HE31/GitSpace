package com.zlzkj.app.model;

public class WdbCategories {
    private Integer categoryid;

    private String categorydescription;

    private Integer functionid;

    public Integer getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(Integer categoryid) {
        this.categoryid = categoryid;
    }

    public String getCategorydescription() {
        return categorydescription;
    }

    public void setCategorydescription(String categorydescription) {
        this.categorydescription = categorydescription == null ? null : categorydescription.trim();
    }

    public Integer getFunctionid() {
        return functionid;
    }

    public void setFunctionid(Integer functionid) {
        this.functionid = functionid;
    }
}