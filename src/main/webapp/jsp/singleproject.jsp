<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${listp }" var="li">
		${li.PROJECTNAME }${li.PROJECTTYPE }${li.LOCATION }${li.MONEY }${li.LIFELOAN}
	
	<form action="/p2p/add/money.do?${li.ID }">
		请输入投资金额：<input type="text" name="money">
		<input type="submit" value="完成"> 
	</form>
	</c:forEach>
</body>
</html>