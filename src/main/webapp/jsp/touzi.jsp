<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<table id="tb"></table>
	<div id="toolbar">
		 <input id="powername"> <a
			id="selbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">查詢
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="allbtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">顯示所有
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>

	</div>
</body>
<script type="text/javascript">
$(function(){
	$("#allbtn").click(function() {
		window.location.reload();
	});

$('#tb').datagrid({
	url : '/p2p/dyt/seltouzi.do',
	striped : true,
	rownumbers : true,
	fitColumns : true,
	singleSelect : false, //是否只能选择一行
	pageSize : 10,//每页显示的记录条数，默认为10 
	pageList : [ 2, 10, 15 ],//可以设置每页记录条数的列表 
	beforePageText : '第',//页数文本框前显示的汉字 
	afterPageText : '页    共 {pages} 页',
	pagination : true, //分页工具栏
	pagePosition : "bottom",
	toolbar : "#toolbar",
	fit : true,  
	onLoadSuccess : function(list) {

	},
	columns : [ [{
		field : 'NAME',
		title : '投资人',
		width : 150,
		align : 'center'
	}, {
		field : 'PROJECTNAME',
		title : '项目名称',
		width : 150,
		align : 'center'
	},  {
		field : 'time1',
		title : '投资时间',
		width : 150,
		align : 'center'
	},{
		field : 'MONEY',
		title : '投资金额',
		width : 150,
		align : 'center'
	},{
		field : 'LIFELOAN',
		title : '使用期限（个月）',
		width : 150,
		align : 'center'
	},{
		field : 'RATEMONEY',
		title : '利率',
		width : 150,
		align : 'center'
	}] ]
});
$("#selbtn").click(function() {
	var index = $("#powername").val();
	if (index != "") {
		$('#tb').datagrid({
			url : '/p2p/dyt/selonetouzi.do',
			striped : true,
			rownumbers : true,
			fitColumns : true,
			singleSelect : false, //是否只能选择一行
			pageSize : 10,//每页显示的记录条数，默认为10 
			pageList : [ 5, 10, 15 ],//可以设置每页记录条数的列表 
			beforePageText : '第',//页数文本框前显示的汉字 
			afterPageText : '页    共 {pages} 页',
			pagination : true, //分页工具栏
			pagePosition : "top",
			toolbar : "#toolbar",
			queryParams : {
				name : $("#powername").val()
			},

			/* onClickRow:function(rowIndex,rowData){
				 var rowInfo = $("#tb").datagrid('getChecked');
				 
				 if (rowInfo) {
					alert("已经选中的行");
				}
			}, */
			//fit : true,  
			onLoadSuccess : function(list) {

			},
			columns : [ [{
				field : 'NAME',
				title : '投资人',
				width : 150,
				align : 'center'
			}, {
				field : 'PROJECTNAME',
				title : '项目名称',
				width : 150,
				align : 'center'
			},  {
				field : 'time1',
				title : '投资时间',
				width : 150,
				align : 'center'
			},{
				field : 'MONEY',
				title : '投资金额',
				width : 150,
				align : 'center'
			},{
				field : 'LIFELOAN',
				title : '使用期限（个月）',
				width : 150,
				align : 'center'
			},{
				field : 'RATEMONEY',
				title : '利率',
				width : 150,
				align : 'center'
			}] ]
		});
	} else {
		alert("請輸入您要查詢的數據");
	}
})
})
</script>
</html>