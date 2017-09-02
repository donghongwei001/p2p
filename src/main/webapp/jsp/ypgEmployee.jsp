<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css">
<link rel="stylesheet" type="text/css" href="../easyui/css/icon.css">
<script src="../easyui/js/jquery.min.js"></script>
<script src="../easyui/js/jquery.easyui.min.js"></script>
<script src="../easyui/js/easyui-lang-zh_CN.js"></script>

<style>
	#secondDiv {
		width:100%;
		height:500px;
		
		border:1 solid gray;
	}
	.formtable tr{
		
		border-bottom: 1px dashed #ccc;
		font-family:仿宋;
	}
	.formtable td{
		border-bottom: 1px dashed #ccc;
	}
</style>

</head>
<body>
	<div id="secondDiv">
		<table id="proDataGrid" width="100%" class="formtable">
				<%-- <tr>
					<td height="40" >员工ID</td><td>帐号</td><td>密码</td><td>姓名</td><td>性别</td><td>手机号</td><td>地址</td><td>电子邮箱</td><td>日期</td>
				</tr>--%>
				<c:forEach items="${Employee}" var="ee">
					<tr>
						<td height="40" >${ee.EMPID}</td><td>${ee.EMPNAME}</td><td>${ee.EMPPWD}</td><td>${ee.NAME}</td><td>${ee.SEX}</td><td>${ee.IPHONE}</td><td>${ee.ADDRESS}</td><td>${ee.EMAIL}</td><td>${ee.ADDTIME}</td>
					</tr>
		        </c:forEach> 
		    </table>
	</div>
  	<div id="toolbar">
		<a id="addBtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-add'">添加</a>
		<a id="updateBtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-edit'">更新</a>
		<!-- <a id="deleteBtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-remove'">删除</a> -->
	</div>
	
	<div id="handlerDialog">
		<form id="myForm" method="post">
			<table width="100%" class="formtable">
				<tr>
					<th height="40" >帐号：</th><td><input id="empname" name="empname"></td>
				</tr>
				<tr>
					<th height="40">密码：</th><td><input id="emppwd" name="emppwd" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="40">姓名：</th><td><input id="name" name="name"></td>
				</tr>
				<tr>
					<th height="40">性别：</th><td><input id="sex" name="sex"></td>
				</tr>
				<tr>
					<th height="40">手机号：</th><td><input id="iphone" name="iphone"></td>
				</tr>
				<tr>
					<th height="40">地址：</th><td><input id="address" name="address"></td>
				</tr>
				<tr>
					<th height="40">电子邮箱：</th><td><input id="email" name="email"></td>
				</tr>
				<tr>
					<th height="40">日期：</th><td><input id="addtime" name="addtime" class="easyui-datebox" required="required"></td>
				</tr>
				<tr>
					<th height="40">角色：</th><td><input id="rolename"></td>
				</tr>
			</table>
		</form>
	</div>
	
<script>
	$(function(){
		$("#proDataGrid").datagrid({
			url:'/p2p/person/ypgEmployee.do',
			fitColumns : true,
			striped : true,
			fit : true,
			rownumbers : true,
			singleSelect : false,
			pagination : true,
			toolbar : '#toolbar',
			columns : [ [{
				field : 'empid',
				title : '员工号',
				width : 200
			},{
				field : 'empname',
				title : '帐号',
				width : 200
			},{
				field : 'emppwd',
				title : '密码',
				width : 200
			}, {
				field : 'name',
				title : '姓名',
				width : 200
			}, {
				field : 'sex',
				title : '性别',
				width : 100
			},{
				field : 'iphone',
				title : '手机号',
				width : 200
			},{
				field : 'address',
				title : '地址',
				width : 200
			},{
				field : 'email',
				title : '电子邮箱',
				width : 200
			},{
				field : 'addtime',
				title : '日期',
				width : 200
			}/* ,{
				field:'operate',
				title:'操作',
				align:'center',
				width:$(this).width()*0.1,  
			    formatter:function(value, row, index){  
			        var str = '<a href="#" name="opera" class="easyui-linkbutton" ></a><a href="#" name="opera2" class="easyui-linkbutton" ></a>';  
			        return str;  
			        }
			} */] ],
			/* onLoadSuccess:function(data){    
	       		$("a[name='opera']").linkbutton({text:'禁用',plain:true,iconCls:'icon-cancel'});
	       		$("a[name='opera2']").linkbutton({text:'启用',plain:true,iconCls:'icon-ok'});
			},  */ 
		});
		$("#addtime").datebox({
			required:true			
		});
	//----------------------------------------------------------------------------------------------------------------------------------------------
		 $("#addBtn").click(function() {
			$('#handlerDialog').dialog("open");
		});
		$('#handlerDialog').dialog({
			title : '增加用户',
			iconCls : 'icon-add',
			width : 500,
			height : 500,
			top : 50,
			closed : true,
			cache : false,
			modal : true,
			buttons : [{
				text : '确定',
				iconCls : 'icon-save',
				handler : function() {
					$('#myForm').form('submit', {
						url : "/p2p/person/insertEmployee.do",
						onSubmit : function() {
							var isValid = $(this).form('validate');
							return isValid;
						},
						success : function(data) {
							alert(data);
							if (data == 1) {
								$('#proDataGrid').datagrid('insertRow', {
									index : 0, // 索引从0开始
									row : {
										empname : $("#empname").val(),
										emppwd : $("#emppwd").val(),
										name : $("#name").val(),
										sex : $("#sex").val(),
										iphone : $("#iphone").val(),
										address : $("#address").val(),
										email : $("#email").val(),
										addtime : $("#addtime").val(),
										rolename : $("#rolename").val()
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
			}]
		}); 
	//----------------------------------------------------------------------------------------------------------------------------------
	})
</script> 
</body>
</html>