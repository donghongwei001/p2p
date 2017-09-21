<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html;Charset=utf-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'MyJsp.jsp' starting page</title>

<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="../easyui/css/icon.css" />
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css" />

<script src="../easyui/js/jquery.min.js"></script>
<script src="../easyui/js/jquery.easyui.min.js"></script>

<script type="text/javascript" src="../easyui/js/easyui-lang-zh_CN.js"></script>
<style type="text/css">
#tb td {
	text-align: center;
	width: 100%;
}

#tb {
	width: 500px;
}
#updbtn{
	margin-left:83%;
}
#selall{
	margin-left:500px;
}
</style>
</head>
<div></div>
<body>
<shiro:hasPermission name="staff">
	<div>项目名称:<input type="text" id="sel" class="easyui-textbox" data-options="prompt:'输入项目名称'"/>
	开始时间：<input id="dd" type="text" class="easyui-datebox" required="required"data-options="editable:false">
	结束时间：<input id="ddd" type="text" class="easyui-datebox" required="required"data-options="editable:false">
	<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cut'">清空时间</a>
		<a id="selbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">查找 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
			<a id="selall" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">查询所有 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
	</div>
	</shiro:hasPermission>
	<!-- <div id="toolbar">
		<a id="addbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">增加 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="deletebtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">删除 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
		<a id="updbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">修改 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
			
	</div> -->
	
	<table id="tb">


	</table>
	<div id="handledialog">
		<table id="td">


		</table>
	</div>
	
</body>
<script>
	$(function() {
		$("#btn").click(function(){
			$("#dd").textbox('setValue','');
			$("#ddd").textbox('setValue','');
		});
		$("#selall").click(function(){
			location.replace(location.href);
			
		
		})
		
		/* $('#dialog').dialog(
						{
							title : '我的模态框', //模态框标题
							width : 400, //宽度
							height : 200, //高度		
							close : true, //是否可以关闭
							top : 100, //上移100
							cache : false, //
							modal : true,//模态框 
							onOpen : function() {
								//product.init();
							},
							buttons : [
									{ //自带的按钮
										text : '保存',
										iconCls : 'icon-save',
										handler : function() {
											$('#myform1').form('submit',
															{
																//表单提交
																url : "/pingjiao/User/gai.do", //提交地址
																onsubmit : function() { //在提交之前执行  如果返回false  则阻止提交
																	var isValid = $(this).form('validate');
																	return isValid;
																},
																success : function(
																		data) { //表单提交成功后执行
																	if (data == "ok") { //回调函数
																		var radios = document.getElementsByName("statu");
																		var value = null;
																		alert(radios.length);
																		for ( var i = 0; i < radios.length; i++) {
																			if (radios[i].checked) {
																				value = radios[i].value;
																				break;
																			}

																		}
																		//更新grid
																		//$('#proDataGrid').datagrid("reload");		
																		$('#tb').datagrid('insertRow',
																						{ //插入一行
																							index : 0, //索引从0开始
																							row : {
																								USERNAME : $(
																										"#username")
																										.val(),
																								PASSWORD : $(
																										"#password")
																										.val(),
																								STATUS : value

																							}
																						});
																		$('#handledialog').dialog("close"); //模态框关闭
																		location.reload();
																	}
																}
															});
										}
									}, {
										text : '关闭',
										handler : function() {
											alert("你确定取消吗？");
											$('#handledialog').dialog("close")
										}
									} ]
						}) */
						/* $.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
						type : "post", //请求方式
						url : "/pingjiao/User/haha.do", //请求地址
						data:{username:$("#sel").val()},//{nameha:$("#username").val(),passha:$("#password").val()},
						dataType : "json",
						success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
								
							    
			       				alert("aaa");
			        			
								
						} */
			$("#selbtn").click(function(){
				
				var username=$("#sel").val();
				var shijian1=$("#dd").val();
				var shijian2=$("#ddd").val();
				if (username!=""||(shijian1!=""&&shijian2!="")){
					alert("1111")
				
					$('#tb').datagrid(
							{
								url : '/p2p/dhw/cha.do',
								queryParams: {          
	                				projectname:$("#sel").val(),  
	                				shijian1:$("#dd").val(),
	                				shijian2:$("#ddd").val()
	              				},
								striped : true,
								rownumbers : true,
								fitColumns : false,
								fit :true,
								singleSelect : false, //是否只能选择一行
								pagination : true, //分页工具栏
								pagePosition : "bottom",
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
													formatter : function(value,row,index){
														return '双击可查看详情'
													}
												},
												{
													field : 'USERNAME',
													title : '用户名',
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
													field : 'NAME',
													title : '项目类型',
													width : 150,
													align : 'center'
												},
												{
													field : 'LOCATION',
													title : '项目地点',
													width : 250,
													align : 'center'
												},
												{
													field : 'time1',
													title : '申请时间',
													width : 150,
													align : 'center',
													
												},
												{
													field : 'MONEY',
													title : '金额',
													width : 150,
													align : 'center'
												},
												{
													field : 'LIFELOAN',
													title : '借款期限（个月）',
													width : 150,
													align : 'center'
												},
												{
													field : 'RATEMONEY',
													title : '利率',
													width : 150,
													align : 'center'
												},
												{
													field : 'APPENDIX',
													title : '附件',
													width : 150,
													align : 'center'
												},
												{
													field : 'ADUITSTATE',
													title : '状态',
													align : 'center',
													width : 150,
													formatter : function(value,row,index){
			   
			                    					if(value=='1'){return '未审核'}  
			                   						 else if(value=='2'){return '已审核'}                        
			                 						 } 
												},
												{
													field : 'ID',
													title : 'id',
													width : 150,
													align : 'center',
													hidden:true
												}/* ,
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
		
			/* $("#updbtn").click(function(){
				var rows=$('#tb').datagrid("getSelections");
						//getSelections选中的所有行
			if (rows.length==1) {											//当选择成功时
				$('#dialog').dialog("open");
				var radios = document.getElementsByName("statu1");
				for ( var i = 0; i < rows.length; i++) {
					$("#username1").val(rows[i].USERNAME);
					$("#password1").val(rows[i].PASSWORD);
					
					
					for ( var j = 0; j < radios.length; j++) {
							
						if (radios[j].value==rows[i].STATUS) {
							radios[j].checked=true;
							
					 	}

					}
				}
				//$("#username1").val(rows.USERNAME);
			}else{
				alert("请选择一行再进行删除");
			}
			}) */
		$('#tb').datagrid(
						{
							url : '/p2p/dhw/selpro.do',
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
								
							},
							columns : [ [
									{
										field : 'xuanze',
										title : 'Code',
										width : 200,
										align : 'center',
										formatter : function(value,row,index){
											return '双击可查看详情'
										}
									},
									{
										field : 'USERNAME',
										title : '用户名',
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
										field : 'NAME',
										title : '项目类型',
										width : 150,
										align : 'center'
									},
									{
										field : 'LOCATION',
										title : '项目地点',
										width : 250,
										align : 'center'
									},
									{
										field : 'time1',
										title : '申请时间',
										width : 150,
										align : 'center'
									},
									{
										field : 'MONEY',
										title : '金额',
										width : 150,
										align : 'center'
									},
									{
										field : 'LIFELOAN',
										title : '借款期限（个月）',
										width : 150,
										align : 'center'
									},
									{
										field : 'RATEMONEY',
										title : '利率',
										width : 150,
										align : 'center'
									},
									{
										field : 'APPENDIX',
										title : '附件',
										width : 150,
										align : 'center'
									},
									{
										field : 'ADUITSTATE',
										title : '状态',
										align : 'center',
										width : 150,
										formatter : function(value,row,index){
   
                    					if(value=='1'){return '未审核'}  
                   						 else if(value=='2'){return '已审核'}                        
                 						 } 
									},
									{
										field : 'ID',
										title : 'id',
										width : 150,
										align : 'center',
										hidden:true
									}/* ,
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
						
				
						
		/* $("#addbtn").click(function() {
			//dialog.init(); //点击增加按钮 
			$('#handledialog').dialog("open"); //打开模态框
		}); */
		/* function editUser(index){
		alert(index);
			$('#tb').datagrid('selectRow',index);// 关键在这里
			var row = $('#tb').datagrid('getSelected');
			if (row){
				$('#dlg').dialog('open').dialog('setTitle','修改学生信息');
				$('#fm').form('load',row);
				url = '${ctx}updateStudent.do?id='+row.id;
			}
		} */
		
		
		//$('#handledialog').dialog("close");
		$('#dialog').dialog("close");
		//-------------------------------------
		$("#deletebtn").click(function() { //点击删除按钮

			//getSelected第一次选中的行
			/* var row = $('#tb').datagrid("getSelected");
			if (row) {
				$.post("ok.result", {
					id : row.USERNAME
				}, function(data) { // 提交   参数1 提交地址  参数2 id  回调函数
					if (data == "ok") {
						var index = $('#tb').datagrid("getRowIndex", row); //得到该行的索引
						$('#tb').datagrid("deleteRow", index); //删除该行
					}
				})
			} else {
				alert("请选择一行再进行删除");
			} */
			//----------------------------------------------------------
			var rows=$('#tb').datagrid("getSelections");
						//getSelections选中的所有行
			if (rows.length>0) {											//当选择成功时
				var ids=new Array();										//定义一个新的数组
				for ( var i = 0; i < rows.length; i++) {					//
					ids.push(rows[i].USERNAME);							//向新数组添加东西
				}
				$.post("ok.result",{ids:ids.join(",")},function(data){		//提交  参数1 地址  参数2 把数组ids变成json字符串
					if (data=="ok") {
						for ( var j = rows.length-1; j >=0; j--) {
							var index=$('#tb').datagrid("getRowIndex",rows[j]);		//得到该行的索引
							$('#tb').datagrid("deleteRow",index);			//删除该行
						}
					}
				});
			}else{
				alert("请选择一行再进行删除");
			}
		});
		var p = $('#tb').datagrid("getPager");
		$(p).pagination({
			pageSize : 10,//每页显示的记录条数，默认为10 
			pageList : [ 5, 10, 15 ],//可以设置每页记录条数的列表 
			beforePageText : '第',//页数文本框前显示的汉字 
			afterPageText : '页    共 {pages} 页',
			displayMsg : '1-10,22'
		/*onBeforeRefresh:function(){
		    $(this).pagination('loading');
		    alert('before refresh');
		    $(this).pagination('loaded');
		}*/
		});
		//双击显示详情
		$('#tb').datagrid({
			onDblClickCell: function(index,field,value){
				
				var row = $('#tb').datagrid('getData').rows[index];
				$('#handledialog')
				.dialog(
						{
							title : '我的模态框', //模态框标题
							width : 1200, //宽度
							height : 200, //高度	
							left:200,
							close : true, //是否可以关闭
							top : 0, //上移100
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
											fit : true,  
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
