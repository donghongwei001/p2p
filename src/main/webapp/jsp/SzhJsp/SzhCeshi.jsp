<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>用户管理</title>

<link rel="stylesheet" type="text/css"
	href="../../easyui/css/easyui.css">
<link rel="stylesheet" type="text/css" href="../../easyui/css/icon.css">
<script src="../../easyui/js/jquery.min.js"></script>
<script src="../../easyui/js/jquery.easyui.min.js"></script>
<script src="../../easyui/js/easyui-lang-zh_CN.js"></script>

<style>
.formtable th {
	border-bottom: 1px dashed #ccc;
	font-family: 仿宋;
}

.formtable td {
	border-bottom: 1px dashed #ccc;
}
</style>

</head>
<body>
	<input id="ss"></input> 
	<div id="mm" style="width:120px"> 
	<div data-options="name:'all',iconCls:'icon-ok'">查询全部</div> 
	<div data-options="name:'sports',iconCls:'icon-ok'">查询关键</div> 
	</div> 	

		<div id="toolbar">
		<a id="addBtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-add'">增加</a> <a id="updateBtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-edit'">更新</a> <a id="deleteBtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-remove'">删除</a>
		</div>
	<div id="handlerDialog">
		<form id="myForm" method="post">
			<table width="100%" class="formtable">
				<tr>
					<th height="40">用户编号：</th>
					<td><input id="userID" name="userID"
						class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="40">用户名称：</th>
					<td><input id="username" name="username"
						class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="40">用户密码：</th>
					<td><input id="pwd" name="pwd" class="easyui-validatebox"
						data-options="required:true"></td>
				</tr>
				<tr>
					<th height="40">账户余额：</th>
					<td><input id="money" name="money" class="easyui-validatebox"
						data-options="required:true"></td>
				</tr>
				<tr>
					<th height="40">用户状态：</th>
					<td><input id="state" name="state"></td>
				</tr>
			</table>
		</form>
	</div>

	<table id="proDataGrid"></table>



	<script>
	$(function(){
		$('#proDataGrid').datagrid({			
			url : '/p2p/queryUser.do',
			fitColumns : true,
			striped : true,
			idField : "userID",
			loadMsg : "努力加载中......",
			fit : true,
			rownumbers : true,
			singleSelect : false,
			pagination : true,
			pageSize : 10,
			pageList : [ 10, 20, 30 ],
			toolbar : "#toolbar",
			columns : [ [{
				field : 'money',
				title : '账户余额',
				width : 200
			},{
				field : 'pwd',
				title : '用户密码',
				width : 200
			}, {
				field : 'state',
				title : '用户状态',
				width : 200
			}, {
				field : 'userID',
				title : '用户编号',
				width : 200
			}, {
				field : 'username',
				title : '用户名称',
				width : 200
			},{
				field:'operate',
				title:'操作',
				align:'center',
				width:$(this).width()*0.1,  
			    formatter:function(value, row, index){  
			       /*  var str = '<a href="javascript:void(0)" name="opera" class="easyui-linkbutton"></a><a href="javascript:void(0)" name="opera2" class="easyui-linkbutton"></a>'; */  
			       var str = '<input type="button" value="启用"/><input type="button" value="禁用"/>' 
			       return str;  
			        },
			        /* onLoadSuccess:function(data){    
		       			$("a[name='opera']").linkbutton({text:'禁用',plain:false,iconCls:'icon-cancel'});
		       			$("a[name='opera2']").linkbutton({text:'启用',plain:false,iconCls:'icon-ok'});
					},   */
			} ] ],
		});
	//--------------------------------------------------------------------------------------------------------------------------------------------
		$("#addBtn").click(function() {
			$('#handlerDialog').dialog("open");
		});
		$('#handlerDialog').dialog({
			title : '增加用户',
			iconCls : 'icon-add',
			width : 400,
			height : 300,
			top : 100,
			closed : true,
			cache : false,
			modal : true,
			buttons : [ {
				text : '确定',
				iconCls : 'icon-save',
				handler : function() {
					$('#myForm').form('submit', {
						url : "/p2p/addUser.do",
						onSubmit : function() {
							var isValid = $(this).form('validate');
							return isValid;
						},
						success : function(data) {
							if (data == 1) {
								$('#proDataGrid').datagrid('insertRow', {
									index : 0, // 索引从0开始
									row : {
										money : $("#money").val(),
										pwd : $("#pwd").val(),
										userID : $("#userID").val(),
										username : $("#username").val(),
										state : $("#state").val(),
									}
								});
								$('#handlerDialog').dialog("close");
								
							}
						}
					});
				}
			}, {
				text : '取消',
				iconCls : 'icon-clear',
				handler : function() {
					$('#handlerDialog').dialog("close")
				}
			} ]
		});
	//----------------------------------------------------------------------------------------------------------------------------------
		$('#ss').searchbox({ 
			searcher:function(value,name){ 
			alert(value + "," + name) 
			}, 
			menu:'#mm', 
			prompt:'请输入...' 
			}); 
		
	})
</script>
</body>
</html>