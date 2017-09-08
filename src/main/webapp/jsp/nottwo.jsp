<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="../easyui/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="../easyui/css/icon.css" />
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css" />
<script src="../easyui/js/jquery.min.js"></script>
<script src="../easyui/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../easyui/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<table id="proDataGrid"> 
		<c:forEach items="${mp}" var="p">
			<tr>
				<td>${p.PROJECTID}</td>
				<td>${p.PROJECTNAME}</td>
				<td>${p.FINALDATE}</td>
				<td>${p.FINALNAME}</td>
				<td>${p.FINALREMARKS}</td>
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
<script type="text/javascript">
$(function(){
	$('#proDataGrid').datagrid({
	url : 'http://localhost:9088/p2p/yx/fabu.do',
	// data:data,
	fitColumns : true,//自动适应网格宽度
	striped : true,//显示斑马线
	//idField : "projectid",//设置productid为主键
	loadMsg : "努力加载中......",//加载慢的时候提示信息
	fit : true,//
	rownumbers : true,
	singleSelect : false,
	pagination : true,
	pageSize : 20,
	pageList : [ 20, 40, 60 ],
	toolbar : "#toolbar",

	columns : [ [{
		field : 'PROJECTID',
		title : '项目ID',
		width : 200,
		
	},
	{
		field : 'PROJECTNAME',
		title : '项目名称',
		width : 200
	}, {
		field : 'FIRSTDATE',
		title : '终审时间',
		width : 200
	},{
		field : 'FIRSTNAME',
		title : '审核人',
		width : 200
	},{
		field : 'FIRSTREMARKS',
		title : '审核意见',
		width : 200
	}] ]
});
});
</script>