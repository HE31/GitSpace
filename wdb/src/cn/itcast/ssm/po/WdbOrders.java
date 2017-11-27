package cn.itcast.ssm.po;

import java.util.Date;

public class WdbOrders {
    private String ordernumber;

    private Date orderdate;

    private Integer times;

    private Float hasfirstpay;

    private Float repayment;

    private Integer customerid;

    private Long employeeid;

    private Integer productnumber;

    private Integer orderstatus;

    public String getOrdernumber() {
        return ordernumber;
    }

    public void setOrdernumber(String ordernumber) {
        this.ordernumber = ordernumber == null ? null : ordernumber.trim();
    }

    public Date getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(Date orderdate) {
        this.orderdate = orderdate;
    }

    public Integer getTimes() {
        return times;
    }

    public void setTimes(Integer times) {
        this.times = times;
    }

    public Float getHasfirstpay() {
        return hasfirstpay;
    }

    public void setHasfirstpay(Float hasfirstpay) {
        this.hasfirstpay = hasfirstpay;
    }

    public Float getRepayment() {
        return repayment;
    }

    public void setRepayment(Float repayment) {
        this.repayment = repayment;
    }

    public Integer getCustomerid() {
        return customerid;
    }

    public void setCustomerid(Integer customerid) {
        this.customerid = customerid;
    }

    public Long getEmployeeid() {
        return employeeid;
    }

    public void setEmployeeid(Long employeeid) {
        this.employeeid = employeeid;
    }

    public Integer getProductnumber() {
        return productnumber;
    }

    public void setProductnumber(Integer productnumber) {
        this.productnumber = productnumber;
    }

    public Integer getOrderstatus() {
        return orderstatus;
    }

    public void setOrderstatus(Integer orderstatus) {
        this.orderstatus = orderstatus;
    }
}