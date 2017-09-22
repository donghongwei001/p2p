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
		
		</table>
	</div>
  	<div id="toolbar">
		<a id="addBtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-add'">还款详情</a>
	</div>
	<div id="dd">
		<table id="proGrid" width="100%" class="formtable">
			
		</table>
	</div>
	
<script>
	$(function(){
		$("#proDataGrid").datagrid({
			url:'http://localhost:9088/p2p/repay/repayment.do',
			fitColumns : true,
			striped : true,
			loadMsg : "努力加载中......",//加载慢的时候提示信息
			fit : true,
			rownumbers : true,
			singleSelect : false,
			pagination : true,
			toolbar : '#toolbar',
			columns : [ [{
				field : 'ID',
				title : '项目编号',
				width : 200
			},{
				field : 'PROJECTNAME',
				title : '项目名称',
				width : 200
			},{
				field : 'PERSONALNAME',
				title : '项目申请人',
				width : 200
			}, {
				field : 'TIME2',
				title : '申请时间',
				width : 200
			}, {
				field : 'MONEY',
				title : '申请金额(元)',
				width : 200
			} ,{
				field : 'LIFELOAN',
				title : '借款期限(月)',
				width : 200
			}, {
				field : 'RATEMONEY',
				title : '利率',
				width : 200
			}
			
			]],
			 
		});
		$("#addtime").datebox({
			required:true			
		});
	//----------------------------------------------------------------------------------------------------------------------------------------------
		$("#addBtn").click(function() {
			var row = $('#proDataGrid').datagrid("getSelections");
			if(row.length==1){
				var id = row[0].ID;
				alert(id);
				$('#dd').dialog({    
				    title: '还款详情',    
				    width: 600,    
				    height: 400,    
				    closed:false,    
				    cache: false,    
				    modal: true,
				    buttons:[{
						text:'还款',
						handler:function(){
							var row = $('#proGrid').datagrid("getSelections");
							//var datetime=row[0].time1;
							if(row.length>0 ){
								var status=row[0].CODENAME;
								if(status=='平台代付' || status=='已付款'){
									alert("您选择的已由平台代付(或已付款),请重新选择");
								}else{	
										var id=row[0].PROJECTID;
										var time2=row[0].time1; 
										var dateObj = new Date();
										//alert(time);
									/*	var mytime=dateObj.toLocaleDateString(); //获取系统当前日期
										 var mytimes = mytime.replace(/\//gi,""); //转换成字符串
										var time2s = time2.replace(/\-/gi,""); */
										
										var sd=new Date(Date.parse(time2));
										/* alert(dateObj);
										alert(dateObj>sd); */
										if(window.confirm("你确定要踢贷款人还款吗？")){
										
										 if(dateObj>sd){   //日期型 转换成 字符串比较大小
											var getIndex=$('#proGrid').datagrid("getSelected");
											var row2 = $('#proGrid').datagrid("getRowIndex",getIndex);
											data={};
											data["id"]=id;
											data["row2"]=row2+1;
											data["time2"]=time2;
											$.ajax({
												type : "post",
												url : "/p2p/repay/YpgProblem.do",
												contentType :"application/json;charset=UTF-8",
												data:JSON.stringify(data), //json传值
												success : function(data2){
													alert(data2);
													$('#dd').dialog("close");
												},
												error:function(){
													alert("11");
												}
											})
										}else{
											alert("您当前选择的项目还未逾期,请重新选择");
										} 
										}
								}
							}else{
								alert("请选择数据");
							}
						},
						
					}
					]
				}); 
				
	    		$("#proGrid").datagrid({    
	    		    url:"/p2p/repay/YpgSchedule.do?id="+id, 
	    		    fitColumns : true,
	    			fit : true,
	    		    striped : true,
	    			singleSelect: true,
	    			//idField : "LMR_ID",
	    			rownumbers : true,
	    		    columns:[[
						{field:'PROJECTID',title:'项目编号'},
						{field:'PROJECTNAME',title:'项目名称'},  
	    				{field:'PERSONALNAME',title:'还款人'}, 
	    				{field:'time1',title:'还款日期'}, 
	    				{field:'MONTHMONEY',title:'还款本金'},    
	    				{field:'MONTHINTEREST',title:'利率'}, 
	    				{field:'MONTHPRINCIPAL',title:'每月本息'}, 
	    				{field:'CODENAME',title:'状态'}   
	    				
	    		    ]]
	    			
	    		});
				 
			}else{
				alert("请选择一条数据");
			}
		});
		$('#dialog').dialog("close");
	//----------------------------------------------------------------------------------------------------------------------------------
	})
</script> 
</body>
</html>