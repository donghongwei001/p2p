<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="../bootstrap/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/menu.js"></script>
<link rel="icon" href="favicon.ico">
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../bootstrap/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<style>
body {
	margin: 0;
	padding: 0;
}

#tab {
	width: 60%;
	height: auto;
	margin-left: 200px;
	margin-top: 100px;
}
</style>
</head>
<body>

	<form action="/p2p/person/update.do">
		<table class="table table-hover" id="tab">
			<c:forEach items="${person}" var="para">
				<tr class="warning">
					<td>姓名:</td>
					<td><input type="text" name="name"
						value="${para.PERSONALNAME}" required="required" /></td>
				</tr>
				<tr class="warning">
					<td>身份证号:</td>
					<td><input type="text" name="name" value="${para.IDCARD}"
						required="required" /></td>
				</tr>
				<tr class="danger">
					<td>手机号:</td>
					<td><input type="text" name="name" value="${para.IPHONE}"
						required="required" /></td>
				</tr>
				<tr class="active">
					<td>支付帐号:</td>
					<td><input type="text" name="name"
						value="${para.ACCOUNTNUMBER}" required="required" /></td>
				</tr>
				<tr class="danger">
					<td>联系邮箱:</td>
					<td><input type="text" name="name" value="${para.MAILBOX}"
						required="required" /></td>
				</tr>
				<tr class="info">
					<td>性别:</td>
					<td><input type="text" name="name" value="${para.SEX}"
						required="required" /></td>
				</tr>
				<tr class="danger">
					<td>出生日期:</td>
					<td><input type="text" name="name" value="${para.BIRTHDAY}"
						required="required" /></td>
				</tr>
				<tr class="active">
					<td>学历:</td>
					<td><input type="text" name="name" value="${para.EDUCATIONAL}"
						required="required" /></td>
				</tr>
				<tr class="active">
					<td>婚姻状况:</td>
					<td><input type="text" name="name" value="${para.MARRIAGE}"
						required="required" /></td>
				</tr>
				<tr class="active">
					<td>是否有子女:</td>
					<td><input type="text" name="name" value="${para.HAVACHIDREN}"
						required="required" /></td>
				</tr>
				<tr class="success">
					<td>地址:</td>
					<td><input type="text" name="name" value="${para.ADDRESS}"
						required="required" /></td>
				</tr>
				<tr class="success">
					<td>家庭电话:</td>
					<td><input type="text" name="name" value="${para.HOMEPHONE}"
						required="required" /></td>
				</tr>
				<tr class="success">
					<td>工作年限:</td>
					<td><input type="text" name="name" value="${para.WORKLIFE}"
						required="required" /></td>
				</tr>
				<tr class="success">
					<td>职业:</td>
					<td><input type="text" name="name" value="${para.OCCUPATION}"
						required="required" /></td>
				</tr>
				<tr class="success">
					<td>工作单位:</td>
					<td><input type="text" name="name" value="${para.WORKUNIT}"
						required="required" /></td>
				</tr>
				<tr class="success">
					<td>单位性质:</td>
					<td><input type="text" name="name"
						value="${para.UNITPROPERTIES}" required="required" /></td>
				</tr>
				<tr class="success">
					<td>单位电话:</td>
					<td><input type="text" name="name" value="${para.UNITPHONE}"
						required="required" /></td>
				</tr>
				<tr class="success">
					<td>月收入:</td>
					<td><input type="text" name="name"
						value="${para.MONTHLYINCOME}" required="required" /></td>
				</tr>
				<tr class="active">
					<td>是否有房:</td>
					<td><input type="text" name="name" value="${para.HAVEROOM}"
						required="required" /></td>
				</tr>
				<tr class="active">
					<td>是否有房贷:</td>
					<td><input type="text" name="name" value="${para.HOUSELOAN}"
						required="required" /></td>
				</tr>
				<tr class="active">
					<td>是否有车:</td>
					<td><input type="text" name="name" value="${para.HAVECAR}"
						required="required" /></td>
				</tr>
				<tr class="active">
					<td>是否有车贷:</td>
					<td><input type="text" name="name" value="${para.CARLOAN}"
						required="required" /></td>
				</tr>
				<tr class="danger">
					<td>亲属姓名:</td>
					<td><input type="text" name="name" value="${para.CONTACTNAME}"
						required="required" /></td>
				</tr>
				<tr class="danger">
					<td>亲属关系:</td>
					<td><input type="text" name="name"
						value="${para.CONTACTRELATION}" required="required" /></td>
				</tr>
				<tr class="danger">
					<td>亲属电话:</td>
					<td><input type="text" name="name"
						value="${para.CONTACTPHONE}" required="required" /></td>
				</tr>
			</c:forEach>
			<tr class="danger" align="right">
				<td></td>
				<td><input type="submit" class="btn btn-danger" value="提交" /></td>
			</tr>
		</table>
	</form>
</body>
</html>
