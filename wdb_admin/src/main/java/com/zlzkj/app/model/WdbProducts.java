package com.zlzkj.app.model;

public class WdbProducts {
    private Integer productnumber;

    private String productname;

    private String productdescription;

    private Float quotoprice;

    private Float retailprice;

    private String imageurls;

    private Integer quantityonhand;

    private Integer categoryid;

    public Integer getProductnumber() {
        return productnumber;
    }

    public void setProductnumber(Integer productnumber) {
        this.productnumber = productnumber;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname == null ? null : productname.trim();
    }

    public String getProductdescription() {
        return productdescription;
    }

    public void setProductdescription(String productdescription) {
        this.productdescription = productdescription == null ? null : productdescription.trim();
    }

    public Float getQuotoprice() {
        return quotoprice;
    }

    public void setQuotoprice(Float quotoprice) {
        this.quotoprice = quotoprice;
    }

    public Float getRetailprice() {
        return retailprice;
    }

    public void setRetailprice(Float retailprice) {
        this.retailprice = retailprice;
    }

    public String getImageurls() {
        return imageurls;
    }

    public void setImageurls(String imageurls) {
        this.imageurls = imageurls == null ? null : imageurls.trim();
    }

    public Integer getQuantityonhand() {
        return quantityonhand;
    }

    public void setQuantityonhand(Integer quantityonhand) {
        this.quantityonhand = quantityonhand;
    }

    public Integer getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(Integer categoryid) {
        this.categoryid = categoryid;
    }
}