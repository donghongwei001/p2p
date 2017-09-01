<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>权限界面</title>

<link rel="stylesheet" type="text/css" href="src/main/webapp/easyui/css/easyui.css">
<link rel="stylesheet" type="text/css" href="src/main/webapp/easyui/css/icon.css">
<script src="src/main/webapp/easyui/js/jquery.min.js"></script>
<script src="src/main/webapp/easyui/js/jquery.easyui.min.js"></script>
<script src="src/main/webapp/easyui/js/easyui-lang-zh_CN.js"></script>

</head>
<body>
	<a href="jsp/SzhCeshi.jsp">增加</a>
	<table border="1">
   				<tr>
   					<td>用户编号</td>
   					<td>用户名称</td>
   					<td>用户密码</td>
   					<td>账户余额</td>
   				</tr>
   			<c:forEach var="su" items="${su}">				
   				<tr>
   					<td>${su.userID}</td>
   					<td>${su.username}</td>
   					<td>${su.pwd}</td>
   					<td>${su.money}</td>
   				</tr>
   			</c:forEach>
   	</table>
</body>
</html>