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

<form id="goodForm" action="${pageContext.request.contextPath }/goods/insertGoodsSubmit.action" method="post" >
<input type="hidden" name="id" />
修改商品信息：
<table width="100%" border=1>
<tr>
	<td>商品编号</td>
	<td><input type="text" name="goodsid"/></td>
</tr>
<tr>
	<td>商品名称</td>
	<td><input type="text" name="goodsname" /></td>
</tr>
<tr>
	<td>商品价格</td>
	<td><input type="text" name="goodsprice" /></td>
</tr>

<tr>
	<td>商品真实价格</td>
	<td><input type="text" name="goodsrprice" /></td>
</tr>
<tr>
	<td>商品成本价格</td>
	<td><input type="text" name="goodscprice" /></td>
</tr>
<td>商品类型</td>
	<td><input type="text" name="goodstype"/></td>
</tr>
<tr>
	<td>商品库存</td>
	<td><input type="text" name="restnum" /></td>
</tr>
<tr>
	
<tr>
<!-- 	<td>商品生产日期</td> -->
<!-- 	<td><input type="text" name="createtime" value="<fmt:formatDate value="${itemsCustom.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/>"/></td> -->
<!-- </tr> -->
<%-- <tr>
	<td>商品图片</td>
	<td>
		<c:if test="${item.pic !=null}">
			<img src="/pic/${item.pic}" width=100 height=100/>
			<br/>
		</c:if>
		<input type="file"  name="pictureFile"/> 
	</td>
</tr> --%>
<tr>
	<td>商品简介</td>
	<td>
	<textarea rows="3" cols="30" name="goodsxl"></textarea>
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