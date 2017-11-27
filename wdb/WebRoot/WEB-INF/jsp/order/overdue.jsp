<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>选择逾期</title>

<script type="text/javascript" src="../js/zDrag.js"></script>
<script type="text/javascript" src="../js/zDialog.js"></script>
<link rel="stylesheet" type="text/css" href="../css/goods.css" />
<style>
ul { list-style-type: none;}
li { display: inline-block;}
li { margin: 10px 0;margin-left:15px;}
input.labelauty + label { font: 15px "Microsoft Yahei";color:#47AFEF;padding-top:5px;padding-bottom:5px;padding-left:10px;padding-right:10px;}

.buttonStyle{width:64px;height:22px;line-height:22px;color:#369;text-align:center;background:url(../images/tanchu_icon/buticon.gif) no-repeat left top;border:0;font-size:12px;font-family: "Microsoft Yahei";}
.buttonStyle:hover{background:url(../images/tanchu_icon/buticon.gif) no-repeat left -23px;}

</style>
<script type="text/javascript">

function close1() {
parentDialog.close();
}


function overdue(){
	//提交form
	var ordernumber=document.getElementById("ordernumber");
	
	document.overdueForm.action="${pageContext.request.contextPath }/order/overdueSubmit.action?ordernumber="+ordernumber.value+"";
	document.overdueForm.submit();
	window.close(); 
	window.opener.reload(); 
	
}

</script>
</head>
<body>
<div id="forlogin">
 <form name="overdueForm" method="post" >
      <table width="100%"  border="0" align="center"  cellspacing="2" bordercolor="#666666">
        <tr>
          <td colspan="2" bgcolor="#eeeeee" style="padding-top:8px;padding-bottom:8px;padding-left:15px;padding-right:10px;"><font color="#FF7F00" face="微软雅黑">逾期订单：</font>
          <font color="#5ca8fd" face="微软雅黑">${ordernumber }</font></td>
          <input type="hidden" id="ordernumber" value="${ordernumber }"/>
        </tr> 
       
        <tr>
          <td width="120" align="right" ><font color="#FF7F00" face="微软雅黑">逾期时间：</font></td>
          <td> <ul>
          
         
              
        <li><input type="radio" name="duekey"  value="7" data-labelauty="7&nbsp;天"></li>
         <li><input type="radio" name="duekey"  value="15" data-labelauty="15天"></li>
        <li><input type="radio" name="duekey"  value="30" data-labelauty="30天"></li>                      
           
	
	
		</ul> 
		</td>
        </tr>
   
		
		<script src="../js/jquery-1.8.3.min.js"></script>
<script src="../js/jquery-labelauty.js"></script>
<script>
$(function(){
	$(':input').labelauty();
});
</script>
        <tr>
          <td colspan="2" align="left" style="padding-left:210px;"><input type="button" onClick="overdue()" value="申请逾期" class="buttonStyle" />
           <input onclick="close1()" class="buttonStyle" type="button" value="关闭" /></td>
        </tr>
      </table>
      </form>
</div></body>
</html>