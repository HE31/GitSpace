<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改商品信息</title>

</head>
<body> 

<form id="goodForm" action="${pageContext.request.contextPath }/goods/editGoodsSubmit.action" method="post" enctype="multipart/form-data">
<input type="hidden" name="id" value="${goodsCustom.id }"/>
修改商品信息：
<table width="100%" border=1>
<tr>
	<td>商品编号</td>
	<td><input type="text" name="goodsid" value="${goodsCustom.goodsid }"/></td>
</tr>
<tr>
	<td>商品名称</td>
	<td><input type="text" name="goodsname" value="${goodsCustom.goodsname }"/></td>
</tr>
<tr>
	<td>商品价格</td>
	<td><input type="text" name="goodsprice" value="${goodsCustom.goodsprice }"/></td>
</tr>

<tr>
	<td>商品真实价格</td>
	<td><input type="text" name="goodsrprice" value="${goodsCustom.goodsrprice }"/></td>
</tr>
<tr>
	<td>商品成本价格</td>
	<td><input type="text" name="goodscprice" value="${goodsCustom.goodscprice }"/></td>
</tr>
<td>商品库存</td>
	<td><input type="text" name="goodstype" value="${goodsCustom.goodstype }"/></td>
</tr>
<tr>
	<td>商品库存</td>
	<td><input type="text" name="restnum" value="${goodsCustom.restnum }"/></td>
	
</tr>
<tr>
	
<tr>
<!-- 	<td>商品生产日期</td> -->
<!-- 	<td><input type="text" name="createtime" value="<fmt:formatDate value="${itemsCustom.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/>"/></td> -->
<!-- </tr> -->
<tr>
	<td>商品图片</td>
	<td>
		<c:if test="${goodsCustom.images !=null}">
			<img src="/pic/${goodsCustom.images}" width=100 height=100/>
			<br/>
		</c:if>
		<input type="file"  name="goods_images" /> 
		
	</td>
</tr>
<tr>
	<td>商品简介</td>
	<td>
	<textarea rows="3" cols="30" name="goodsxl">${goodsCustom.goodsxl }</textarea>
	</td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="提交"/>
</td>
</tr>
</table>

</form>
</body>

</html>