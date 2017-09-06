<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>逾期项目</title>
<script src="../easyui/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="../easyui/css/icon.css" />
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css" />

<script src="../easyui/js/jquery.min.js"></script>
<script src="../easyui/js/jquery.easyui.min.js"></script>

<script type="text/javascript" src="../easyui/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<table id="proDataGrid">
		<c:forEach items="${lo}" var="o">
			<tr>
				<td>${o.projectname }</td>
				<td>${o.outday }</td>
				<td>${o.outmoney }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
<script type="text/javascript">
$(function(){
	$('#proDataGrid').datagrid({
	url : 'http://localhost:9088/p2p/yx/first.do',
	// data:data,
	fitColumns : true,//自动适应网格宽度
	striped : true,//显示斑马线
	idField : "projectid",//设置productid为主键
	loadMsg : "努力加载中......",//加载慢的时候提示信息
	fit : true,//
	rownumbers : true,
	singleSelect : false,
	pagination : true,
	pageSize : 20,
	pageList : [ 20, 40, 60 ],
	toolbar : "#toolbar",

	columns : [ [

	{
		field : 'projectname',
		title : '逾期项目',
		width : 200,
		
	}, {
		field : 'outday',
		title : '逾期天数',
		width : 200
	}, {
		field : 'outmoney',
		title : '逾期金额',
		width : 200
	}] ]
});
});
</script>