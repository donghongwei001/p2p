<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../easyui/css/icon.css" />
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css" />

<script src="../easyui/js/jquery.min.js"></script>
<script src="../easyui/js/jquery.easyui.min.js"></script>

<script type="text/javascript" src="../easyui/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<p>
		<span class="badge badge-danger"
			style="font-size: 20px; margin-left: 3px; margin-top: 40px;">公司当前总金额为：<span
			class="glyphicon glyphicon-usd"></span><span id="money"></span>元
		</span>
	</p>
	<table id="tb"></table>
</body>
<script type="text/javascript">
	$(function() {
		$.ajax({
			type : "post",
			url : "/p2p/total/money.do",
			//contentType :"application/json;charset=UTF-8",
			//data:JSON.stringify(data),
			success : function(data) {
				$("#money").html(data);
				//window.location.href="http://localhost:9088/p2p/jsp/Fabu.jsp"
			}
		});
		$('#tb').datagrid({
			url : '/p2p/total/shouzhi.do',
			striped : true,
			rownumbers : true,
			fitColumns : true,
			singleSelect : false, //是否只能选择一行
			pageSize : 10,//每页显示的记录条数，默认为10 
			pageList : [ 5, 10, 15 ],//可以设置每页记录条数的列表 
			beforePageText : '第',//页数文本框前显示的汉字 
			afterPageText : '页    共 {pages} 页',
			pagination : true, //分页工具栏
			pagePosition : "bottom",
			toolbar : "#toolbar",
			/* onClickRow:function(rowIndex,rowData){
				 var rowInfo = $("#tb").datagrid('getChecked');
				 
				 if (rowInfo) {
					alert("已经选中的行");
				}
			}, */
			//fit : true,  
			onLoadSuccess : function(list) {

			},
			columns : [ [ {
				field : 'PROJECTID',
				title : '项目id',
				width : 150,
				align : 'center'
			}, {
				field : 'time1',
				title : '时间',
				width : 150,
				align : 'center'
			}, {
				field : 'MONEY',
				title : '金额',
				width : 150,
				align : 'center'
			}, {
				field : 'CODENAME',
				title : '收入或支出',
				width : 250,
				align : 'center'
			}] ]
		});
	})
</script>
</html>