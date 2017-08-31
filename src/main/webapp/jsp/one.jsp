<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>用户</td>
			<td>项目名称</td>
			<td>项目类型</td>
			<td>项目地点</td>
			<td>申请时间</td>
			<td>金额</td>
			<td>借款期限</td>
			<td>利率</td>
			<td>附件</td>
			<td>审核状态</td>
		</tr>
		<c:forEach items="${ly }" var="l">
			<tr>
				<td>${l.userid }</td>
				<td>${l.projectname }</td>
				<td>${l.projecttype }</td>
				<td>${l.location }</td>
				<td>${l.time }</td>
				<td>${l.money }</td>
				<td>${l.lifeloan }</td>
				<td>${l.ratemoney }</td>
				<td>${l.appendix }</td>
				<td>${l.aduitstate }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>