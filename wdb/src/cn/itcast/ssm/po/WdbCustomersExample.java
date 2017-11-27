package cn.itcast.ssm.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class WdbCustomersExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WdbCustomersExample() {
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

        public Criteria andCustnickIsNull() {
            addCriterion("CustNick is null");
            return (Criteria) this;
        }

        public Criteria andCustnickIsNotNull() {
            addCriterion("CustNick is not null");
            return (Criteria) this;
        }

        public Criteria andCustnickEqualTo(String value) {
            addCriterion("CustNick =", value, "custnick");
            return (Criteria) this;
        }

        public Criteria andCustnickNotEqualTo(String value) {
            addCriterion("CustNick <>", value, "custnick");
            return (Criteria) this;
        }

        public Criteria andCustnickGreaterThan(String value) {
            addCriterion("CustNick >", value, "custnick");
            return (Criteria) this;
        }

        public Criteria andCustnickGreaterThanOrEqualTo(String value) {
            addCriterion("CustNick >=", value, "custnick");
            return (Criteria) this;
        }

        public Criteria andCustnickLessThan(String value) {
            addCriterion("CustNick <", value, "custnick");
            return (Criteria) this;
        }

        public Criteria andCustnickLessThanOrEqualTo(String value) {
            addCriterion("CustNick <=", value, "custnick");
            return (Criteria) this;
        }

        public Criteria andCustnickLike(String value) {
            addCriterion("CustNick like", value, "custnick");
            return (Criteria) this;
        }

        public Criteria andCustnickNotLike(String value) {
            addCriterion("CustNick not like", value, "custnick");
            return (Criteria) this;
        }

        public Criteria andCustnickIn(List<String> values) {
            addCriterion("CustNick in", values, "custnick");
            return (Criteria) this;
        }

        public Criteria andCustnickNotIn(List<String> values) {
            addCriterion("CustNick not in", values, "custnick");
            return (Criteria) this;
        }

        public Criteria andCustnickBetween(String value1, String value2) {
            addCriterion("CustNick between", value1, value2, "custnick");
            return (Criteria) this;
        }

        public Criteria andCustnickNotBetween(String value1, String value2) {
            addCriterion("CustNick not between", value1, value2, "custnick");
            return (Criteria) this;
        }

        public Criteria andCustnameIsNull() {
            addCriterion("CustName is null");
            return (Criteria) this;
        }

        public Criteria andCustnameIsNotNull() {
            addCriterion("CustName is not null");
            return (Criteria) this;
        }

        public Criteria andCustnameEqualTo(String value) {
            addCriterion("CustName =", value, "custname");
            return (Criteria) this;
        }

        public Criteria andCustnameNotEqualTo(String value) {
            addCriterion("CustName <>", value, "custname");
            return (Criteria) this;
        }

        public Criteria andCustnameGreaterThan(String value) {
            addCriterion("CustName >", value, "custname");
            return (Criteria) this;
        }

        public Criteria andCustnameGreaterThanOrEqualTo(String value) {
            addCriterion("CustName >=", value, "custname");
            return (Criteria) this;
        }

        public Criteria andCustnameLessThan(String value) {
            addCriterion("CustName <", value, "custname");
            return (Criteria) this;
        }

        public Criteria andCustnameLessThanOrEqualTo(String value) {
            addCriterion("CustName <=", value, "custname");
            return (Criteria) this;
        }

        public Criteria andCustnameLike(String value) {
            addCriterion("CustName like", value, "custname");
            return (Criteria) this;
        }

        public Criteria andCustnameNotLike(String value) {
            addCriterion("CustName not like", value, "custname");
            return (Criteria) this;
        }

        public Criteria andCustnameIn(List<String> values) {
            addCriterion("CustName in", values, "custname");
            return (Criteria) this;
        }

        public Criteria andCustnameNotIn(List<String> values) {
            addCriterion("CustName not in", values, "custname");
            return (Criteria) this;
        }

        public Criteria andCustnameBetween(String value1, String value2) {
            addCriterion("CustName between", value1, value2, "custname");
            return (Criteria) this;
        }

        public Criteria andCustnameNotBetween(String value1, String value2) {
            addCriterion("CustName not between", value1, value2, "custname");
            return (Criteria) this;
        }

        public Criteria andCustidcardIsNull() {
            addCriterion("CustIdCard is null");
            return (Criteria) this;
        }

        public Criteria andCustidcardIsNotNull() {
            addCriterion("CustIdCard is not null");
            return (Criteria) this;
        }

        public Criteria andCustidcardEqualTo(String value) {
            addCriterion("CustIdCard =", value, "custidcard");
            return (Criteria) this;
        }

        public Criteria andCustidcardNotEqualTo(String value) {
            addCriterion("CustIdCard <>", value, "custidcard");
            return (Criteria) this;
        }

        public Criteria andCustidcardGreaterThan(String value) {
            addCriterion("CustIdCard >", value, "custidcard");
            return (Criteria) this;
        }

        public Criteria andCustidcardGreaterThanOrEqualTo(String value) {
            addCriterion("CustIdCard >=", value, "custidcard");
            return (Criteria) this;
        }

        public Criteria andCustidcardLessThan(String value) {
            addCriterion("CustIdCard <", value, "custidcard");
            return (Criteria) this;
        }

        public Criteria andCustidcardLessThanOrEqualTo(String value) {
            addCriterion("CustIdCard <=", value, "custidcard");
            return (Criteria) this;
        }

        public Criteria andCustidcardLike(String value) {
            addCriterion("CustIdCard like", value, "custidcard");
            return (Criteria) this;
        }

        public Criteria andCustidcardNotLike(String value) {
            addCriterion("CustIdCard not like", value, "custidcard");
            return (Criteria) this;
        }

        public Criteria andCustidcardIn(List<String> values) {
            addCriterion("CustIdCard in", values, "custidcard");
            return (Criteria) this;
        }

        public Criteria andCustidcardNotIn(List<String> values) {
            addCriterion("CustIdCard not in", values, "custidcard");
            return (Criteria) this;
        }

        public Criteria andCustidcardBetween(String value1, String value2) {
            addCriterion("CustIdCard between", value1, value2, "custidcard");
            return (Criteria) this;
        }

        public Criteria andCustidcardNotBetween(String value1, String value2) {
            addCriterion("CustIdCard not between", value1, value2, "custidcard");
            return (Criteria) this;
        }

        public Criteria andCustaddressIsNull() {
            addCriterion("CustAddress is null");
            return (Criteria) this;
        }

        public Criteria andCustaddressIsNotNull() {
            addCriterion("CustAddress is not null");
            return (Criteria) this;
        }

        public Criteria andCustaddressEqualTo(String value) {
            addCriterion("CustAddress =", value, "custaddress");
            return (Criteria) this;
        }

        public Criteria andCustaddressNotEqualTo(String value) {
            addCriterion("CustAddress <>", value, "custaddress");
            return (Criteria) this;
        }

        public Criteria andCustaddressGreaterThan(String value) {
            addCriterion("CustAddress >", value, "custaddress");
            return (Criteria) this;
        }

        public Criteria andCustaddressGreaterThanOrEqualTo(String value) {
            addCriterion("CustAddress >=", value, "custaddress");
            return (Criteria) this;
        }

        public Criteria andCustaddressLessThan(String value) {
            addCriterion("CustAddress <", value, "custaddress");
            return (Criteria) this;
        }

        public Criteria andCustaddressLessThanOrEqualTo(String value) {
            addCriterion("CustAddress <=", value, "custaddress");
            return (Criteria) this;
        }

        public Criteria andCustaddressLike(String value) {
            addCriterion("CustAddress like", value, "custaddress");
            return (Criteria) this;
        }

        public Criteria andCustaddressNotLike(String value) {
            addCriterion("CustAddress not like", value, "custaddress");
            return (Criteria) this;
        }

        public Criteria andCustaddressIn(List<String> values) {
            addCriterion("CustAddress in", values, "custaddress");
            return (Criteria) this;
        }

        public Criteria andCustaddressNotIn(List<String> values) {
            addCriterion("CustAddress not in", values, "custaddress");
            return (Criteria) this;
        }

        public Criteria andCustaddressBetween(String value1, String value2) {
            addCriterion("CustAddress between", value1, value2, "custaddress");
            return (Criteria) this;
        }

        public Criteria andCustaddressNotBetween(String value1, String value2) {
            addCriterion("CustAddress not between", value1, value2, "custaddress");
            return (Criteria) this;
        }

        public Criteria andCustphonenumIsNull() {
            addCriterion("CustPhoneNum is null");
            return (Criteria) this;
        }

        public Criteria andCustphonenumIsNotNull() {
            addCriterion("CustPhoneNum is not null");
            return (Criteria) this;
        }

        public Criteria andCustphonenumEqualTo(String value) {
            addCriterion("CustPhoneNum =", value, "custphonenum");
            return (Criteria) this;
        }

        public Criteria andCustphonenumNotEqualTo(String value) {
            addCriterion("CustPhoneNum <>", value, "custphonenum");
            return (Criteria) this;
        }

        public Criteria andCustphonenumGreaterThan(String value) {
            addCriterion("CustPhoneNum >", value, "custphonenum");
            return (Criteria) this;
        }

        public Criteria andCustphonenumGreaterThanOrEqualTo(String value) {
            addCriterion("CustPhoneNum >=", value, "custphonenum");
            return (Criteria) this;
        }

        public Criteria andCustphonenumLessThan(String value) {
            addCriterion("CustPhoneNum <", value, "custphonenum");
            return (Criteria) this;
        }

        public Criteria andCustphonenumLessThanOrEqualTo(String value) {
            addCriterion("CustPhoneNum <=", value, "custphonenum");
            return (Criteria) this;
        }

        public Criteria andCustphonenumLike(String value) {
            addCriterion("CustPhoneNum like", value, "custphonenum");
            return (Criteria) this;
        }

        public Criteria andCustphonenumNotLike(String value) {
            addCriterion("CustPhoneNum not like", value, "custphonenum");
            return (Criteria) this;
        }

        public Criteria andCustphonenumIn(List<String> values) {
            addCriterion("CustPhoneNum in", values, "custphonenum");
            return (Criteria) this;
        }

        public Criteria andCustphonenumNotIn(List<String> values) {
            addCriterion("CustPhoneNum not in", values, "custphonenum");
            return (Criteria) this;
        }

        public Criteria andCustphonenumBetween(String value1, String value2) {
            addCriterion("CustPhoneNum between", value1, value2, "custphonenum");
            return (Criteria) this;
        }

        public Criteria andCustphonenumNotBetween(String value1, String value2) {
            addCriterion("CustPhoneNum not between", value1, value2, "custphonenum");
            return (Criteria) this;
        }

        public Criteria andCustloginpwdIsNull() {
            addCriterion("CustLoginPwd is null");
            return (Criteria) this;
        }

        public Criteria andCustloginpwdIsNotNull() {
            addCriterion("CustLoginPwd is not null");
            return (Criteria) this;
        }

        public Criteria andCustloginpwdEqualTo(String value) {
            addCriterion("CustLoginPwd =", value, "custloginpwd");
            return (Criteria) this;
        }

        public Criteria andCustloginpwdNotEqualTo(String value) {
            addCriterion("CustLoginPwd <>", value, "custloginpwd");
            return (Criteria) this;
        }

        public Criteria andCustloginpwdGreaterThan(String value) {
            addCriterion("CustLoginPwd >", value, "custloginpwd");
            return (Criteria) this;
        }

        public Criteria andCustloginpwdGreaterThanOrEqualTo(String value) {
            addCriterion("CustLoginPwd >=", value, "custloginpwd");
            return (Criteria) this;
        }

        public Criteria andCustloginpwdLessThan(String value) {
            addCriterion("CustLoginPwd <", value, "custloginpwd");
            return (Criteria) this;
        }

        public Criteria andCustloginpwdLessThanOrEqualTo(String value) {
            addCriterion("CustLoginPwd <=", value, "custloginpwd");
            return (Criteria) this;
        }

        public Criteria andCustloginpwdLike(String value) {
            addCriterion("CustLoginPwd like", value, "custloginpwd");
            return (Criteria) this;
        }

        public Criteria andCustloginpwdNotLike(String value) {
            addCriterion("CustLoginPwd not like", value, "custloginpwd");
            return (Criteria) this;
        }

        public Criteria andCustloginpwdIn(List<String> values) {
            addCriterion("CustLoginPwd in", values, "custloginpwd");
            return (Criteria) this;
        }

        public Criteria andCustloginpwdNotIn(List<String> values) {
            addCriterion("CustLoginPwd not in", values, "custloginpwd");
            return (Criteria) this;
        }

        public Criteria andCustloginpwdBetween(String value1, String value2) {
            addCriterion("CustLoginPwd between", value1, value2, "custloginpwd");
            return (Criteria) this;
        }

        public Criteria andCustloginpwdNotBetween(String value1, String value2) {
            addCriterion("CustLoginPwd not between", value1, value2, "custloginpwd");
            return (Criteria) this;
        }

        public Criteria andCustdealpwdIsNull() {
            addCriterion("CustDealPwd is null");
            return (Criteria) this;
        }

        public Criteria andCustdealpwdIsNotNull() {
            addCriterion("CustDealPwd is not null");
            return (Criteria) this;
        }

        public Criteria andCustdealpwdEqualTo(String value) {
            addCriterion("CustDealPwd =", value, "custdealpwd");
            return (Criteria) this;
        }

        public Criteria andCustdealpwdNotEqualTo(String value) {
            addCriterion("CustDealPwd <>", value, "custdealpwd");
            return (Criteria) this;
        }

        public Criteria andCustdealpwdGreaterThan(String value) {
            addCriterion("CustDealPwd >", value, "custdealpwd");
            return (Criteria) this;
        }

        public Criteria andCustdealpwdGreaterThanOrEqualTo(String value) {
            addCriterion("CustDealPwd >=", value, "custdealpwd");
            return (Criteria) this;
        }

        public Criteria andCustdealpwdLessThan(String value) {
            addCriterion("CustDealPwd <", value, "custdealpwd");
            return (Criteria) this;
        }

        public Criteria andCustdealpwdLessThanOrEqualTo(String value) {
            addCriterion("CustDealPwd <=", value, "custdealpwd");
            return (Criteria) this;
        }

        public Criteria andCustdealpwdLike(String value) {
            addCriterion("CustDealPwd like", value, "custdealpwd");
            return (Criteria) this;
        }

        public Criteria andCustdealpwdNotLike(String value) {
            addCriterion("CustDealPwd not like", value, "custdealpwd");
            return (Criteria) this;
        }

        public Criteria andCustdealpwdIn(List<String> values) {
            addCriterion("CustDealPwd in", values, "custdealpwd");
            return (Criteria) this;
        }

        public Criteria andCustdealpwdNotIn(List<String> values) {
            addCriterion("CustDealPwd not in", values, "custdealpwd");
            return (Criteria) this;
        }

        public Criteria andCustdealpwdBetween(String value1, String value2) {
            addCriterion("CustDealPwd between", value1, value2, "custdealpwd");
            return (Criteria) this;
        }

        public Criteria andCustdealpwdNotBetween(String value1, String value2) {
            addCriterion("CustDealPwd not between", value1, value2, "custdealpwd");
            return (Criteria) this;
        }

        public Criteria andCustparentnameIsNull() {
            addCriterion("CustParentName is null");
            return (Criteria) this;
        }

        public Criteria andCustparentnameIsNotNull() {
            addCriterion("CustParentName is not null");
            return (Criteria) this;
        }

        public Criteria andCustparentnameEqualTo(String value) {
            addCriterion("CustParentName =", value, "custparentname");
            return (Criteria) this;
        }

        public Criteria andCustparentnameNotEqualTo(String value) {
            addCriterion("CustParentName <>", value, "custparentname");
            return (Criteria) this;
        }

        public Criteria andCustparentnameGreaterThan(String value) {
            addCriterion("CustParentName >", value, "custparentname");
            return (Criteria) this;
        }

        public Criteria andCustparentnameGreaterThanOrEqualTo(String value) {
            addCriterion("CustParentName >=", value, "custparentname");
            return (Criteria) this;
        }

        public Criteria andCustparentnameLessThan(String value) {
            addCriterion("CustParentName <", value, "custparentname");
            return (Criteria) this;
        }

        public Criteria andCustparentnameLessThanOrEqualTo(String value) {
            addCriterion("CustParentName <=", value, "custparentname");
            return (Criteria) this;
        }

        public Criteria andCustparentnameLike(String value) {
            addCriterion("CustParentName like", value, "custparentname");
            return (Criteria) this;
        }

        public Criteria andCustparentnameNotLike(String value) {
            addCriterion("CustParentName not like", value, "custparentname");
            return (Criteria) this;
        }

        public Criteria andCustparentnameIn(List<String> values) {
            addCriterion("CustParentName in", values, "custparentname");
            return (Criteria) this;
        }

        public Criteria andCustparentnameNotIn(List<String> values) {
            addCriterion("CustParentName not in", values, "custparentname");
            return (Criteria) this;
        }

        public Criteria andCustparentnameBetween(String value1, String value2) {
            addCriterion("CustParentName between", value1, value2, "custparentname");
            return (Criteria) this;
        }

        public Criteria andCustparentnameNotBetween(String value1, String value2) {
            addCriterion("CustParentName not between", value1, value2, "custparentname");
            return (Criteria) this;
        }

        public Criteria andCustparentphonenumIsNull() {
            addCriterion("CustParentPhoneNum is null");
            return (Criteria) this;
        }

        public Criteria andCustparentphonenumIsNotNull() {
            addCriterion("CustParentPhoneNum is not null");
            return (Criteria) this;
        }

        public Criteria andCustparentphonenumEqualTo(String value) {
            addCriterion("CustParentPhoneNum =", value, "custparentphonenum");
            return (Criteria) this;
        }

        public Criteria andCustparentphonenumNotEqualTo(String value) {
            addCriterion("CustParentPhoneNum <>", value, "custparentphonenum");
            return (Criteria) this;
        }

        public Criteria andCustparentphonenumGreaterThan(String value) {
            addCriterion("CustParentPhoneNum >", value, "custparentphonenum");
            return (Criteria) this;
        }

        public Criteria andCustparentphonenumGreaterThanOrEqualTo(String value) {
            addCriterion("CustParentPhoneNum >=", value, "custparentphonenum");
            return (Criteria) this;
        }

        public Criteria andCustparentphonenumLessThan(String value) {
            addCriterion("CustParentPhoneNum <", value, "custparentphonenum");
            return (Criteria) this;
        }

        public Criteria andCustparentphonenumLessThanOrEqualTo(String value) {
            addCriterion("CustParentPhoneNum <=", value, "custparentphonenum");
            return (Criteria) this;
        }

        public Criteria andCustparentphonenumLike(String value) {
            addCriterion("CustParentPhoneNum like", value, "custparentphonenum");
            return (Criteria) this;
        }

        public Criteria andCustparentphonenumNotLike(String value) {
            addCriterion("CustParentPhoneNum not like", value, "custparentphonenum");
            return (Criteria) this;
        }

        public Criteria andCustparentphonenumIn(List<String> values) {
            addCriterion("CustParentPhoneNum in", values, "custparentphonenum");
            return (Criteria) this;
        }

        public Criteria andCustparentphonenumNotIn(List<String> values) {
            addCriterion("CustParentPhoneNum not in", values, "custparentphonenum");
            return (Criteria) this;
        }

        public Criteria andCustparentphonenumBetween(String value1, String value2) {
            addCriterion("CustParentPhoneNum between", value1, value2, "custparentphonenum");
            return (Criteria) this;
        }

        public Criteria andCustparentphonenumNotBetween(String value1, String value2) {
            addCriterion("CustParentPhoneNum not between", value1, value2, "custparentphonenum");
            return (Criteria) this;
        }

        public Criteria andCustuniversityIsNull() {
            addCriterion("CustUniversity is null");
            return (Criteria) this;
        }

        public Criteria andCustuniversityIsNotNull() {
            addCriterion("CustUniversity is not null");
            return (Criteria) this;
        }

        public Criteria andCustuniversityEqualTo(String value) {
            addCriterion("CustUniversity =", value, "custuniversity");
            return (Criteria) this;
        }

        public Criteria andCustuniversityNotEqualTo(String value) {
            addCriterion("CustUniversity <>", value, "custuniversity");
            return (Criteria) this;
        }

        public Criteria andCustuniversityGreaterThan(String value) {
            addCriterion("CustUniversity >", value, "custuniversity");
            return (Criteria) this;
        }

        public Criteria andCustuniversityGreaterThanOrEqualTo(String value) {
            addCriterion("CustUniversity >=", value, "custuniversity");
            return (Criteria) this;
        }

        public Criteria andCustuniversityLessThan(String value) {
            addCriterion("CustUniversity <", value, "custuniversity");
            return (Criteria) this;
        }

        public Criteria andCustuniversityLessThanOrEqualTo(String value) {
            addCriterion("CustUniversity <=", value, "custuniversity");
            return (Criteria) this;
        }

        public Criteria andCustuniversityLike(String value) {
            addCriterion("CustUniversity like", value, "custuniversity");
            return (Criteria) this;
        }

        public Criteria andCustuniversityNotLike(String value) {
            addCriterion("CustUniversity not like", value, "custuniversity");
            return (Criteria) this;
        }

        public Criteria andCustuniversityIn(List<String> values) {
            addCriterion("CustUniversity in", values, "custuniversity");
            return (Criteria) this;
        }

        public Criteria andCustuniversityNotIn(List<String> values) {
            addCriterion("CustUniversity not in", values, "custuniversity");
            return (Criteria) this;
        }

        public Criteria andCustuniversityBetween(String value1, String value2) {
            addCriterion("CustUniversity between", value1, value2, "custuniversity");
            return (Criteria) this;
        }

        public Criteria andCustuniversityNotBetween(String value1, String value2) {
            addCriterion("CustUniversity not between", value1, value2, "custuniversity");
            return (Criteria) this;
        }

        public Criteria andCustinuniversityIsNull() {
            addCriterion("CustInUniversity is null");
            return (Criteria) this;
        }

        public Criteria andCustinuniversityIsNotNull() {
            addCriterion("CustInUniversity is not null");
            return (Criteria) this;
        }

        public Criteria andCustinuniversityEqualTo(String value) {
            addCriterion("CustInUniversity =", value, "custinuniversity");
            return (Criteria) this;
        }

        public Criteria andCustinuniversityNotEqualTo(String value) {
            addCriterion("CustInUniversity <>", value, "custinuniversity");
            return (Criteria) this;
        }

        public Criteria andCustinuniversityGreaterThan(String value) {
            addCriterion("CustInUniversity >", value, "custinuniversity");
            return (Criteria) this;
        }

        public Criteria andCustinuniversityGreaterThanOrEqualTo(String value) {
            addCriterion("CustInUniversity >=", value, "custinuniversity");
            return (Criteria) this;
        }

        public Criteria andCustinuniversityLessThan(String value) {
            addCriterion("CustInUniversity <", value, "custinuniversity");
            return (Criteria) this;
        }

        public Criteria andCustinuniversityLessThanOrEqualTo(String value) {
            addCriterion("CustInUniversity <=", value, "custinuniversity");
            return (Criteria) this;
        }

        public Criteria andCustinuniversityLike(String value) {
            addCriterion("CustInUniversity like", value, "custinuniversity");
            return (Criteria) this;
        }

        public Criteria andCustinuniversityNotLike(String value) {
            addCriterion("CustInUniversity not like", value, "custinuniversity");
            return (Criteria) this;
        }

        public Criteria andCustinuniversityIn(List<String> values) {
            addCriterion("CustInUniversity in", values, "custinuniversity");
            return (Criteria) this;
        }

        public Criteria andCustinuniversityNotIn(List<String> values) {
            addCriterion("CustInUniversity not in", values, "custinuniversity");
            return (Criteria) this;
        }

        public Criteria andCustinuniversityBetween(String value1, String value2) {
            addCriterion("CustInUniversity between", value1, value2, "custinuniversity");
            return (Criteria) this;
        }

        public Criteria andCustinuniversityNotBetween(String value1, String value2) {
            addCriterion("CustInUniversity not between", value1, value2, "custinuniversity");
            return (Criteria) this;
        }

        public Criteria andCusteducationIsNull() {
            addCriterion("CustEducation is null");
            return (Criteria) this;
        }

        public Criteria andCusteducationIsNotNull() {
            addCriterion("CustEducation is not null");
            return (Criteria) this;
        }

        public Criteria andCusteducationEqualTo(String value) {
            addCriterion("CustEducation =", value, "custeducation");
            return (Criteria) this;
        }

        public Criteria andCusteducationNotEqualTo(String value) {
            addCriterion("CustEducation <>", value, "custeducation");
            return (Criteria) this;
        }

        public Criteria andCusteducationGreaterThan(String value) {
            addCriterion("CustEducation >", value, "custeducation");
            return (Criteria) this;
        }

        public Criteria andCusteducationGreaterThanOrEqualTo(String value) {
            addCriterion("CustEducation >=", value, "custeducation");
            return (Criteria) this;
        }

        public Criteria andCusteducationLessThan(String value) {
            addCriterion("CustEducation <", value, "custeducation");
            return (Criteria) this;
        }

        public Criteria andCusteducationLessThanOrEqualTo(String value) {
            addCriterion("CustEducation <=", value, "custeducation");
            return (Criteria) this;
        }

        public Criteria andCusteducationLike(String value) {
            addCriterion("CustEducation like", value, "custeducation");
            return (Criteria) this;
        }

        public Criteria andCusteducationNotLike(String value) {
            addCriterion("CustEducation not like", value, "custeducation");
            return (Criteria) this;
        }

        public Criteria andCusteducationIn(List<String> values) {
            addCriterion("CustEducation in", values, "custeducation");
            return (Criteria) this;
        }

        public Criteria andCusteducationNotIn(List<String> values) {
            addCriterion("CustEducation not in", values, "custeducation");
            return (Criteria) this;
        }

        public Criteria andCusteducationBetween(String value1, String value2) {
            addCriterion("CustEducation between", value1, value2, "custeducation");
            return (Criteria) this;
        }

        public Criteria andCusteducationNotBetween(String value1, String value2) {
            addCriterion("CustEducation not between", value1, value2, "custeducation");
            return (Criteria) this;
        }

        public Criteria andCustpocketmoneyIsNull() {
            addCriterion("CustPocketMoney is null");
            return (Criteria) this;
        }

        public Criteria andCustpocketmoneyIsNotNull() {
            addCriterion("CustPocketMoney is not null");
            return (Criteria) this;
        }

        public Criteria andCustpocketmoneyEqualTo(Float value) {
            addCriterion("CustPocketMoney =", value, "custpocketmoney");
            return (Criteria) this;
        }

        public Criteria andCustpocketmoneyNotEqualTo(Float value) {
            addCriterion("CustPocketMoney <>", value, "custpocketmoney");
            return (Criteria) this;
        }

        public Criteria andCustpocketmoneyGreaterThan(Float value) {
            addCriterion("CustPocketMoney >", value, "custpocketmoney");
            return (Criteria) this;
        }

        public Criteria andCustpocketmoneyGreaterThanOrEqualTo(Float value) {
            addCriterion("CustPocketMoney >=", value, "custpocketmoney");
            return (Criteria) this;
        }

        public Criteria andCustpocketmoneyLessThan(Float value) {
            addCriterion("CustPocketMoney <", value, "custpocketmoney");
            return (Criteria) this;
        }

        public Criteria andCustpocketmoneyLessThanOrEqualTo(Float value) {
            addCriterion("CustPocketMoney <=", value, "custpocketmoney");
            return (Criteria) this;
        }

        public Criteria andCustpocketmoneyIn(List<Float> values) {
            addCriterion("CustPocketMoney in", values, "custpocketmoney");
            return (Criteria) this;
        }

        public Criteria andCustpocketmoneyNotIn(List<Float> values) {
            addCriterion("CustPocketMoney not in", values, "custpocketmoney");
            return (Criteria) this;
        }

        public Criteria andCustpocketmoneyBetween(Float value1, Float value2) {
            addCriterion("CustPocketMoney between", value1, value2, "custpocketmoney");
            return (Criteria) this;
        }

        public Criteria andCustpocketmoneyNotBetween(Float value1, Float value2) {
            addCriterion("CustPocketMoney not between", value1, value2, "custpocketmoney");
            return (Criteria) this;
        }

        public Criteria andCustemailIsNull() {
            addCriterion("CustEmail is null");
            return (Criteria) this;
        }

        public Criteria andCustemailIsNotNull() {
            addCriterion("CustEmail is not null");
            return (Criteria) this;
        }

        public Criteria andCustemailEqualTo(String value) {
            addCriterion("CustEmail =", value, "custemail");
            return (Criteria) this;
        }

        public Criteria andCustemailNotEqualTo(String value) {
            addCriterion("CustEmail <>", value, "custemail");
            return (Criteria) this;
        }

        public Criteria andCustemailGreaterThan(String value) {
            addCriterion("CustEmail >", value, "custemail");
            return (Criteria) this;
        }

        public Criteria andCustemailGreaterThanOrEqualTo(String value) {
            addCriterion("CustEmail >=", value, "custemail");
            return (Criteria) this;
        }

        public Criteria andCustemailLessThan(String value) {
            addCriterion("CustEmail <", value, "custemail");
            return (Criteria) this;
        }

        public Criteria andCustemailLessThanOrEqualTo(String value) {
            addCriterion("CustEmail <=", value, "custemail");
            return (Criteria) this;
        }

        public Criteria andCustemailLike(String value) {
            addCriterion("CustEmail like", value, "custemail");
            return (Criteria) this;
        }

        public Criteria andCustemailNotLike(String value) {
            addCriterion("CustEmail not like", value, "custemail");
            return (Criteria) this;
        }

        public Criteria andCustemailIn(List<String> values) {
            addCriterion("CustEmail in", values, "custemail");
            return (Criteria) this;
        }

        public Criteria andCustemailNotIn(List<String> values) {
            addCriterion("CustEmail not in", values, "custemail");
            return (Criteria) this;
        }

        public Criteria andCustemailBetween(String value1, String value2) {
            addCriterion("CustEmail between", value1, value2, "custemail");
            return (Criteria) this;
        }

        public Criteria andCustemailNotBetween(String value1, String value2) {
            addCriterion("CustEmail not between", value1, value2, "custemail");
            return (Criteria) this;
        }

        public Criteria andCustlevelidIsNull() {
            addCriterion("CustLevelId is null");
            return (Criteria) this;
        }

        public Criteria andCustlevelidIsNotNull() {
            addCriterion("CustLevelId is not null");
            return (Criteria) this;
        }

        public Criteria andCustlevelidEqualTo(Integer value) {
            addCriterion("CustLevelId =", value, "custlevelid");
            return (Criteria) this;
        }

        public Criteria andCustlevelidNotEqualTo(Integer value) {
            addCriterion("CustLevelId <>", value, "custlevelid");
            return (Criteria) this;
        }

        public Criteria andCustlevelidGreaterThan(Integer value) {
            addCriterion("CustLevelId >", value, "custlevelid");
            return (Criteria) this;
        }

        public Criteria andCustlevelidGreaterThanOrEqualTo(Integer value) {
            addCriterion("CustLevelId >=", value, "custlevelid");
            return (Criteria) this;
        }

        public Criteria andCustlevelidLessThan(Integer value) {
            addCriterion("CustLevelId <", value, "custlevelid");
            return (Criteria) this;
        }

        public Criteria andCustlevelidLessThanOrEqualTo(Integer value) {
            addCriterion("CustLevelId <=", value, "custlevelid");
            return (Criteria) this;
        }

        public Criteria andCustlevelidIn(List<Integer> values) {
            addCriterion("CustLevelId in", values, "custlevelid");
            return (Criteria) this;
        }

        public Criteria andCustlevelidNotIn(List<Integer> values) {
            addCriterion("CustLevelId not in", values, "custlevelid");
            return (Criteria) this;
        }

        public Criteria andCustlevelidBetween(Integer value1, Integer value2) {
            addCriterion("CustLevelId between", value1, value2, "custlevelid");
            return (Criteria) this;
        }

        public Criteria andCustlevelidNotBetween(Integer value1, Integer value2) {
            addCriterion("CustLevelId not between", value1, value2, "custlevelid");
            return (Criteria) this;
        }

        public Criteria andCustcreditrestIsNull() {
            addCriterion("CustCreditRest is null");
            return (Criteria) this;
        }

        public Criteria andCustcreditrestIsNotNull() {
            addCriterion("CustCreditRest is not null");
            return (Criteria) this;
        }

        public Criteria andCustcreditrestEqualTo(Integer value) {
            addCriterion("CustCreditRest =", value, "custcreditrest");
            return (Criteria) this;
        }

        public Criteria andCustcreditrestNotEqualTo(Integer value) {
            addCriterion("CustCreditRest <>", value, "custcreditrest");
            return (Criteria) this;
        }

        public Criteria andCustcreditrestGreaterThan(Integer value) {
            addCriterion("CustCreditRest >", value, "custcreditrest");
            return (Criteria) this;
        }

        public Criteria andCustcreditrestGreaterThanOrEqualTo(Integer value) {
            addCriterion("CustCreditRest >=", value, "custcreditrest");
            return (Criteria) this;
        }

        public Criteria andCustcreditrestLessThan(Integer value) {
            addCriterion("CustCreditRest <", value, "custcreditrest");
            return (Criteria) this;
        }

        public Criteria andCustcreditrestLessThanOrEqualTo(Integer value) {
            addCriterion("CustCreditRest <=", value, "custcreditrest");
            return (Criteria) this;
        }

        public Criteria andCustcreditrestIn(List<Integer> values) {
            addCriterion("CustCreditRest in", values, "custcreditrest");
            return (Criteria) this;
        }

        public Criteria andCustcreditrestNotIn(List<Integer> values) {
            addCriterion("CustCreditRest not in", values, "custcreditrest");
            return (Criteria) this;
        }

        public Criteria andCustcreditrestBetween(Integer value1, Integer value2) {
            addCriterion("CustCreditRest between", value1, value2, "custcreditrest");
            return (Criteria) this;
        }

        public Criteria andCustcreditrestNotBetween(Integer value1, Integer value2) {
            addCriterion("CustCreditRest not between", value1, value2, "custcreditrest");
            return (Criteria) this;
        }

        public Criteria andCustpointIsNull() {
            addCriterion("CustPoint is null");
            return (Criteria) this;
        }

        public Criteria andCustpointIsNotNull() {
            addCriterion("CustPoint is not null");
            return (Criteria) this;
        }

        public Criteria andCustpointEqualTo(Integer value) {
            addCriterion("CustPoint =", value, "custpoint");
            return (Criteria) this;
        }

        public Criteria andCustpointNotEqualTo(Integer value) {
            addCriterion("CustPoint <>", value, "custpoint");
            return (Criteria) this;
        }

        public Criteria andCustpointGreaterThan(Integer value) {
            addCriterion("CustPoint >", value, "custpoint");
            return (Criteria) this;
        }

        public Criteria andCustpointGreaterThanOrEqualTo(Integer value) {
            addCriterion("CustPoint >=", value, "custpoint");
            return (Criteria) this;
        }

        public Criteria andCustpointLessThan(Integer value) {
            addCriterion("CustPoint <", value, "custpoint");
            return (Criteria) this;
        }

        public Criteria andCustpointLessThanOrEqualTo(Integer value) {
            addCriterion("CustPoint <=", value, "custpoint");
            return (Criteria) this;
        }

        public Criteria andCustpointIn(List<Integer> values) {
            addCriterion("CustPoint in", values, "custpoint");
            return (Criteria) this;
        }

        public Criteria andCustpointNotIn(List<Integer> values) {
            addCriterion("CustPoint not in", values, "custpoint");
            return (Criteria) this;
        }

        public Criteria andCustpointBetween(Integer value1, Integer value2) {
            addCriterion("CustPoint between", value1, value2, "custpoint");
            return (Criteria) this;
        }

        public Criteria andCustpointNotBetween(Integer value1, Integer value2) {
            addCriterion("CustPoint not between", value1, value2, "custpoint");
            return (Criteria) this;
        }

        public Criteria andCustzipcodeIsNull() {
            addCriterion("CustZipCode is null");
            return (Criteria) this;
        }

        public Criteria andCustzipcodeIsNotNull() {
            addCriterion("CustZipCode is not null");
            return (Criteria) this;
        }

        public Criteria andCustzipcodeEqualTo(String value) {
            addCriterion("CustZipCode =", value, "custzipcode");
            return (Criteria) this;
        }

        public Criteria andCustzipcodeNotEqualTo(String value) {
            addCriterion("CustZipCode <>", value, "custzipcode");
            return (Criteria) this;
        }

        public Criteria andCustzipcodeGreaterThan(String value) {
            addCriterion("CustZipCode >", value, "custzipcode");
            return (Criteria) this;
        }

        public Criteria andCustzipcodeGreaterThanOrEqualTo(String value) {
            addCriterion("CustZipCode >=", value, "custzipcode");
            return (Criteria) this;
        }

        public Criteria andCustzipcodeLessThan(String value) {
            addCriterion("CustZipCode <", value, "custzipcode");
            return (Criteria) this;
        }

        public Criteria andCustzipcodeLessThanOrEqualTo(String value) {
            addCriterion("CustZipCode <=", value, "custzipcode");
            return (Criteria) this;
        }

        public Criteria andCustzipcodeLike(String value) {
            addCriterion("CustZipCode like", value, "custzipcode");
            return (Criteria) this;
        }

        public Criteria andCustzipcodeNotLike(String value) {
            addCriterion("CustZipCode not like", value, "custzipcode");
            return (Criteria) this;
        }

        public Criteria andCustzipcodeIn(List<String> values) {
            addCriterion("CustZipCode in", values, "custzipcode");
            return (Criteria) this;
        }

        public Criteria andCustzipcodeNotIn(List<String> values) {
            addCriterion("CustZipCode not in", values, "custzipcode");
            return (Criteria) this;
        }

        public Criteria andCustzipcodeBetween(String value1, String value2) {
            addCriterion("CustZipCode between", value1, value2, "custzipcode");
            return (Criteria) this;
        }

        public Criteria andCustzipcodeNotBetween(String value1, String value2) {
            addCriterion("CustZipCode not between", value1, value2, "custzipcode");
            return (Criteria) this;
        }

        public Criteria andCustsexIsNull() {
            addCriterion("CustSex is null");
            return (Criteria) this;
        }

        public Criteria andCustsexIsNotNull() {
            addCriterion("CustSex is not null");
            return (Criteria) this;
        }

        public Criteria andCustsexEqualTo(Integer value) {
            addCriterion("CustSex =", value, "custsex");
            return (Criteria) this;
        }

        public Criteria andCustsexNotEqualTo(Integer value) {
            addCriterion("CustSex <>", value, "custsex");
            return (Criteria) this;
        }

        public Criteria andCustsexGreaterThan(Integer value) {
            addCriterion("CustSex >", value, "custsex");
            return (Criteria) this;
        }

        public Criteria andCustsexGreaterThanOrEqualTo(Integer value) {
            addCriterion("CustSex >=", value, "custsex");
            return (Criteria) this;
        }

        public Criteria andCustsexLessThan(Integer value) {
            addCriterion("CustSex <", value, "custsex");
            return (Criteria) this;
        }

        public Criteria andCustsexLessThanOrEqualTo(Integer value) {
            addCriterion("CustSex <=", value, "custsex");
            return (Criteria) this;
        }

        public Criteria andCustsexIn(List<Integer> values) {
            addCriterion("CustSex in", values, "custsex");
            return (Criteria) this;
        }

        public Criteria andCustsexNotIn(List<Integer> values) {
            addCriterion("CustSex not in", values, "custsex");
            return (Criteria) this;
        }

        public Criteria andCustsexBetween(Integer value1, Integer value2) {
            addCriterion("CustSex between", value1, value2, "custsex");
            return (Criteria) this;
        }

        public Criteria andCustsexNotBetween(Integer value1, Integer value2) {
            addCriterion("CustSex not between", value1, value2, "custsex");
            return (Criteria) this;
        }

        public Criteria andCustregdateIsNull() {
            addCriterion("CustRegDate is null");
            return (Criteria) this;
        }

        public Criteria andCustregdateIsNotNull() {
            addCriterion("CustRegDate is not null");
            return (Criteria) this;
        }

        public Criteria andCustregdateEqualTo(Date value) {
            addCriterion("CustRegDate =", value, "custregdate");
            return (Criteria) this;
        }

        public Criteria andCustregdateNotEqualTo(Date value) {
            addCriterion("CustRegDate <>", value, "custregdate");
            return (Criteria) this;
        }

        public Criteria andCustregdateGreaterThan(Date value) {
            addCriterion("CustRegDate >", value, "custregdate");
            return (Criteria) this;
        }

        public Criteria andCustregdateGreaterThanOrEqualTo(Date value) {
            addCriterion("CustRegDate >=", value, "custregdate");
            return (Criteria) this;
        }

        public Criteria andCustregdateLessThan(Date value) {
            addCriterion("CustRegDate <", value, "custregdate");
            return (Criteria) this;
        }

        public Criteria andCustregdateLessThanOrEqualTo(Date value) {
            addCriterion("CustRegDate <=", value, "custregdate");
            return (Criteria) this;
        }

        public Criteria andCustregdateIn(List<Date> values) {
            addCriterion("CustRegDate in", values, "custregdate");
            return (Criteria) this;
        }

        public Criteria andCustregdateNotIn(List<Date> values) {
            addCriterion("CustRegDate not in", values, "custregdate");
            return (Criteria) this;
        }

        public Criteria andCustregdateBetween(Date value1, Date value2) {
            addCriterion("CustRegDate between", value1, value2, "custregdate");
            return (Criteria) this;
        }

        public Criteria andCustregdateNotBetween(Date value1, Date value2) {
            addCriterion("CustRegDate not between", value1, value2, "custregdate");
            return (Criteria) this;
        }

        public Criteria andCuststatusIsNull() {
            addCriterion("CustStatus is null");
            return (Criteria) this;
        }

        public Criteria andCuststatusIsNotNull() {
            addCriterion("CustStatus is not null");
            return (Criteria) this;
        }

        public Criteria andCuststatusEqualTo(Integer value) {
            addCriterion("CustStatus =", value, "custstatus");
            return (Criteria) this;
        }

        public Criteria andCuststatusNotEqualTo(Integer value) {
            addCriterion("CustStatus <>", value, "custstatus");
            return (Criteria) this;
        }

        public Criteria andCuststatusGreaterThan(Integer value) {
            addCriterion("CustStatus >", value, "custstatus");
            return (Criteria) this;
        }

        public Criteria andCuststatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("CustStatus >=", value, "custstatus");
            return (Criteria) this;
        }

        public Criteria andCuststatusLessThan(Integer value) {
            addCriterion("CustStatus <", value, "custstatus");
            return (Criteria) this;
        }

        public Criteria andCuststatusLessThanOrEqualTo(Integer value) {
            addCriterion("CustStatus <=", value, "custstatus");
            return (Criteria) this;
        }

        public Criteria andCuststatusIn(List<Integer> values) {
            addCriterion("CustStatus in", values, "custstatus");
            return (Criteria) this;
        }

        public Criteria andCuststatusNotIn(List<Integer> values) {
            addCriterion("CustStatus not in", values, "custstatus");
            return (Criteria) this;
        }

        public Criteria andCuststatusBetween(Integer value1, Integer value2) {
            addCriterion("CustStatus between", value1, value2, "custstatus");
            return (Criteria) this;
        }

        public Criteria andCuststatusNotBetween(Integer value1, Integer value2) {
            addCriterion("CustStatus not between", value1, value2, "custstatus");
            return (Criteria) this;
        }

        public Criteria andRoleidIsNull() {
            addCriterion("RoleId is null");
            return (Criteria) this;
        }

        public Criteria andRoleidIsNotNull() {
            addCriterion("RoleId is not null");
            return (Criteria) this;
        }

        public Criteria andRoleidEqualTo(Integer value) {
            addCriterion("RoleId =", value, "roleid");
            return (Criteria) this;
        }

        public Criteria andRoleidNotEqualTo(Integer value) {
            addCriterion("RoleId <>", value, "roleid");
            return (Criteria) this;
        }

        public Criteria andRoleidGreaterThan(Integer value) {
            addCriterion("RoleId >", value, "roleid");
            return (Criteria) this;
        }

        public Criteria andRoleidGreaterThanOrEqualTo(Integer value) {
            addCriterion("RoleId >=", value, "roleid");
            return (Criteria) this;
        }

        public Criteria andRoleidLessThan(Integer value) {
            addCriterion("RoleId <", value, "roleid");
            return (Criteria) this;
        }

        public Criteria andRoleidLessThanOrEqualTo(Integer value) {
            addCriterion("RoleId <=", value, "roleid");
            return (Criteria) this;
        }

        public Criteria andRoleidIn(List<Integer> values) {
            addCriterion("RoleId in", values, "roleid");
            return (Criteria) this;
        }

        public Criteria andRoleidNotIn(List<Integer> values) {
            addCriterion("RoleId not in", values, "roleid");
            return (Criteria) this;
        }

        public Criteria andRoleidBetween(Integer value1, Integer value2) {
            addCriterion("RoleId between", value1, value2, "roleid");
            return (Criteria) this;
        }

        public Criteria andRoleidNotBetween(Integer value1, Integer value2) {
            addCriterion("RoleId not between", value1, value2, "roleid");
            return (Criteria) this;
        }

        public Criteria andCustheadIsNull() {
            addCriterion("CustHead is null");
            return (Criteria) this;
        }

        public Criteria andCustheadIsNotNull() {
            addCriterion("CustHead is not null");
            return (Criteria) this;
        }

        public Criteria andCustheadEqualTo(String value) {
            addCriterion("CustHead =", value, "custhead");
            return (Criteria) this;
        }

        public Criteria andCustheadNotEqualTo(String value) {
            addCriterion("CustHead <>", value, "custhead");
            return (Criteria) this;
        }

        public Criteria andCustheadGreaterThan(String value) {
            addCriterion("CustHead >", value, "custhead");
            return (Criteria) this;
        }

        public Criteria andCustheadGreaterThanOrEqualTo(String value) {
            addCriterion("CustHead >=", value, "custhead");
            return (Criteria) this;
        }

        public Criteria andCustheadLessThan(String value) {
            addCriterion("CustHead <", value, "custhead");
            return (Criteria) this;
        }

        public Criteria andCustheadLessThanOrEqualTo(String value) {
            addCriterion("CustHead <=", value, "custhead");
            return (Criteria) this;
        }

        public Criteria andCustheadLike(String value) {
            addCriterion("CustHead like", value, "custhead");
            return (Criteria) this;
        }

        public Criteria andCustheadNotLike(String value) {
            addCriterion("CustHead not like", value, "custhead");
            return (Criteria) this;
        }

        public Criteria andCustheadIn(List<String> values) {
            addCriterion("CustHead in", values, "custhead");
            return (Criteria) this;
        }

        public Criteria andCustheadNotIn(List<String> values) {
            addCriterion("CustHead not in", values, "custhead");
            return (Criteria) this;
        }

        public Criteria andCustheadBetween(String value1, String value2) {
            addCriterion("CustHead between", value1, value2, "custhead");
            return (Criteria) this;
        }

        public Criteria andCustheadNotBetween(String value1, String value2) {
            addCriterion("CustHead not between", value1, value2, "custhead");
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