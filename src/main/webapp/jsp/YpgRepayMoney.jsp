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
		font-family:宋体;
		font-weight:bold;
		font-size:14px;
	}
	.formtable td{
		border-bottom: 1px dashed #ccc;
	}
	/* #father{display:none;position:absolute;width:400px;height:300px;left:100px;top:100px;background:white;}
    #son{display:none;position:absolute;width:200px;height:150px;left:200px;top:175px;background:Green;} */
</style>
	
</head>
<body>
	<%-- <div id="secondDiv">
		<table id="proDataGrid" width="100%" class="formtable">
				<tr>
					<td height="40" >员工ID</td><td>帐号</td><td>密码</td><td>姓名</td><td>性别</td><td>手机号</td><td>地址</td><td>电子邮箱</td><td>日期</td>
				</tr>
				<c:forEach items="${pp}" var="p">
					<tr>
						<td height="40" >${p.PERSONALID}</td><td >${p.USERID}</td><td >${p.PERSONALNAME}</td><td>${p.IDCARD}</td><td>${p.IPHONE}</td><td>${p.ACCOUNTNUMBER}</td><td>${p.MAILBOX}</td><td>${p.SEX}</td><td>${p.BIRTHDAY}</td><td>${p.EDUCATIONAL}</td><td>${p.MARRIAGE}</td><td>${p.HAVACHIDREN}</td><td>${p.ADDRESS}</td><td>${p.HOMEPHONE}</td><td>${p.WORKLIFE}</td><td>${p.OCCUPATION}</td><td>${p.WORKUNIT}</td><td>${p.UNITPROPERTIES}</td><td>${p.UNITPHONE}</td><td>${p.MONTHLYINCOME}</td><td>${p.HAVEROOM}</td><td>${p.HOUSELOAN}</td><td>${p.HAVECAR}</td><td>${p.CARLOAN}</td><td>${p.CONTACTNAME}</td><td>${p.CONTACTRELATION}</td><td>${p.CONTACTPHONE}</td>
					</tr>
		        </c:forEach> 
		    </table>
	</div> --%>
  	<!-- <div id="toolbar">
  		
		<a id="addBtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-add'">添加</a>
		<a id="updateBtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-edit'">更新</a>
		<a id="deleteBtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-remove'">删除</a>
	</div> -->
	
	
	<div id="tt" class="easyui-tabs" style="width:500px;height:250px;">
	    <div title="已还款" style="padding:20px;display:none;">
			<table id="proDataGrid" width="100%" class="formtable">
				<tr>
					<td height="40" >ID</td><td>项目ID</td><td>还款日期</td><td>还客户金额</td><td>平台费用</td><td>状态</td>
				</tr>
				<c:forEach items="${repay}" var="r">
					<tr>
						<td height="40" >${r.REPAYID}</td><td >${r.PROJRCTID}</td><td >${r.HKTIME}</td><td>${r.HKMONEY}</td><td>${r.PTMONEY}</td><td>${r.CODENAME}</td>
					</tr>
		        </c:forEach> 
		    </table>
	    </div>
	    <div title="还未还款"  style="overflow:auto;padding:20px;display:none;">
			<table id="proDataGrid" width="100%" class="formtable">
				<tr>
					<td height="40" >ID</td><td>项目ID</td><td>还款日期</td><td>还客户金额</td><td>平台费用</td><td>状态</td>
				</tr>
				<c:forEach items="${money}" var="m">
					<tr>
						<td height="40" >${m.REPAYID}</td><td >${m.PROJRCTID}</td><td >${m.HKTIME}</td><td>${m.HKMONEY}</td><td>${m.PTMONEY}</td><td>${m.CODENAME}</td>
					</tr>
		        </c:forEach> 
		    </table>
	    </div>
	    <!-- <div title="Tab3" style="padding:20px;display:none;">
			tab3
	    </div> -->
	</div>
	
	
	
	
	
	
	
	<!-- <div id="handlerDialog">
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
					<th height="40">日期：</th><td><input id="addtime" name="addtime" class="easyui-datebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="40">角色：</th><td><input id="rolename"></td>
				</tr>
			</table>
		</form>
	</div> -->
	
<script>
	 $(function(){
		
		 /*	$("#ad").click(function(){
			$('#hovertreewindow').dialog("open");
		})
		
		$("#proDataGrid").datagrid({
			url:'/p2p/role/pers.do',
			fitColumns : true,
			striped : true,
			fit : true,
			rownumbers : true,
			singleSelect : false,
			pagination : true,
			toolbar : '#toolbar',
			columns : [ [{
				field : 'personalid',
				title : 'ID',
				width : 100
			},{
				field : 'userID',
				title : '用户外键',
				width : 100
			},{
				field : 'personalname',
				title : '姓名',
				width : 150
			},{
				field : 'idcard',
				title : '身份证号',
				width : 200
			},{
				field : 'iphone',
				title : '手机号',
				width : 100
			},{
				field : 'accountnumber',
				title : '银行卡',
				width : 200
			},{
				field : 'mailbox',
				title : '邮箱',
				width : 200
			},{
				field : 'sex',
				title : '性别',
				width : 100
			},{
				field : 'birthday',
				title : '出生日期',
				width : 200
			},{
				field : 'educational',
				title : '学历',
				width : 100
			},{
				field : 'marriage',
				title : '是否已婚',
				width : 100
			}, {
				field : 'havachidren',
				title : '是否有子女',
				width : 100
			},{
				field : 'address',
				title : '地址',
				width : 200
			},{
				field : 'homephone',
				title : '家庭电话',
				width : 100
			},{
				field : 'worklife',
				title : '工作年限',
				width : 100
			},{
				field : 'occupation',
				title : '职业',
				width : 200
			} , {
				field:'operate',
				title:'操作',
				align:'center',  
			    formatter:function(value, row, index){  
			        var str = '<a href="#" name="xiangqing" onclick="javascript:$("#father").show()"></a>';  
			        return str;  
			        }
			} ] ],
			 onLoadSuccess:function(data){    
	       		//$("a[name='xiangqing']").linkbutton({text:'详情',plain:true,iconCls:'icon-cancel'});
	       		//$("a[name='ad']").linkbutton({text:'Open',plain:true,iconCls:'icon-ok'});
			},   
		});
		$("#addtime").datebox({
			required:true			
		}); */
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
					$('#myForm').form('submit', {//form({})相当于表单的构造函数
                        //easyui提交数据给后台是通过jQuery ajax中的序列化将数据提交给后台
						url : "/p2p/person/insertEmployee.do",
						onSubmit : function(param) {
							/* param.empname =$("#empname").val();
							param.emppwd =$("#emppwd").val();
							param.name =$("#name").val();
							param.sex =$("#sex").val();
							param.iphone =$("#iphone").val();
							param.address =$("#address").val();
							param.email =$("#email").val(); */
							//param.addtime =$("#addtime").val();
							 //表单验证
							var isValid = $(this).form('validate');
							return isValid; 
						},
						success : function(data1) {
							alert(data1);
							
							 if (data1==1) {
								/*  $('#proDataGrid').datagrid('insertRow', {
									index : 3, // 索引从0开始
									row : {
										empname : $("#empname").val(),
										emppwd : $("#emppwd").val(),
										name : $("#name").val(),
										sex : $("#sex").val(),
										iphone : $("#iphone").val(),
										address : $("#address").val(),
										email : $("#email").val(),
										addtime : $("#addtime").val(),
									}
									
								});  */
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