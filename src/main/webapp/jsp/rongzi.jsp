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
<style type="text/css">
	
</style>
</head>
<body>
	<div>项目名称:<input type="text" id="sel" class="easyui-textbox" data-options="prompt:'输入项目名称'"/>
	开始时间：<input id="dd" type="text" class="easyui-datebox" required="required"data-options="editable:false">
	结束时间：<input id="ddd" type="text" class="easyui-datebox" required="required"data-options="editable:false">
	<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cut'">清空时间</a>
		<a id="selbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">查找 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
			<a id="selall" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">查询所有 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
	</div>
	<table id="tb">


	</table>
</body>
<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
			$("#dd").textbox('setValue','');
			$("#ddd").textbox('setValue','');
		});
		$("#selall").click(function(){
			location.replace(location.href);
		
		})
		
		$("#selbtn").click(function(){
				
				var username=$("#sel").val();
				var shijian1=$("#dd").val();
				var shijian2=$("#ddd").val();
				if (username!=""||(shijian1!=""&&shijian2!="")){
					alert("1111")
				
					$('#tb').datagrid(
							{
								url : '/p2p/zyx/cha.do',
								queryParams: {          
	                				projectname:$("#sel").val(),  
	                				shijian1:$("#dd").val(),
	                				shijian2:$("#ddd").val()
	              				},
								striped : true,
								rownumbers : true,
								fitColumns : false,
								singleSelect : false, //是否只能选择一行
								pagination : true, //分页工具栏
								pagePosition : "top",
								toolbar : "#toolbar",
								onLoadSuccess:function(){
									$("#sel").textbox('setValue','')
									$("#dd").textbox('setValue','');
									$("#ddd").textbox('setValue','');
									
								},
								onBeforeLoad:function(){
									/* var item = $('#tb').datagrid('getRows');  
									
	            					if (item) {  
	                					for (var i = item.length - 1; i >= 0; i--) {  
	                    				var index = $('#tb').datagrid('getRowIndex', item[i]);  
	                    				
	                   					$('#tb').datagrid('deleteRow', index);  
	                					}  
	            					}   */
								},columns : [ [
												{
													field : 'xuanze',
													title : 'Code',
													width : 200,
													align : 'center',
													checkbox:true
												},
												{
													field : 'NAME',
													title : '融资人',
													width : 150,
													align : 'center'
												},
												{
													field : 'PROJECTNAME',
													title : '项目名称',
													width : 150,
													align : 'center'
												},
												{
													field : 'LOCATION',
													title : '项目地点',
													width : 150,
													align : 'center'
												},
												{
													field : 'MONEY',
													title : '所需金额',
													width : 250,
													align : 'center'
												},
												{
													field : 'RATEMONEY',
													title : '利率',
													width : 150,
													align : 'center'
												},
												{
													field : 'USERNAME',
													title : '贷款人',
													width : 150,
													align : 'center'
												},
												{
													field : 'MONEY',
													title : '利率',
													width : 150,
													align : 'center'
												},
												{
													field : 'time1',
													title : '时间',
													width : 150,
													align : 'center'
												},
												{
													field : 'ID',
													title : '详情',
													width : 150,
													align : 'center',
													hidden:true
												}
												/* {
													field : 'ADUITSTATE',
													title : '状态',
													align : 'center',
													width : 150,
													formatter : function(value,row,index){

					            					if(value=='1'){return '未审核'}  
					           						 else if(value=='2'){return '已审核'}                        
					         						 } 
												} *//* ,
												{
													field : 'ciugai',
													title : '修改',
													width : 90,
													align : 'center',
													formatter : function formatOper(val,row,index){
														return '<a href="javascript:void(0)"  onclick="editUser('+index+')">修改</a>';
													}
												} */ ] ]
								
							});
					
				}else {
					alert("请输入正确格式后再查询！");
					$("#sel").textbox('setValue','')
					$("#dd").textbox('setValue','');
					$("#ddd").textbox('setValue','');
				}
					
				
				
						
			
			})		
		
		$('#tb').datagrid(
				{
					url : '/p2p/zyx/all.do',
					striped : true,
					rownumbers : true,
					fitColumns : false,
					singleSelect : false, //是否只能选择一行
					pagination : true, //分页工具栏
					pagePosition : "top",
					toolbar : "#toolbar",
					/* onClickRow:function(rowIndex,rowData){
						 var rowInfo = $("#tb").datagrid('getChecked');
						 
           				 if (rowInfo) {
                			alert("已经选中的行");
            			}
					}, */
					//fit : true,  
					onLoadSuccess:function(list){
						//alert(list.list[0].TIME);
					},
					columns : [ [
							{
								field : 'xuanze',
								title : 'Code',
								width : 200,
								align : 'center',
								checkbox:true
							},
							{
								field : 'NAME',
								title : '融资人',
								width : 150,
								align : 'center'
							},
							{
								field : 'PROJECTNAME',
								title : '项目名称',
								width : 150,
								align : 'center'
							},
							{
								field : 'LOCATION',
								title : '项目地点',
								width : 150,
								align : 'center'
							},
							{
								field : 'MONEY',
								title : '所需金额',
								width : 250,
								align : 'center'
							},
							{
								field : 'RATEMONEY',
								title : '利率',
								width : 150,
								align : 'center'
							},
							{
								field : 'USERNAME',
								title : '贷款人',
								width : 150,
								align : 'center'
							},
							{
								field : 'MONEY',
								title : '利率',
								width : 150,
								align : 'center'
							},
							{
								field : 'time1',
								title : '时间',
								width : 150,
								align : 'center'
							},
							{
								field : 'ID',
								title : '详情',
								width : 150,
								align : 'center',
								hidden:true
							}
							/* {
								field : 'ADUITSTATE',
								title : '状态',
								align : 'center',
								width : 150,
								formatter : function(value,row,index){

            					if(value=='1'){return '未审核'}  
           						 else if(value=='2'){return '已审核'}                        
         						 } 
							} *//* ,
							{
								field : 'ciugai',
								title : '修改',
								width : 90,
								align : 'center',
								formatter : function formatOper(val,row,index){
									return '<a href="javascript:void(0)"  onclick="editUser('+index+')">修改</a>';
								}
							} */ ] ]
			});
		$('#tb').datagrid({
			onDblClickCell: function(index,field,value){
				
				var row = $('#tb').datagrid('getData').rows[index]; 
				alert(row.ID);
			}
		});

	})
</script>
</html>