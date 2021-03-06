<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
		field : 'PROJECTNAME',
		title : '项目名称',
		width : 200,
		
	}, {
		field : 'PROJECTTYPE',
		title : '项目类型',
		width : 200
	}, {
		field : 'LOCATION',
		title : '项目地点',
		width : 200
	},{
		field : 'TIME',
		title : '时间',
		width : 200
	},{
		field : 'MONEY',
		title : '项目金额',
		width : 200
	},{
		field : 'LIFELOAN',
		title : '借款期限',
		width : 200
	},{
		field : 'RATEMONEY',
		title : '利率',
		width : 200
	},{
		field : 'APPENDIX',
		title : '附件',
		width : 200
	}] ]
});
});
</script>

