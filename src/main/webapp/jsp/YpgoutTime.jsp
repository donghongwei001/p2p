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
	用户检索:<input id="ss" class="easyui-searchbox change"/>
	<div id="secondDiv">
		<table id="proDataGrid" width="100%" class="formtable">
			
		</table>
	</div>
  	
	
	
	
<script>
	$(function(){
		$("#proDataGrid").datagrid({
			url:'http://localhost:9088/p2p/repay/ypgouttime.do',
			fitColumns : true,
			striped : true,
			loadMsg : "努力加载中......",//加载慢的时候提示信息
			fit : true,
			rownumbers : true,
			singleSelect : false,
			pagination : true,
			toolbar : '#toolbar',
			columns : [ [{
				field : 'USERNAME',
				title : '用户名',
				width : 200
			},{
				field : 'PROJECTID',
				title : '项目编号',
				width : 200
			},{
				field : 'PROJECTNAME',
				title : '项目名称',
				width : 200
			}, {
				field : 'LASTTIME',
				title : '应还款时间',
				width : 200
			}, {
				field : 'LASTMONEY',
				title : '应还款金额(元)',
				width : 200
			} ,{
				field : 'NEWTIME',
				title : '还款时间',
				width : 200
			}, {
				field : 'NEWDAY',
				title : '逾期时间',
				width : 200
			},{
				field : 'NEWMONEY',
				title : '还款金额',
				width : 200
			}
			
			]],
			 
		});
		$("#addtime").datebox({
			required:true			
		});
	//---------------------------------------------------------------------------------------------------
		$('#ss').searchbox({ 
        	searcher:function(value,name){ 
        		$('#proDataGrid').datagrid({
                    singleSelect: true,
                    method:'post',
                    url:'/p2p/repay/ypgMoHuCXun.do',
                    fitColumns: true,
    				striped : true,
                    pagination: true,
                    fit : true,
                    queryParams: {
                    	comname : value
    				},
    				rownumbers : true,
                    pageSize: 20,
                    pageList : [ 20, 40, 60 ],
                   toolbar : "#toolbar",
                    columns: [[{
        				field : 'USERNAME',
        				title : '用户名',
        				width : 200
        			},{
        				field : 'PROJECTID',
        				title : '项目编号',
        				width : 200
        			},{
        				field : 'PROJECTNAME',
        				title : '项目名称',
        				width : 200
        			}, {
        				field : 'LASTTIME',
        				title : '应还款时间',
        				width : 200
        			}, {
        				field : 'LASTMONEY',
        				title : '应还款金额(元)',
        				width : 200
        			} ,{
        				field : 'NEWTIME',
        				title : '还款时间',
        				width : 200
        			}, {
        				field : 'NEWDAY',
        				title : '逾期时间',
        				width : 200
        			},{
        				field : 'NEWMONEY',
        				title : '还款金额',
        				width : 200
        			}]]
                });
        	}, 
        	prompt:'请输入用户名...'
        }); 
	})
</script> 
</body>
</html>