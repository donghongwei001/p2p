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
	
	<table> 
		<c:forEach items="${list }" var="li">
			<tr>
				<td>${li.PROJECTNAME }</td><td>${li.PROJECTTYPE }</td><td>${li.LOCATION }</td><td>${li.TIME }</td><td>${li.MONEY }</td><td>${li.LIFELOAN }</td><td>${li.RATEMONEY }</td><td>${li.APPENDIX }</td>
			</tr>
		</c:forEach>
	</table>
	<table id="dg">
		<tr>
			<td></td>
		</tr>
		
	</table>
	
</body>
</html>


