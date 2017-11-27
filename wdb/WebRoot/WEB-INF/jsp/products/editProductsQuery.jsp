<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询商品列表</title>
<script type="text/javascript">
function editGoodsAllSubmit(){
	//提交form
	document.goodsForm.action="${pageContext.request.contextPath }/goods/editGoodsAllSubmit.action";
	document.goodsForm.submit();
}
function manageGoods(){
	//提交form
	document.goodsForm.action="${pageContext.request.contextPath }/goods/manageGoods.action";
	document.goodsForm.submit();
}
function insertGoods(){
	//提交form
	document.goodsForm.action="${pageContext.request.contextPath }/goods/insertGoods.action";
	document.goodsForm.submit();
}
</script>

</head>
<body> 
<form name="goodsForm" action="${pageContext.request.contextPath }/goods/manageGoods.action" method="post" >
查询条件：
<table width="100%" border=1>
<tr>
<td>商品名称：<input name="goodsCustom.goodsname"/></td>
<td><input type="button" value="查询" onclick="manageGoods()"/>
<input type="button" value="添加" onclick="insertGoods()"/>
<input type="button" value="批量修改提交" onclick="editGoodsAllSubmit()"/>
</td>
<%-- <td><a href="${pageContext.request.contextPath }/goods/insertGoods.action">添加</a></td> --%>
</tr>
</table>
商品列表：
<table width="100%" border=1>
<tr>
   
	
	<td>商品编号</td>
	<td>商品名称</td>
	<td>商品价格</td>
	
	<td>商品类型</td>
	<td>商品真实价格</td>
	<td>商品成本价格</td>
	<td>商品库存</td>
	<td>商品详情</td>
	<td>商品图片</td>
	<!-- <td>操作</td> -->
</tr>
<c:forEach items="${goodsList }" var="good" varStatus="status">
<tr>

<input name="goodsList[${status.index }].id" value="${good.id }" type="hidden" />
    <td><input name="goodsList[${status.index }].goodsid" value="${good.goodsid }" /></td>
	<td><input name="goodsList[${status.index }].goodsname" value="${good.goodsname }"/></td>
	<td><input name="goodsList[${status.index }].goodsprice" value="${good.goodsprice }"/></td>
	<td><input name="goodsList[${status.index }].goodstype" value="${good.goodstype}"/></td>
	<td><input name="goodsList[${status.index }].goodsrprice" value="${good.goodsrprice }"/></td>
	<td><input name="goodsList[${status.index }].goodscprice" value="${good.goodscprice }"/></td>
	<td><input name="goodsList[${status.index }].restnum" value="${good.restnum }"/></td>
	<td><input name="goodsList[${status.index }].goodsxl" value="${good.goodsxl }"/></td>
	<td><input name="goodsList[${status.index }].images" value="${good.images }"/></td>

	<%-- <td><a href="${pageContext.request.contextPath }/goods/editGoods.action?id=${good.id}">修改</a>
	   <a href="${pageContext.request.contextPath }/goods/deleteGoods.action?id=${good.id}">删除</a>
	</td> --%>

</tr>
</c:forEach>

</table>
</form>
</body>

</html>