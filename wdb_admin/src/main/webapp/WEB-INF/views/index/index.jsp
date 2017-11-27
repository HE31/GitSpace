<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://zlzkj.com/tags" prefix="z" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<!doctype html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>zframe整合框架</title>
	<script type="text/javascript">
		var ZLZ = window.ZLZ = {
			"ROOT"   : "${__root__}",
			"URL"    : "${__url__}",
			"STATIC" : "${__static__}"
		}
	</script>
</head>
<body>
	
	<c:forEach items="${userList}" var="user">
		${user.custname}
	</c:forEach>
	<br/>
	
	<%-- ${z:u("admin/list")} --%>
	
</body>
</html>