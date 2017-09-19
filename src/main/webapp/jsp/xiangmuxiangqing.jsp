<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>personal</title>
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="../easyui/js/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    
	
	
	
	<script type="text/javascript">
		
	</script>
	
</head>
<body>
	<a href="/p2p/user/mytouzi.do"><button style="margin-left:50px;" type="button" class="btn btn-primary">返回</button></a><br/>
	
		<c:forEach items="${jiekuan}" var="user">
				<div style="background-color:#EEEEE0;width:500px;margin-left:200px;padding:50px;;float:left">	
				<span class="label label-default">项目详情</span>	<br/>	<br/>				
				项目id：<input class="form-control" id="disabledInput" type="text" placeholder="${user.ID}" disabled style="width:200px">
				项目名称：<input class="form-control" id="disabledInput" type="text" placeholder="${user.PROJECTNAME}" disabled style="width:200px;">
				项目类型：<input class="form-control" id="disabledInput" type="text" placeholder="${user.PROJECTTYPE}" disabled style="width:200px;">
				项目地点：<input class="form-control" id="disabledInput" type="text" placeholder="${user.LOCATION}" disabled style="width:200px;">
				借款期限：	<input class="form-control" id="disabledInput" type="text" placeholder="${user.LIFELOAN}" disabled style="width:200px;">
				</div>
				<div style="background-color:#EEEEE0;width:500px;margin-left:200px;padding:50px;float:left">	
				<span class="label label-default">项目详情</span>	<br/>	<br/>	
				借款人姓名：<input class="form-control" id="disabledInput" type="text" placeholder="${user.PERSONALNAME}" disabled style="width:200px;">
				借款人手机号：<input class="form-control" id="disabledInput" type="text" placeholder="${user.IPHONE}" disabled style="width:200px;">
				邮箱：<input class="form-control" id="disabledInput" type="text" placeholder="${user.MAILBOX}" disabled style="width:200px;">
				性别：<input class="form-control" id="disabledInput" type="text" placeholder="${user.SEX}" disabled style="width:200px;">
				生日：<input class="form-control" id="disabledInput" type="text" placeholder="${user.BIRTHDAY}" disabled style="width:200px;">
				学历：<input class="form-control" id="disabledInput" type="text" placeholder="${user.EDUCATIONAL}" disabled style="width:200px;">
				</div>	
			<div style="background-color:#EEEEE0;width:600px;margin-left:200px;padding:50px;float:left">
			<span class="label label-default">收款详情</span>	<br/>	<br/>
		</c:forEach>
		<table class="table table-hover" style="width:500px;">
		<thead>
								<tr>
									<th><h4>项目id</h4></th>
									<th><h4>收款本金</h4></th>
									<th><h4>收款利率</h4></th>
									<th><h4>收款时间</h4></th>
									<th><h4>收款金额</h4></th>
									<th><h4>收款状态</h4></th>
									
								</tr>
							</thead>
		<c:forEach items="${jiekuanxiangqing}" var="user">
			<tr><td>${user.PROJECTID }</td>
				<td>${user.BENJIN }</td>
				<td>${user.LIxi }</td>
				<td>${user.TIME }</td>
				<td>${user.MONEY }</td>
				<td><c:if test="${user.STATUS  eq 14}">未还款</c:if><c:if test="${user.STATUS  eq 13}">已还款</c:if></td>
			</tr>
		</c:forEach>
		</table>			
		</div>		
</body>
</html>
<script>
	
	</script>