

<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html;Charset=utf-8"%>

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
</style>
</head>
<div></div>
<body>
	<div>项目名称:<input type="text" id="sel" class="easyui-textbox" data-options="prompt:'输入项目名称'"/>
	开始时间：<input id="dd" type="text" class="easyui-datebox" required="required"data-options="editable:false">
	结束时间：<input id="ddd" type="text" class="easyui-datebox" required="required"data-options="editable:false">
	<a id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-cut'">清空时间</a>
		<a id="selbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">查找 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
	</div>
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
	
	<!-- <div id="dlg"></div>
	<div id="handledialog">
		<form id="myform" method="post">
			<table with="100%" class="formtable">
				<tr>
					<th height="30">用户名</th>
					<td><input name="username"class="easyui-validatebox" data-options="required:true" id="username"></td>
				</tr>
				<tr>
					<th height="30">密码:</th>
					<td><input type="password" class="easyui-validatebox" data-options="required:true" name="password" id="password"></td>
				</tr>
				<tr>
					<th height="30">状态</th>
					<td><input type="radio" name="statu" value="1">正常 <input
						type="radio" name="statu" value="2">禁用</td>
				</tr>


			</table>
		</form>
	</div>
	
	<div id="dialog">
		<form id="myform1" method="post">
			<table with="100%" class="formtable">
				<tr>
					<th height="30">用户名</th>
					<td><input name="username1" id="username1"   value="readonly" readonly></td>
				</tr>
				<tr>
					<th height="30">密码:</th>
					<td><input type="password" class="easyui-validatebox" data-options="required:true" name="password1" id="password1"></td>
				</tr>
				<tr>
					<th height="30">状态</th>
					<td><input type="radio" name="statu1" value="1">正常 <input
						type="radio" name="statu1" value="2">禁用</td>
				</tr>


			</table>
		</form>
	</div> -->
</body>
<script>
	$(function() {
		$("#btn").click(function(){
			$("#dd").textbox('setValue','');
			$("#ddd").textbox('setValue','');
		});
		
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
													width : 150,
													align : 'center'
												},
												{
													field : 'TIME',
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
													title : '借款年限',
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
					
				}
					
				
				
						
			
			})		
		
			$("#updbtn").click(function(){
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
			})
		$('#tb').datagrid(
						{
							url : '/p2p/dhw/selpro.do',
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
							columns : [ [
									{
										field : 'xuanze',
										title : 'Code',
										width : 200,
										align : 'center',
										checkbox:true
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
										width : 150,
										align : 'center'
									},
									{
										field : 'TIME',
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
										title : '借款年限',
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
						
				
						
		$("#addbtn").click(function() {
			//dialog.init(); //点击增加按钮 
			$('#handledialog').dialog("open"); //打开模态框
		});
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
		$('#handledialog')
				.dialog(
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
											$('#myform')
													.form(
															'submit',
															{
																//表单提交
																url : "/pingjiao/User/zeng.do", //提交地址
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
																		$(
																				'#tb')
																				.datagrid(
																						'insertRow',
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
						})
		
		$('#handledialog').dialog("close");
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
	})
</script>

</html>
