package cn.itcast.ssm.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class WdbOrdersExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WdbOrdersExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andOrdernumberIsNull() {
            addCriterion("OrderNumber is null");
            return (Criteria) this;
        }

        public Criteria andOrdernumberIsNotNull() {
            addCriterion("OrderNumber is not null");
            return (Criteria) this;
        }

        public Criteria andOrdernumberEqualTo(String value) {
            addCriterion("OrderNumber =", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberNotEqualTo(String value) {
            addCriterion("OrderNumber <>", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberGreaterThan(String value) {
            addCriterion("OrderNumber >", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberGreaterThanOrEqualTo(String value) {
            addCriterion("OrderNumber >=", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberLessThan(String value) {
            addCriterion("OrderNumber <", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberLessThanOrEqualTo(String value) {
            addCriterion("OrderNumber <=", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberLike(String value) {
            addCriterion("OrderNumber like", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberNotLike(String value) {
            addCriterion("OrderNumber not like", value, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberIn(List<String> values) {
            addCriterion("OrderNumber in", values, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberNotIn(List<String> values) {
            addCriterion("OrderNumber not in", values, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberBetween(String value1, String value2) {
            addCriterion("OrderNumber between", value1, value2, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrdernumberNotBetween(String value1, String value2) {
            addCriterion("OrderNumber not between", value1, value2, "ordernumber");
            return (Criteria) this;
        }

        public Criteria andOrderdateIsNull() {
            addCriterion("OrderDate is null");
            return (Criteria) this;
        }

        public Criteria andOrderdateIsNotNull() {
            addCriterion("OrderDate is not null");
            return (Criteria) this;
        }

        public Criteria andOrderdateEqualTo(Date value) {
            addCriterion("OrderDate =", value, "orderdate");
            return (Criteria) this;
        }

        public Criteria andOrderdateNotEqualTo(Date value) {
            addCriterion("OrderDate <>", value, "orderdate");
            return (Criteria) this;
        }

        public Criteria andOrderdateGreaterThan(Date value) {
            addCriterion("OrderDate >", value, "orderdate");
            return (Criteria) this;
        }

        public Criteria andOrderdateGreaterThanOrEqualTo(Date value) {
            addCriterion("OrderDate >=", value, "orderdate");
            return (Criteria) this;
        }

        public Criteria andOrderdateLessThan(Date value) {
            addCriterion("OrderDate <", value, "orderdate");
            return (Criteria) this;
        }

        public Criteria andOrderdateLessThanOrEqualTo(Date value) {
            addCriterion("OrderDate <=", value, "orderdate");
            return (Criteria) this;
        }

        public Criteria andOrderdateIn(List<Date> values) {
            addCriterion("OrderDate in", values, "orderdate");
            return (Criteria) this;
        }

        public Criteria andOrderdateNotIn(List<Date> values) {
            addCriterion("OrderDate not in", values, "orderdate");
            return (Criteria) this;
        }

        public Criteria andOrderdateBetween(Date value1, Date value2) {
            addCriterion("OrderDate between", value1, value2, "orderdate");
            return (Criteria) this;
        }

        public Criteria andOrderdateNotBetween(Date value1, Date value2) {
            addCriterion("OrderDate not between", value1, value2, "orderdate");
            return (Criteria) this;
        }

        public Criteria andTimesIsNull() {
            addCriterion("Times is null");
            return (Criteria) this;
        }

        public Criteria andTimesIsNotNull() {
            addCriterion("Times is not null");
            return (Criteria) this;
        }

        public Criteria andTimesEqualTo(Integer value) {
            addCriterion("Times =", value, "times");
            return (Criteria) this;
        }

        public Criteria andTimesNotEqualTo(Integer value) {
            addCriterion("Times <>", value, "times");
            return (Criteria) this;
        }

        public Criteria andTimesGreaterThan(Integer value) {
            addCriterion("Times >", value, "times");
            return (Criteria) this;
        }

        public Criteria andTimesGreaterThanOrEqualTo(Integer value) {
            addCriterion("Times >=", value, "times");
            return (Criteria) this;
        }

        public Criteria andTimesLessThan(Integer value) {
            addCriterion("Times <", value, "times");
            return (Criteria) this;
        }

        public Criteria andTimesLessThanOrEqualTo(Integer value) {
            addCriterion("Times <=", value, "times");
            return (Criteria) this;
        }

        public Criteria andTimesIn(List<Integer> values) {
            addCriterion("Times in", values, "times");
            return (Criteria) this;
        }

        public Criteria andTimesNotIn(List<Integer> values) {
            addCriterion("Times not in", values, "times");
            return (Criteria) this;
        }

        public Criteria andTimesBetween(Integer value1, Integer value2) {
            addCriterion("Times between", value1, value2, "times");
            return (Criteria) this;
        }

        public Criteria andTimesNotBetween(Integer value1, Integer value2) {
            addCriterion("Times not between", value1, value2, "times");
            return (Criteria) this;
        }

        public Criteria andHasfirstpayIsNull() {
            addCriterion("HasFirstPay is null");
            return (Criteria) this;
        }

        public Criteria andHasfirstpayIsNotNull() {
            addCriterion("HasFirstPay is not null");
            return (Criteria) this;
        }

        public Criteria andHasfirstpayEqualTo(Float value) {
            addCriterion("HasFirstPay =", value, "hasfirstpay");
            return (Criteria) this;
        }

        public Criteria andHasfirstpayNotEqualTo(Float value) {
            addCriterion("HasFirstPay <>", value, "hasfirstpay");
            return (Criteria) this;
        }

        public Criteria andHasfirstpayGreaterThan(Float value) {
            addCriterion("HasFirstPay >", value, "hasfirstpay");
            return (Criteria) this;
        }

        public Criteria andHasfirstpayGreaterThanOrEqualTo(Float value) {
            addCriterion("HasFirstPay >=", value, "hasfirstpay");
            return (Criteria) this;
        }

        public Criteria andHasfirstpayLessThan(Float value) {
            addCriterion("HasFirstPay <", value, "hasfirstpay");
            return (Criteria) this;
        }

        public Criteria andHasfirstpayLessThanOrEqualTo(Float value) {
            addCriterion("HasFirstPay <=", value, "hasfirstpay");
            return (Criteria) this;
        }

        public Criteria andHasfirstpayIn(List<Float> values) {
            addCriterion("HasFirstPay in", values, "hasfirstpay");
            return (Criteria) this;
        }

        public Criteria andHasfirstpayNotIn(List<Float> values) {
            addCriterion("HasFirstPay not in", values, "hasfirstpay");
            return (Criteria) this;
        }

        public Criteria andHasfirstpayBetween(Float value1, Float value2) {
            addCriterion("HasFirstPay between", value1, value2, "hasfirstpay");
            return (Criteria) this;
        }

        public Criteria andHasfirstpayNotBetween(Float value1, Float value2) {
            addCriterion("HasFirstPay not between", value1, value2, "hasfirstpay");
            return (Criteria) this;
        }

        public Criteria andRepaymentIsNull() {
            addCriterion("Repayment is null");
            return (Criteria) this;
        }

        public Criteria andRepaymentIsNotNull() {
            addCriterion("Repayment is not null");
            return (Criteria) this;
        }

        public Criteria andRepaymentEqualTo(Float value) {
            addCriterion("Repayment =", value, "repayment");
            return (Criteria) this;
        }

        public Criteria andRepaymentNotEqualTo(Float value) {
            addCriterion("Repayment <>", value, "repayment");
            return (Criteria) this;
        }

        public Criteria andRepaymentGreaterThan(Float value) {
            addCriterion("Repayment >", value, "repayment");
            return (Criteria) this;
        }

        public Criteria andRepaymentGreaterThanOrEqualTo(Float value) {
            addCriterion("Repayment >=", value, "repayment");
            return (Criteria) this;
        }

        public Criteria andRepaymentLessThan(Float value) {
            addCriterion("Repayment <", value, "repayment");
            return (Criteria) this;
        }

        public Criteria andRepaymentLessThanOrEqualTo(Float value) {
            addCriterion("Repayment <=", value, "repayment");
            return (Criteria) this;
        }

        public Criteria andRepaymentIn(List<Float> values) {
            addCriterion("Repayment in", values, "repayment");
            return (Criteria) this;
        }

        public Criteria andRepaymentNotIn(List<Float> values) {
            addCriterion("Repayment not in", values, "repayment");
            return (Criteria) this;
        }

        public Criteria andRepaymentBetween(Float value1, Float value2) {
            addCriterion("Repayment between", value1, value2, "repayment");
            return (Criteria) this;
        }

        public Criteria andRepaymentNotBetween(Float value1, Float value2) {
            addCriterion("Repayment not between", value1, value2, "repayment");
            return (Criteria) this;
        }

        public Criteria andCustomeridIsNull() {
            addCriterion("CustomerId is null");
            return (Criteria) this;
        }

        public Criteria andCustomeridIsNotNull() {
            addCriterion("CustomerId is not null");
            return (Criteria) this;
        }

        public Criteria andCustomeridEqualTo(Integer value) {
            addCriterion("CustomerId =", value, "customerid");
            return (Criteria) this;
        }

        public Criteria andCustomeridNotEqualTo(Integer value) {
            addCriterion("CustomerId <>", value, "customerid");
            return (Criteria) this;
        }

        public Criteria andCustomeridGreaterThan(Integer value) {
            addCriterion("CustomerId >", value, "customerid");
            return (Criteria) this;
        }

        public Criteria andCustomeridGreaterThanOrEqualTo(Integer value) {
            addCriterion("CustomerId >=", value, "customerid");
            return (Criteria) this;
        }

        public Criteria andCustomeridLessThan(Integer value) {
            addCriterion("CustomerId <", value, "customerid");
            return (Criteria) this;
        }

        public Criteria andCustomeridLessThanOrEqualTo(Integer value) {
            addCriterion("CustomerId <=", value, "customerid");
            return (Criteria) this;
        }

        public Criteria andCustomeridIn(List<Integer> values) {
            addCriterion("CustomerId in", values, "customerid");
            return (Criteria) this;
        }

        public Criteria andCustomeridNotIn(List<Integer> values) {
            addCriterion("CustomerId not in", values, "customerid");
            return (Criteria) this;
        }

        public Criteria andCustomeridBetween(Integer value1, Integer value2) {
            addCriterion("CustomerId between", value1, value2, "customerid");
            return (Criteria) this;
        }

        public Criteria andCustomeridNotBetween(Integer value1, Integer value2) {
            addCriterion("CustomerId not between", value1, value2, "customerid");
            return (Criteria) this;
        }

        public Criteria andEmployeeidIsNull() {
            addCriterion("EmployeeId is null");
            return (Criteria) this;
        }

        public Criteria andEmployeeidIsNotNull() {
            addCriterion("EmployeeId is not null");
            return (Criteria) this;
        }

        public Criteria andEmployeeidEqualTo(Long value) {
            addCriterion("EmployeeId =", value, "employeeid");
            return (Criteria) this;
        }

        public Criteria andEmployeeidNotEqualTo(Long value) {
            addCriterion("EmployeeId <>", value, "employeeid");
            return (Criteria) this;
        }

        public Criteria andEmployeeidGreaterThan(Long value) {
            addCriterion("EmployeeId >", value, "employeeid");
            return (Criteria) this;
        }

        public Criteria andEmployeeidGreaterThanOrEqualTo(Long value) {
            addCriterion("EmployeeId >=", value, "employeeid");
            return (Criteria) this;
        }

        public Criteria andEmployeeidLessThan(Long value) {
            addCriterion("EmployeeId <", value, "employeeid");
            return (Criteria) this;
        }

        public Criteria andEmployeeidLessThanOrEqualTo(Long value) {
            addCriterion("EmployeeId <=", value, "employeeid");
            return (Criteria) this;
        }

        public Criteria andEmployeeidIn(List<Long> values) {
            addCriterion("EmployeeId in", values, "employeeid");
            return (Criteria) this;
        }

        public Criteria andEmployeeidNotIn(List<Long> values) {
            addCriterion("EmployeeId not in", values, "employeeid");
            return (Criteria) this;
        }

        public Criteria andEmployeeidBetween(Long value1, Long value2) {
            addCriterion("EmployeeId between", value1, value2, "employeeid");
            return (Criteria) this;
        }

        public Criteria andEmployeeidNotBetween(Long value1, Long value2) {
            addCriterion("EmployeeId not between", value1, value2, "employeeid");
            return (Criteria) this;
        }

        public Criteria andProductnumberIsNull() {
            addCriterion("ProductNumber is null");
            return (Criteria) this;
        }

        public Criteria andProductnumberIsNotNull() {
            addCriterion("ProductNumber is not null");
            return (Criteria) this;
        }

        public Criteria andProductnumberEqualTo(Integer value) {
            addCriterion("ProductNumber =", value, "productnumber");
            return (Criteria) this;
        }

        public Criteria andProductnumberNotEqualTo(Integer value) {
            addCriterion("ProductNumber <>", value, "productnumber");
            return (Criteria) this;
        }

        public Criteria andProductnumberGreaterThan(Integer value) {
            addCriterion("ProductNumber >", value, "productnumber");
            return (Criteria) this;
        }

        public Criteria andProductnumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("ProductNumber >=", value, "productnumber");
            return (Criteria) this;
        }

        public Criteria andProductnumberLessThan(Integer value) {
            addCriterion("ProductNumber <", value, "productnumber");
            return (Criteria) this;
        }

        public Criteria andProductnumberLessThanOrEqualTo(Integer value) {
            addCriterion("ProductNumber <=", value, "productnumber");
            return (Criteria) this;
        }

        public Criteria andProductnumberIn(List<Integer> values) {
            addCriterion("ProductNumber in", values, "productnumber");
            return (Criteria) this;
        }

        public Criteria andProductnumberNotIn(List<Integer> values) {
            addCriterion("ProductNumber not in", values, "productnumber");
            return (Criteria) this;
        }

        public Criteria andProductnumberBetween(Integer value1, Integer value2) {
            addCriterion("ProductNumber between", value1, value2, "productnumber");
            return (Criteria) this;
        }

        public Criteria andProductnumberNotBetween(Integer value1, Integer value2) {
            addCriterion("ProductNumber not between", value1, value2, "productnumber");
            return (Criteria) this;
        }

        public Criteria andOrderstatusIsNull() {
            addCriterion("OrderStatus is null");
            return (Criteria) this;
        }

        public Criteria andOrderstatusIsNotNull() {
            addCriterion("OrderStatus is not null");
            return (Criteria) this;
        }

        public Criteria andOrderstatusEqualTo(Integer value) {
            addCriterion("OrderStatus =", value, "orderstatus");
            return (Criteria) this;
        }

        public Criteria andOrderstatusNotEqualTo(Integer value) {
            addCriterion("OrderStatus <>", value, "orderstatus");
            return (Criteria) this;
        }

        public Criteria andOrderstatusGreaterThan(Integer value) {
            addCriterion("OrderStatus >", value, "orderstatus");
            return (Criteria) this;
        }

        public Criteria andOrderstatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("OrderStatus >=", value, "orderstatus");
            return (Criteria) this;
        }

        public Criteria andOrderstatusLessThan(Integer value) {
            addCriterion("OrderStatus <", value, "orderstatus");
            return (Criteria) this;
        }

        public Criteria andOrderstatusLessThanOrEqualTo(Integer value) {
            addCriterion("OrderStatus <=", value, "orderstatus");
            return (Criteria) this;
        }

        public Criteria andOrderstatusIn(List<Integer> values) {
            addCriterion("OrderStatus in", values, "orderstatus");
            return (Criteria) this;
        }

        public Criteria andOrderstatusNotIn(List<Integer> values) {
            addCriterion("OrderStatus not in", values, "orderstatus");
            return (Criteria) this;
        }

        public Criteria andOrderstatusBetween(Integer value1, Integer value2) {
            addCriterion("OrderStatus between", value1, value2, "orderstatus");
            return (Criteria) this;
        }

        public Criteria andOrderstatusNotBetween(Integer value1, Integer value2) {
            addCriterion("OrderStatus not between", value1, value2, "orderstatus");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}