<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table id="proDataGrid"> 
		<c:forEach items="${ld }" var="li">
			<tr>
				<td>${li.USERNAME }</td>
				<td>${li.PROJECTNAME }</td>
				<td>${li.NAME }</td>
				<td>${li.LOCATION }</td>
				<td>${li.TIME }</td>
				<td>${li.MONEY }</td>
				<td>${li.LIFELOAN }</td>
				<td>${li.APPENDIX }</td>
			</tr>
			
		</c:forEach>
		<tr><td><a href="http://localhost:9088/p2p/yx/notone.do" style="font-size:14px;color:red">返回上页面</a></td></tr>
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
	url : 'http://localhost:9088/p2p/yx/xiang.do',
	fitColumns : true,//自动适应网格宽度
	striped : true,//显示斑马线
	loadMsg : "努力加载中......",//加载慢的时候提示信息
	fit : true,//
	rownumbers : true,
	singleSelect : false,
	pagination : true,
	pageSize : 20,
	pageList : [ 20, 40, 60 ],
	toolbar : "#toolbar",

	columns : [ [{
		field : 'USERNAME',
		title : '用户名',
		width : 50,
		
	},
	{
		field : 'PROJECTNAME',
		title : '项目名称',
		width : 100
	}, {
		field : 'PROJECTTYPE',
		title : '项目类型',
		width : 80
	},{
		field : 'LOCATION',
		title : '项目地点',
		width : 120
	},{
		field : 'TIME',
		title : '申请时间',
		width : 100
	},{
		field : 'MONEY',
		title : '金额',
		width : 200
	},{
		field : 'LIFELOAN',
		title : '期限',
		width : 120
	},{
		field : 'APPENDIX',
		title : '附件',
		width : 100
	}] ]
});
});
</script>
