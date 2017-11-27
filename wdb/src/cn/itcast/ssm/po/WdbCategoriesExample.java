package cn.itcast.ssm.po;

import java.util.ArrayList;
import java.util.List;

public class WdbCategoriesExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WdbCategoriesExample() {
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

        public Criteria andCategorydescriptionIsNull() {
            addCriterion("CategoryDescription is null");
            return (Criteria) this;
        }

        public Criteria andCategorydescriptionIsNotNull() {
            addCriterion("CategoryDescription is not null");
            return (Criteria) this;
        }

        public Criteria andCategorydescriptionEqualTo(String value) {
            addCriterion("CategoryDescription =", value, "categorydescription");
            return (Criteria) this;
        }

        public Criteria andCategorydescriptionNotEqualTo(String value) {
            addCriterion("CategoryDescription <>", value, "categorydescription");
            return (Criteria) this;
        }

        public Criteria andCategorydescriptionGreaterThan(String value) {
            addCriterion("CategoryDescription >", value, "categorydescription");
            return (Criteria) this;
        }

        public Criteria andCategorydescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("CategoryDescription >=", value, "categorydescription");
            return (Criteria) this;
        }

        public Criteria andCategorydescriptionLessThan(String value) {
            addCriterion("CategoryDescription <", value, "categorydescription");
            return (Criteria) this;
        }

        public Criteria andCategorydescriptionLessThanOrEqualTo(String value) {
            addCriterion("CategoryDescription <=", value, "categorydescription");
            return (Criteria) this;
        }

        public Criteria andCategorydescriptionLike(String value) {
            addCriterion("CategoryDescription like", value, "categorydescription");
            return (Criteria) this;
        }

        public Criteria andCategorydescriptionNotLike(String value) {
            addCriterion("CategoryDescription not like", value, "categorydescription");
            return (Criteria) this;
        }

        public Criteria andCategorydescriptionIn(List<String> values) {
            addCriterion("CategoryDescription in", values, "categorydescription");
            return (Criteria) this;
        }

        public Criteria andCategorydescriptionNotIn(List<String> values) {
            addCriterion("CategoryDescription not in", values, "categorydescription");
            return (Criteria) this;
        }

        public Criteria andCategorydescriptionBetween(String value1, String value2) {
            addCriterion("CategoryDescription between", value1, value2, "categorydescription");
            return (Criteria) this;
        }

        public Criteria andCategorydescriptionNotBetween(String value1, String value2) {
            addCriterion("CategoryDescription not between", value1, value2, "categorydescription");
            return (Criteria) this;
        }

        public Criteria andFunctionidIsNull() {
            addCriterion("FunctionId is null");
            return (Criteria) this;
        }

        public Criteria andFunctionidIsNotNull() {
            addCriterion("FunctionId is not null");
            return (Criteria) this;
        }

        public Criteria andFunctionidEqualTo(Integer value) {
            addCriterion("FunctionId =", value, "functionid");
            return (Criteria) this;
        }

        public Criteria andFunctionidNotEqualTo(Integer value) {
            addCriterion("FunctionId <>", value, "functionid");
            return (Criteria) this;
        }

        public Criteria andFunctionidGreaterThan(Integer value) {
            addCriterion("FunctionId >", value, "functionid");
            return (Criteria) this;
        }

        public Criteria andFunctionidGreaterThanOrEqualTo(Integer value) {
            addCriterion("FunctionId >=", value, "functionid");
            return (Criteria) this;
        }

        public Criteria andFunctionidLessThan(Integer value) {
            addCriterion("FunctionId <", value, "functionid");
            return (Criteria) this;
        }

        public Criteria andFunctionidLessThanOrEqualTo(Integer value) {
            addCriterion("FunctionId <=", value, "functionid");
            return (Criteria) this;
        }

        public Criteria andFunctionidIn(List<Integer> values) {
            addCriterion("FunctionId in", values, "functionid");
            return (Criteria) this;
        }

        public Criteria andFunctionidNotIn(List<Integer> values) {
            addCriterion("FunctionId not in", values, "functionid");
            return (Criteria) this;
        }

        public Criteria andFunctionidBetween(Integer value1, Integer value2) {
            addCriterion("FunctionId between", value1, value2, "functionid");
            return (Criteria) this;
        }

        public Criteria andFunctionidNotBetween(Integer value1, Integer value2) {
            addCriterion("FunctionId not between", value1, value2, "functionid");
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