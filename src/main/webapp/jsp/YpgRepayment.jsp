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
				
				<c:forEach items="${repayment}" var="re">
					<tr>
						<td height="40" >${re.PROJRCTID}</td><td>${re.HKTIME}</td><td>${re.HKMONEY}</td><td>${re.PTMONEY}</td><td>${re.CODENAME}</td>
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
					<th height="40" >项目ID：</th><td><input id="projrctid" name="projrctid"></td>
				</tr>
				<tr>
					<th height="40">还款日期：</th><td><input id="hktime" name="hktime" class="easyui-datebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="40">投资人费用：</th><td><input id="hkmoney" name="hkmoney"></td>
				</tr>
				<tr>
					<th height="40">平台费用：</th><td><input id="ptmoney" name="ptmoney"></td>
				</tr>
				<tr>
					<th height="40">项目状态：</th><td><input id="statu" name="statu"></td>
				</tr>
				<!-- <tr>
					<th height="40">地址：</th><td><input id="address" name="address"></td>
				</tr>
				<tr>
					<th height="40">电子邮箱：</th><td><input id="email" name="email"></td>
				</tr>
				<tr>
					<th height="40">日期：</th><td><input id="addtime" name="addtime" class="easyui-datebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="40">角色：</th><td><input id="rolename"></td>
				</tr> -->
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
				field : 'projrctid',
				title : '项目ID',
				width : 200
			},{
				field : 'hktime',
				title : '还款日期',
				width : 200
			},{
				field : 'hkmoney',
				title : '投资人费用',
				width : 200
			}, {
				field : 'ptmoney',
				title : '平台费用',
				width : 200
			}, {
				field : 'statu',
				title : '项目状态',
				width : 100
			} ,{
				field:'operate',
				title:'操作',
				align:'center',
				width:$(this).width()*0.1,  
			    formatter:function(value, row, index){  
			        var str = '<a href="#" name="opera" class="easyui-linkbutton" ></a><a href="#" name="opera2" class="easyui-linkbutton" ></a>';  
			        return str;  
			        }
			} ] ],
			 onLoadSuccess:function(data){    
	       		$("a[name='opera']").linkbutton({text:'催款',plain:true,iconCls:'icon-cancel'});
	       		//$("a[name='opera2']").linkbutton({text:'启用',plain:true,iconCls:'icon-ok'});
			},  
		});
		$("#addtime").datebox({
			required:true			
		});
	//----------------------------------------------------------------------------------------------------------------------------------------------
		  $("#addBtn").click(function() {
			$('#handlerDialog').dialog("open");
		});
		$('#handlerDialog').dialog({
			title : '增加',
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
					$('#myForm').form('submit', {//form({})相当于表单的构造函数
                        //easyui提交数据给后台是通过jQuery ajax中的序列化将数据提交给后台
						url : "/p2p/person/insertEmployee.do",
						onSubmit : function(param) {
							/*  param.empname =$("#empname").val();
							param.emppwd =$("#emppwd").val();
							param.name =$("#name").val();
							param.sex =$("#sex").val();
							param.iphone =$("#iphone").val();
							param.address =$("#address").val();
							param.email =$("#email").val();  */
							//param.addtime =$("#addtime").val();
							 //表单验证
							var isValid = $(this).form('validate');
							return isValid; 
						},
						success : function(data1) {
							alert(data1);
							
							 if (data1==1) {
								  $('#proDataGrid').datagrid('insertRow', {
									/* index : 3, // 索引从0开始
									row : {
										empname : $("#empname").val(),
										emppwd : $("#emppwd").val(),
										name : $("#name").val(),
										sex : $("#sex").val(),
										iphone : $("#iphone").val(),
										address : $("#address").val(),
										email : $("#email").val(),
										addtime : $("#addtime").val(),
									} */
									
								});  
								$('#handlerDialog').dialog("close");
							}
						},error: function(){
							alert(1111111);
							
						}
					});
				}
			}, {
				text : '取消',
				iconCls : 'icon-close',
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