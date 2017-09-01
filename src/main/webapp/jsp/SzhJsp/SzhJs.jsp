<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>角色管理</title>

<link rel="stylesheet" type="text/css" href="../../easyui/css/easyui.css">
<link rel="stylesheet" type="text/css" href="../../easyui/css/icon.css">
<script src="../../easyui/js/jquery.min.js"></script>
<script src="../../easyui/js/jquery.easyui.min.js"></script>
<script src="../../easyui/js/easyui-lang-zh_CN.js"></script>

<style>
	.formtable th{
		border-bottom: 1px dashed #ccc;
		font-family:仿宋;
	}
	.formtable td{
		border-bottom: 1px dashed #ccc;
	}
</style>
</head>
<body>
	<table id="proDataGrid"></table>
	
	<div id="toolbar">
		<a id="addBtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-add'">增加</a>
		<a id="updateBtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-edit'">更新</a>
		<a id="deleteBtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-remove'">删除</a>
	</div>
	<div id="handlerDialog">
		<form id="myForm" method="post">
			<table width="100%" class="formtable">
				<tr>
					<th height="40">角色编号：</th><td><input id="roleid" name="roleid" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="40">角色名称：</th><td><input id="rolename" name="rolename" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="40">角色状态：</th><td><input id="rolestatus" name="rolestatus" class="easyui-validatebox" data-options="required:true"></td>
				</tr>												
			</table>
		</form>
	</div>
	
	<script>
	$(function(){
		$('#proDataGrid').datagrid({			
			url : '/p2p/queryRole.do',
			fitColumns : true,
			striped : true,
			idField : "roleid",
			loadMsg : "努力加载中......",
			fit : true,
			rownumbers : true,
			singleSelect : false,
			pagination : true,
			pageSize : 10,
			pageList : [ 10, 20, 30 ],
			toolbar : "#toolbar",
			columns : [ [{
				field : 'roleid',
				title : '角色编号',
				width : 200
			},{
				field : 'rolename',
				title : '角色名称',
				width : 200
			},{
				field : 'rolestatus',
				title : '角色状态',
				width : 200
			},{
				field:'operate',
				title:'操作',
				align:'center',
				width:$(this).width()*0.1,  
			    formatter:function(value, row, index){  
			        var str = '<a href="#" name="opera" class="easyui-linkbutton"></a><a href="#" name="opera2" class="easyui-linkbutton"></a>';  
			        return str;  
			        }
			} ] ],
			onLoadSuccess:function(data){    
	       		$("a[name='opera']").linkbutton({text:'禁用',plain:false,iconCls:'icon-cancel'});
	       		$("a[name='opera2']").linkbutton({text:'启用',plain:false,iconCls:'icon-ok'});
			},  
		});
	//---------------------------------------------------------------------------------
		$("#addBtn").click(function() {
			$('#handlerDialog').dialog("open");
		});
		$('#handlerDialog').dialog({
			title : '增加角色',
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
						url : "/p2p/addRole.do",
						onSubmit : function() {
							var isValid = $(this).form('validate');
							return isValid;
						},
						success : function(data) {
							if (data == 1) {
								$('#proDataGrid').datagrid('insertRow', {
									index : 0, // 索引从0开始
									row : {
										roleid : $("#roleid").val(),
										rolename : $("#rolename").val(),
										rolestatus : $("#rolestatus").val(),

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
	//----------------------------------------------------------------------------
	})
	</script>
</body>
</html>