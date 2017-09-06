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
		<c:forEach items="${lm}" var="lm">
			<tr>
				<td><input type="text" size="5" name="faid"
				style="border:0px;background:rgba(0, 0, 0, 0);"
				value="${lm.PROJECTID}"></td>
				<td>${lm.USERNAME}</td>
				<td>${lm.PROJECTNAME}</td>
				<td>${lm.NAME}</td>
				<td>${lm.LOCATION}</td>
				<td>${lm.MONEY}</td>
				<td><input id="dd" type="text" name="shijian"></input></td>
				<td><input type="button" value="发布" class="btn default btn-xs" id="sal"></td>
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
		width : 50,
		
	},{
		field : 'USERNAME',
		title : '用户名',
		width : 50,
		
	},
	{
		field : 'PROJECTNAME',
		title : '项目名称',
		width : 100
	}, {
		field : 'NAME',
		title : '项目类型',
		width : 80
	},{
		field : 'LOCATION',
		title : '项目地点',
		width : 120
	},{
		field : 'MONEY',
		title : '金额',
		width : 200
	},{
		field : 'SHIJIAN',
		title : '截止日期',
		width : 200
	},{
		field : 'CAOZUO',
		title : '操作',
		width : 200
	}] ]
});
	//////////////////
	$('#dd').datebox({    
	    required:true   
	});
	///////////////
	
	$("#sal").click(function(){
		alert("333");
		var data={};
		data["projectid"]=$('input[name="faid"]').val();
		data["lasttime"]=$('input[name="shijian"]').val();
		//data["poststatus"]=$("input[name='lstates']:checked").val();
		alert(data.projectid);
		alert(data.lasttime);
		$.ajax({
			type : "post",
			url : "/p2p/first/addfa.do",
			contentType :"application/json;charset=UTF-8",
			data:JSON.stringify(data),
			success : function(data1){
				alert("发布成功");
				window.location.href="http://localhost:9088/p2p/first/addfa.do"
			}
		});
		
	});
});
</script>