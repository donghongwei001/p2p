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
<div id="toolbar">
		<input id="powername"> <a
			id="selbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">查詢
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="allbtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">顯示所有
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>

	</div>
<table id="tb"></table>
</body>
<script type="text/javascript">
	$(function(){
		$("#allbtn").click(function() {
			window.location.reload();
		});
		$("#selbtn").click(function() {
			var index = $("#powername").val();
			if (index != "") {
				$('#tb').datagrid({
					url : '/p2p/add/queryoneuserinfo.do',
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
						field : 'PERSONALID',
						title : 'id',
						width : 150,
						align : 'center',
						hidden : true
					}, {
						field : 'USERID',
						title : '用户id',
						width : 150,
						align : 'center',
						
					},  {
						field : 'PERSONALNAME',
						title : '姓名',
						width : 150,
						align : 'center'
					},{
						field : 'IDCARD',
						title : '身份证号',
						width : 150,
						align : 'center'
					},{
						field : 'IPHONE',
						title : '电话',
						width : 150,
						align : 'center'
					},{
						field : 'ACCOUNTNUMBER',
						title : '银行卡号',
						width : 150,
						align : 'center'
					},{
						field : 'MAILBOX',
						title : 'email',
						width : 150,
						align : 'center'
					},{
						field : 'SEX',
						title : '性别',
						width : 150,
						align : 'center'
					},{
						field : 'BIRTHDAY',
						title : '生日',
						width : 150,
						align : 'center'
					},{
						field : 'EDUCATIONAL',
						title : '学历',
						width : 150,
						align : 'center'
					},{
						field : 'MARRIAGE',
						title : '是否已婚',
						width : 150,
						align : 'center'
					},{
						field : 'HAVACHIDREN',
						title : '是否有子女',
						width : 150,
						align : 'center'
					},{
						field : 'ADDRESS',
						title : '地址',
						width : 150,
						align : 'center'
					},{
						field : 'HOMEPHONE',
						title : '家庭电话',
						width : 150,
						align : 'center'
					},{
						field : 'WORKLIFE',
						title : '工作年限',
						width : 150,
						align : 'center'
					},{
						field : 'OCCUPATION',
						title : '职业',
						width : 150,
						align : 'center'
					},{
						field : 'WORKUNIT',
						title : '工作单位',
						width : 150,
						align : 'center'
					},{
						field : 'UNITPROPERTIES',
						title : '单位性质',
						width : 150,
						align : 'center'
					},{
						field : 'UNITPHONE',
						title : '单位电话',
						width : 150,
						align : 'center'
					},{
						field : 'MONTHLYINCOME',
						title : '月收入',
						width : 150,
						align : 'center'
					},{
						field : 'HAVEROOM',
						title : '是否有房',
						width : 150,
						align : 'center'
					},{
						field : 'HOUSELOAN',
						title : '是否房贷',
						width : 150,
						align : 'center'
					},{
						field : 'HAVECAR',
						title : '是否有车',
						width : 150,
						align : 'center'
					},{
						field : 'CARLOAN',
						title : '是否车贷',
						width : 150,
						align : 'center'
					},{
						field : 'CONTACTNAME',
						title : '亲属姓名',
						width : 150,
						align : 'center'
					},{
						field : 'CONTACTRELATION',
						title : '亲属关系',
						width : 150,
						align : 'center'
					},{
						field : 'CONTACTPHONE',
						title : '亲属电话',
						width : 150,
						align : 'center'
					}] ]
				});
			} else {
				alert("請輸入您要查詢的數據");
			}
		})
		$('#tb').datagrid({
			url : '/p2p/add/queryuserinfo.do',
			striped : true,
			rownumbers : true,
			//fitColumns : true,
			singleSelect : false, //是否只能选择一行
			pageSize : 10,//每页显示的记录条数，默认为10 
			pageList : [ 5, 10, 15 ],//可以设置每页记录条数的列表 
			beforePageText : '第',//页数文本框前显示的汉字 
			afterPageText : '页    共 {pages} 页',
			pagination : true, //分页工具栏
			pagePosition : "top",
			toolbar : "#toolbar",
			/* queryParams: {
				id: $("#powername").val()
			}, */

			/* onClickRow:function(rowIndex,rowData){
				 var rowInfo = $("#tb").datagrid('getChecked');
				 
				 if (rowInfo) {
					alert("已经选中的行");
				}
			}, */
			//fit : true,  
			onLoadSuccess : function(list) {

			},
			columns : [ [ /* {
				field : 'xuanze',
				title : 'Code',
				width : 200,
				align : 'center',
				checkbox : true
			}, */{
				field : 'PERSONALID',
				title : 'id',
				width : 150,
				align : 'center',
				hidden : true
			}, {
				field : 'USERID',
				title : '用户id',
				width : 150,
				align : 'center',
				
			},  {
				field : 'PERSONALNAME',
				title : '姓名',
				width : 150,
				align : 'center'
			},{
				field : 'IDCARD',
				title : '身份证号',
				width : 150,
				align : 'center'
			},{
				field : 'IPHONE',
				title : '电话',
				width : 150,
				align : 'center'
			},{
				field : 'ACCOUNTNUMBER',
				title : '银行卡号',
				width : 150,
				align : 'center'
			},{
				field : 'MAILBOX',
				title : 'email',
				width : 150,
				align : 'center'
			},{
				field : 'SEX',
				title : '性别',
				width : 150,
				align : 'center'
			},{
				field : 'BIRTHDAY',
				title : '生日',
				width : 150,
				align : 'center'
			},{
				field : 'EDUCATIONAL',
				title : '学历',
				width : 150,
				align : 'center'
			},{
				field : 'MARRIAGE',
				title : '是否已婚',
				width : 150,
				align : 'center'
			},{
				field : 'HAVACHIDREN',
				title : '是否有子女',
				width : 150,
				align : 'center'
			},{
				field : 'ADDRESS',
				title : '地址',
				width : 150,
				align : 'center'
			},{
				field : 'HOMEPHONE',
				title : '家庭电话',
				width : 150,
				align : 'center'
			},{
				field : 'WORKLIFE',
				title : '工作年限',
				width : 150,
				align : 'center'
			},{
				field : 'OCCUPATION',
				title : '职业',
				width : 150,
				align : 'center'
			},{
				field : 'WORKUNIT',
				title : '工作单位',
				width : 150,
				align : 'center'
			},{
				field : 'UNITPROPERTIES',
				title : '单位性质',
				width : 150,
				align : 'center'
			},{
				field : 'UNITPHONE',
				title : '单位电话',
				width : 150,
				align : 'center'
			},{
				field : 'MONTHLYINCOME',
				title : '月收入',
				width : 150,
				align : 'center'
			},{
				field : 'HAVEROOM',
				title : '是否有房',
				width : 150,
				align : 'center'
			},{
				field : 'HOUSELOAN',
				title : '是否房贷',
				width : 150,
				align : 'center'
			},{
				field : 'HAVECAR',
				title : '是否有车',
				width : 150,
				align : 'center'
			},{
				field : 'CARLOAN',
				title : '是否车贷',
				width : 150,
				align : 'center'
			},{
				field : 'CONTACTNAME',
				title : '亲属姓名',
				width : 150,
				align : 'center'
			},{
				field : 'CONTACTRELATION',
				title : '亲属关系',
				width : 150,
				align : 'center'
			},{
				field : 'CONTACTPHONE',
				title : '亲属电话',
				width : 150,
				align : 'center'
			}] ]

		})
	})
</script>
</html>