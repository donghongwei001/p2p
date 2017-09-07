<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<style>

		body {
			margin: 0;
			padding: 0;
			
		}
		
		#tab {
			width:60%;
			height:auto;
			margin-left:200px;
			margin-top:100px;
		}
		
	</style>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	
	<script type="text/javascript" src="../bootstrap/js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" src="../bootstrap/js/menu.js"></script>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

    <link rel="icon" href="favicon.ico">

    <title>Starter Template for Bootstrap</title>
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../bootstrap/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
   

    <script src="js/ie-emulation-modes-warning.js"></script>
	
</head>

<body >
		
		<form method="post">
			<table id="tab" class="table table-hover">
				<tr>
					<td> 
                		<a href="/p2p/person/ypgPP.do">编辑</a>
                    </td>         
				</tr>
			<c:forEach items="${personal}" var="pp">
				
				<tr class="warning">
					<td>姓名:</td><td required="required">${pp.PERSONALNAME}</td>
				</tr>
				<tr class="warning">
					<td>身份证号:</td><td>${pp.IDCARD}</td>
				</tr>
				<tr class="danger">
					<td>手机号:</td><td>${pp.IPHONE}</td>
				</tr>
				<tr class="active">
					<td>支付账号:</td><td>${pp.ACCOUNTNUMBER}</td>
				</tr>
				<tr class="danger">
					<td>联系邮箱:</td><td>${pp.MAILBOX}</td>
				</tr>
				<tr class="info">
					<td>性别:</td><td >${pp.SEX}</td>
				</tr>
				<tr class="danger">
					<td>出生日期:</td><td>${pp.BIRTHDAY}</td>
				</tr>
				<tr class="active">
					<td>学历:</td><td>${pp.EDUCATIONAL}</td>
				</tr>
				<tr class="active">
					<td>婚姻状况:</td><td>${pp.MARRIAGE}</td>
				</tr>
				<tr class="active">
					<td>是否有子女:</td>
					<td>${pp.HAVACHIDREN}</td>
				</tr>
				<tr class="success">
					<td>地址:</td><td>${pp.ADDRESS}</td>
				</tr>
				<tr class="success">
					<td>家庭电话:</td><td>${pp.HOMEPHONE}</td>
				</tr>
				<tr class="success">
					<td>工作年限:</td><td>${pp.WORKLIFE}</td>
				</tr>
				<tr class="success">
					<td>职业:</td><td>${pp.OCCUPATION}</td>
				</tr>
				<tr class="success">
					<td>工作单位:</td><td>${pp.WORKUNIT}</td>
				</tr>
				<tr class="success">
					<td>单位性质:</td><td>${pp.UNITPROPERTIES}</td>
				</tr>
				<tr class="success">
					<td>单位电话:</td><td>${pp.UNITPHONE}</td>
				</tr>
				<tr class="success">
					<td>月收入:</td><td> ${pp.MONTHLYINCOME}</td>
				</tr>
				<tr class="active">
					<td>是否有房:</td>
					<td>${pp.HAVEROOM}</td>
				</tr>
				<tr class="active">
					<td>是否有房贷:</td>
					<td>${pp.HOUSELOAN}</td>
				</tr>
				<tr class="active">
					<td>是否有车:</td>
					<td>${pp.HAVECAR}</td>
				</tr>
				<tr class="active">
					<td>是否有车贷:</td>
					<td>${pp.CARLOAN}</td>
				</tr>
				<tr class="danger">
					<td>亲属姓名:</td><td>${pp.CONTACTNAME}</td>
				</tr>
				<tr class="danger">
					<td>亲属关系:</td><td>${pp.CONTACTRELATION}</td>
				</tr>
				<tr class="danger">
					<td>亲属电话:</td><td>${pp.CONTACTPHONE}</td>
				</tr>
				
			</c:forEach>
		  </table>
	
		</form>
		
</body>	
 
</html>
