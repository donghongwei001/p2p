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
	<div id="handledialog">
		<table id="td">


		</table>
	</div>
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
								pagePosition : "bottom",
								toolbar : "#toolbar",
								fit :true,
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
					pagePosition : "bottom",
					toolbar : "#toolbar",
					/* onClickRow:function(rowIndex,rowData){
						 var rowInfo = $("#tb").datagrid('getChecked');
						 
           				 if (rowInfo) {
                			alert("已经选中的行");
            			}
					}, */
					fit : true,  
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
								title : 'id',
								width : 150,
								align : 'center',
								hidden:true
							},
							{
								field : 'xiangqing',
								title : '详情',
								width : 150,
								align : 'center',
								formatter : function(value,row,index){
									return '双击可查看详情'
								}
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
				$('#handledialog')
				.dialog(
						{
							title : '我的模态框', //模态框标题
							width : 400, //宽度
							height : 200, //高度		
							close : true, //是否可以关闭
							top : 0, //上移100
							width:1200,
							cache : false, //
							modal : true,//模态框 
							onOpen:function(){    
								 $('#td').datagrid(
										{
											url : '/p2p/zyx/xiang.do',
											striped : true,
											rownumbers : true,
											fitColumns : false,
											singleSelect : false, //是否只能选择一行
											//pagination : true, //分页工具栏
											//pagePosition : "top",
											toolbar : "#toolbar",
											queryParams:{
												id:row.ID
												
											},
											//fit : true,  
											onLoadSuccess:function(list){
												//alert(list.list[0].TIME);
											},
											columns : [ [
													{
														field : 'NAME',
														title : '融资人',
														width : 200,
														align : 'center'
														
													},
													{
														field : 'IDCARD',
														title : '身份证号',
														width : 150,
														align : 'center'
													},
													{
														field : 'TELPHONE',
														title : '联系电话',
														width : 150,
														align : 'center'
													},
													{
														field : 'BANKNUMBER',
														title : '银行卡号',
														width : 150,
														align : 'center'
													},
													{
														field : 'PROJECTNAME',
														title : '项目名称',
														width : 250,
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
														width : 150,
														align : 'center'
													},
													{
														field : 'LIFELOAN',
														title : '期限',
														width : 150,
														align : 'center'
													}/* ,
													{
														field : 'RATEMONEY',
														title : '附件',
														width : 150,
														align : 'center',
														hidden:true
													} */,
													{
														field : 'APPENDIX',
														title : '附件',
														width : 150,
														align : 'center',
													},
													{
														field : 'PERSONALNAME',
														title : '申请人姓名',
														width : 150,
														align : 'center'
													},
													{
														field : 'IDCARD',
														title : '身份证号',
														width : 150,
														align : 'center'
													},
													{
														field : 'IPHONE',
														title : '手机号',
														width : 150,
														align : 'center'
													},
													{
														field : 'ACCOUNTNUMBER',
														title : '银行卡号',
														width : 150,
														align : 'center'
													},
													{
														field : 'MAILBOX',
														title : '邮箱',
														width : 150,
														align : 'center'
													},
													{
														field : 'SEX',
														title : '性别',
														width : 150,
														align : 'center'
													},
													{
														field : 'BIRTHDAY',
														title : '生日',
														width : 150,
														align : 'center'
													},
													{
														field : 'EDUCATIONAL',
														title : '学历',
														width : 150,
														align : 'center'
													},
													{
														field : 'MARRIAGE',
														title : '是否已婚',
														width : 150,
														align : 'center'
													},
													{
														field : 'HAVACHIDREN',
														title : '是否有子女',
														width : 150,
														align : 'center'
													},
													{
														field : 'ADDRESS',
														title : '地址',
														width : 150,
														align : 'center'
													},
													{
														field : 'HOMEPHONE',
														title : '家庭电话',
														width : 150,
														align : 'center'
													},
													{
														field : 'WORKLIFE',
														title : '工作年限',
														width : 150,
														align : 'center'
													},
													{
														field : 'OCCUPATION',
														title : '职业',
														width : 150,
														align : 'center'
													},
													{
														field : 'WORKUNIT',
														title : '工作单位',
														width : 150,
														align : 'center'
													},
													{
														field : 'UNITPROPERTIES',
														title : '单位性质',
														width : 150,
														align : 'center'
													},
													{
														field : 'UNITPHONE',
														title : '单位电话',
														width : 150,
														align : 'center'
													},
													{
														field : 'MONTHLYINCOME',
														title : '月收入',
														width : 150,
														align : 'center'
													},
													{
														field : 'HAVEROOM',
														title : '是否有房',
														width : 150,
														align : 'center'
													},
													{
														field : 'HOUSELOAN',
														title : '是否房贷',
														width : 150,
														align : 'center'
													},
													{
														field : 'HAVECAR',
														title : '是否有车',
														width : 150,
														align : 'center'
													},
													{
														field : 'CARLOAN',
														title : '是否车贷',
														width : 150,
														align : 'center'
													},
													{
														field : 'CONTACTNAME',
														title : '亲属姓名',
														width : 150,
														align : 'center'
													},
													{
														field : 'CONTACTRELATION',
														title : '亲属关系',
														width : 150,
														align : 'center'
													},
													{
														field : 'CONTACTPHONE',
														title : '亲属电话',
														width : 150,
														align : 'center'
													},
													{
														field : 'time1',
														title : '投资时间时间',
														width : 150,
														align : 'center'
													},
													{
														field : 'MONEY',
														title : '投资金额',
														width : 150,
														align : 'center'
													}
													] ]
									});
							} ,
							buttons : [
									 {
										text : '关闭',
										handler : function() {
											alert("你确定取消吗？");
											$('#handledialog').dialog("close")
										}
									} ]
						})
			}
		});
		

	})
</script>
</html>