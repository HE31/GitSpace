package cn.itcast.ssm.po;

import java.util.ArrayList;
import java.util.List;

public class WdbProductsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WdbProductsExample() {
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

        public Criteria andProductnameIsNull() {
            addCriterion("ProductName is null");
            return (Criteria) this;
        }

        public Criteria andProductnameIsNotNull() {
            addCriterion("ProductName is not null");
            return (Criteria) this;
        }

        public Criteria andProductnameEqualTo(String value) {
            addCriterion("ProductName =", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameNotEqualTo(String value) {
            addCriterion("ProductName <>", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameGreaterThan(String value) {
            addCriterion("ProductName >", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameGreaterThanOrEqualTo(String value) {
            addCriterion("ProductName >=", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameLessThan(String value) {
            addCriterion("ProductName <", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameLessThanOrEqualTo(String value) {
            addCriterion("ProductName <=", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameLike(String value) {
            addCriterion("ProductName like", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameNotLike(String value) {
            addCriterion("ProductName not like", value, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameIn(List<String> values) {
            addCriterion("ProductName in", values, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameNotIn(List<String> values) {
            addCriterion("ProductName not in", values, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameBetween(String value1, String value2) {
            addCriterion("ProductName between", value1, value2, "productname");
            return (Criteria) this;
        }

        public Criteria andProductnameNotBetween(String value1, String value2) {
            addCriterion("ProductName not between", value1, value2, "productname");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionIsNull() {
            addCriterion("ProductDescription is null");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionIsNotNull() {
            addCriterion("ProductDescription is not null");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionEqualTo(String value) {
            addCriterion("ProductDescription =", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionNotEqualTo(String value) {
            addCriterion("ProductDescription <>", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionGreaterThan(String value) {
            addCriterion("ProductDescription >", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("ProductDescription >=", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionLessThan(String value) {
            addCriterion("ProductDescription <", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionLessThanOrEqualTo(String value) {
            addCriterion("ProductDescription <=", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionLike(String value) {
            addCriterion("ProductDescription like", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionNotLike(String value) {
            addCriterion("ProductDescription not like", value, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionIn(List<String> values) {
            addCriterion("ProductDescription in", values, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionNotIn(List<String> values) {
            addCriterion("ProductDescription not in", values, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionBetween(String value1, String value2) {
            addCriterion("ProductDescription between", value1, value2, "productdescription");
            return (Criteria) this;
        }

        public Criteria andProductdescriptionNotBetween(String value1, String value2) {
            addCriterion("ProductDescription not between", value1, value2, "productdescription");
            return (Criteria) this;
        }

        public Criteria andQuotopriceIsNull() {
            addCriterion("QuotoPrice is null");
            return (Criteria) this;
        }

        public Criteria andQuotopriceIsNotNull() {
            addCriterion("QuotoPrice is not null");
            return (Criteria) this;
        }

        public Criteria andQuotopriceEqualTo(Float value) {
            addCriterion("QuotoPrice =", value, "quotoprice");
            return (Criteria) this;
        }

        public Criteria andQuotopriceNotEqualTo(Float value) {
            addCriterion("QuotoPrice <>", value, "quotoprice");
            return (Criteria) this;
        }

        public Criteria andQuotopriceGreaterThan(Float value) {
            addCriterion("QuotoPrice >", value, "quotoprice");
            return (Criteria) this;
        }

        public Criteria andQuotopriceGreaterThanOrEqualTo(Float value) {
            addCriterion("QuotoPrice >=", value, "quotoprice");
            return (Criteria) this;
        }

        public Criteria andQuotopriceLessThan(Float value) {
            addCriterion("QuotoPrice <", value, "quotoprice");
            return (Criteria) this;
        }

        public Criteria andQuotopriceLessThanOrEqualTo(Float value) {
            addCriterion("QuotoPrice <=", value, "quotoprice");
            return (Criteria) this;
        }

        public Criteria andQuotopriceIn(List<Float> values) {
            addCriterion("QuotoPrice in", values, "quotoprice");
            return (Criteria) this;
        }

        public Criteria andQuotopriceNotIn(List<Float> values) {
            addCriterion("QuotoPrice not in", values, "quotoprice");
            return (Criteria) this;
        }

        public Criteria andQuotopriceBetween(Float value1, Float value2) {
            addCriterion("QuotoPrice between", value1, value2, "quotoprice");
            return (Criteria) this;
        }

        public Criteria andQuotopriceNotBetween(Float value1, Float value2) {
            addCriterion("QuotoPrice not between", value1, value2, "quotoprice");
            return (Criteria) this;
        }

        public Criteria andRetailpriceIsNull() {
            addCriterion("RetailPrice is null");
            return (Criteria) this;
        }

        public Criteria andRetailpriceIsNotNull() {
            addCriterion("RetailPrice is not null");
            return (Criteria) this;
        }

        public Criteria andRetailpriceEqualTo(Float value) {
            addCriterion("RetailPrice =", value, "retailprice");
            return (Criteria) this;
        }

        public Criteria andRetailpriceNotEqualTo(Float value) {
            addCriterion("RetailPrice <>", value, "retailprice");
            return (Criteria) this;
        }

        public Criteria andRetailpriceGreaterThan(Float value) {
            addCriterion("RetailPrice >", value, "retailprice");
            return (Criteria) this;
        }

        public Criteria andRetailpriceGreaterThanOrEqualTo(Float value) {
            addCriterion("RetailPrice >=", value, "retailprice");
            return (Criteria) this;
        }

        public Criteria andRetailpriceLessThan(Float value) {
            addCriterion("RetailPrice <", value, "retailprice");
            return (Criteria) this;
        }

        public Criteria andRetailpriceLessThanOrEqualTo(Float value) {
            addCriterion("RetailPrice <=", value, "retailprice");
            return (Criteria) this;
        }

        public Criteria andRetailpriceIn(List<Float> values) {
            addCriterion("RetailPrice in", values, "retailprice");
            return (Criteria) this;
        }

        public Criteria andRetailpriceNotIn(List<Float> values) {
            addCriterion("RetailPrice not in", values, "retailprice");
            return (Criteria) this;
        }

        public Criteria andRetailpriceBetween(Float value1, Float value2) {
            addCriterion("RetailPrice between", value1, value2, "retailprice");
            return (Criteria) this;
        }

        public Criteria andRetailpriceNotBetween(Float value1, Float value2) {
            addCriterion("RetailPrice not between", value1, value2, "retailprice");
            return (Criteria) this;
        }

        public Criteria andImageurlsIsNull() {
            addCriterion("ImageUrls is null");
            return (Criteria) this;
        }

        public Criteria andImageurlsIsNotNull() {
            addCriterion("ImageUrls is not null");
            return (Criteria) this;
        }

        public Criteria andImageurlsEqualTo(String value) {
            addCriterion("ImageUrls =", value, "imageurls");
            return (Criteria) this;
        }

        public Criteria andImageurlsNotEqualTo(String value) {
            addCriterion("ImageUrls <>", value, "imageurls");
            return (Criteria) this;
        }

        public Criteria andImageurlsGreaterThan(String value) {
            addCriterion("ImageUrls >", value, "imageurls");
            return (Criteria) this;
        }

        public Criteria andImageurlsGreaterThanOrEqualTo(String value) {
            addCriterion("ImageUrls >=", value, "imageurls");
            return (Criteria) this;
        }

        public Criteria andImageurlsLessThan(String value) {
            addCriterion("ImageUrls <", value, "imageurls");
            return (Criteria) this;
        }

        public Criteria andImageurlsLessThanOrEqualTo(String value) {
            addCriterion("ImageUrls <=", value, "imageurls");
            return (Criteria) this;
        }

        public Criteria andImageurlsLike(String value) {
            addCriterion("ImageUrls like", value, "imageurls");
            return (Criteria) this;
        }

        public Criteria andImageurlsNotLike(String value) {
            addCriterion("ImageUrls not like", value, "imageurls");
            return (Criteria) this;
        }

        public Criteria andImageurlsIn(List<String> values) {
            addCriterion("ImageUrls in", values, "imageurls");
            return (Criteria) this;
        }

        public Criteria andImageurlsNotIn(List<String> values) {
            addCriterion("ImageUrls not in", values, "imageurls");
            return (Criteria) this;
        }

        public Criteria andImageurlsBetween(String value1, String value2) {
            addCriterion("ImageUrls between", value1, value2, "imageurls");
            return (Criteria) this;
        }

        public Criteria andImageurlsNotBetween(String value1, String value2) {
            addCriterion("ImageUrls not between", value1, value2, "imageurls");
            return (Criteria) this;
        }

        public Criteria andQuantityonhandIsNull() {
            addCriterion("QuantityOnHand is null");
            return (Criteria) this;
        }

        public Criteria andQuantityonhandIsNotNull() {
            addCriterion("QuantityOnHand is not null");
            return (Criteria) this;
        }

        public Criteria andQuantityonhandEqualTo(Integer value) {
            addCriterion("QuantityOnHand =", value, "quantityonhand");
            return (Criteria) this;
        }

        public Criteria andQuantityonhandNotEqualTo(Integer value) {
            addCriterion("QuantityOnHand <>", value, "quantityonhand");
            return (Criteria) this;
        }

        public Criteria andQuantityonhandGreaterThan(Integer value) {
            addCriterion("QuantityOnHand >", value, "quantityonhand");
            return (Criteria) this;
        }

        public Criteria andQuantityonhandGreaterThanOrEqualTo(Integer value) {
            addCriterion("QuantityOnHand >=", value, "quantityonhand");
            return (Criteria) this;
        }

        public Criteria andQuantityonhandLessThan(Integer value) {
            addCriterion("QuantityOnHand <", value, "quantityonhand");
            return (Criteria) this;
        }

        public Criteria andQuantityonhandLessThanOrEqualTo(Integer value) {
            addCriterion("QuantityOnHand <=", value, "quantityonhand");
            return (Criteria) this;
        }

        public Criteria andQuantityonhandIn(List<Integer> values) {
            addCriterion("QuantityOnHand in", values, "quantityonhand");
            return (Criteria) this;
        }

        public Criteria andQuantityonhandNotIn(List<Integer> values) {
            addCriterion("QuantityOnHand not in", values, "quantityonhand");
            return (Criteria) this;
        }

        public Criteria andQuantityonhandBetween(Integer value1, Integer value2) {
            addCriterion("QuantityOnHand between", value1, value2, "quantityonhand");
            return (Criteria) this;
        }

        public Criteria andQuantityonhandNotBetween(Integer value1, Integer value2) {
            addCriterion("QuantityOnHand not between", value1, value2, "quantityonhand");
            return (Criteria) this;
        }

        public Criteria andCategoryidIsNull() {
            addCriterion("CategoryId is null");
            return (Criteria) this;
        }

        public Criteria andCategoryidIsNotNull() {
            addCriterion("CategoryId is not null");
            return (Criteria) this;
        }

        public Criteria andCategoryidEqualTo(Integer value) {
            addCriterion("CategoryId =", value, "categoryid");
            return (Criteria) this;
        }

        public Criteria andCategoryidNotEqualTo(Integer value) {
            addCriterion("CategoryId <>", value, "categoryid");
            return (Criteria) this;
        }

        public Criteria andCategoryidGreaterThan(Integer value) {
            addCriterion("CategoryId >", value, "categoryid");
            return (Criteria) this;
        }

        public Criteria andCategoryidGreaterThanOrEqualTo(Integer value) {
            addCriterion("CategoryId >=", value, "categoryid");
            return (Criteria) this;
        }

        public Criteria andCategoryidLessThan(Integer value) {
            addCriterion("CategoryId <", value, "categoryid");
            return (Criteria) this;
        }

        public Criteria andCategoryidLessThanOrEqualTo(Integer value) {
            addCriterion("CategoryId <=", value, "categoryid");
            return (Criteria) this;
        }

        public Criteria andCategoryidIn(List<Integer> values) {
            addCriterion("CategoryId in", values, "categoryid");
            return (Criteria) this;
        }

        public Criteria andCategoryidNotIn(List<Integer> values) {
            addCriterion("CategoryId not in", values, "categoryid");
            return (Criteria) this;
        }

        public Criteria andCategoryidBetween(Integer value1, Integer value2) {
            addCriterion("CategoryId between", value1, value2, "categoryid");
            return (Criteria) this;
        }

        public Criteria andCategoryidNotBetween(Integer value1, Integer value2) {
            addCriterion("CategoryId not between", value1, value2, "categoryid");
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