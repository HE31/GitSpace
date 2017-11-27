package com.zlzkj.app.model;

import java.util.Date;

public class WdbStages {
    private String ordernumber;

    private Integer time;

    private Date begindate;

    private Date enddate;

    private Date paydate;

    private Integer repaystatus;

    private Float money;

    public String getOrdernumber() {
        return ordernumber;
    }

    public void setOrdernumber(String ordernumber) {
        this.ordernumber = ordernumber == null ? null : ordernumber.trim();
    }

    public Integer getTime() {
        return time;
    }

    public void setTime(Integer time) {
        this.time = time;
    }

    public Date getBegindate() {
        return begindate;
    }

    public void setBegindate(Date begindate) {
        this.begindate = begindate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    public Date getPaydate() {
        return paydate;
    }

    public void setPaydate(Date paydate) {
        this.paydate = paydate;
    }

    public Integer getRepaystatus() {
        return repaystatus;
    }

    public void setRepaystatus(Integer repaystatus) {
        this.repaystatus = repaystatus;
    }

    public Float getMoney() {
        return money;
    }

    public void setMoney(Float money) {
        this.money = money;
    }
}