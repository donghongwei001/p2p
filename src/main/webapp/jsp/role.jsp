<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../easyui/css/icon.css" />
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css" />

<script src="../easyui/js/jquery.min.js"></script>
<script src="../easyui/js/jquery.easyui.min.js"></script>

<script type="text/javascript" src="../easyui/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<table id="tb"></table>
	<div id="handledialog">
		<form id="myform" method="post">
			<table with="100%" class="formtable">
				<tr>
					<th height="30">關鍵字:</th>
					<td><input id="rolename" name="rolename"
						class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="30">名称:</th>
					<td><input id="rolecode" name="rolecode"
						class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="30">狀態:</th>
					<td>正常:<input checked name="statu1" type="radio" value="3">禁用:<input
						name="statu1" type="radio" value="4"></td>
				</tr>
				<tr>
					<th height="30">描述：</th>
					<td><textarea rows="4" id="description" name="description"
							cols="25"></textarea></td>
				</tr>
				<tr>
					<td>授權</td>
					<td>
						<ul id="tt"></ul>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div id="dialog">
		<form id="form" method="post">
			<table with="100%" class="formtable">
				<tr>
					<th height="30">關鍵字:</th>
					<td><input id="rolename1" name="rolename"
						class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="30">名称:</th>
					<td><input id="rolecode1" name="rolecode"
						class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="30">狀態:</th>
					<td>正常:<input checked name="statu" type="radio" value="3">禁用:<input
						name="statu" type="radio" value="4"></td>
				</tr>
				<tr>
					<th height="30">描述：</th>
					<td><textarea rows="4" id="description1" name="description"
							cols="25"></textarea></td>
				</tr>
				<tr>
					<td>授權</td>
					<td>
						<ul id="tt1"></ul>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div id="toolbar">
		<a id="addbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">增加角色
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="deletebtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">删除角色
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="updbtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">修改角色
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <input id="powername">
		<a id="selbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">查詢角色
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="allbtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">顯示所有
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>

	</div>
</body>
<script type="text/javascript">
	$(function() {
		// 授权树初始化

		$('#tt').tree({
			url : '/p2p/role/listpower.do',
			checkbox : true,
			lines : true,
			animate : true
		});
		$("#deletebtn").click(function() {
			var row = $('#tb').datagrid("getSelections");
			if (row.length == 1) {
				var index = row[0].ROLEID;
				if (window.confirm('你确定删除该角色吗？')) {
					//继续执行

					$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
						type : "post", //请求方式
						url : "/p2p/role/deleterole.do", //请求地址
						data : {
							id : index
						},//{nameha:$("#username").val(),passha:$("#password").val()},
						dataType : "json",
						success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
							alert("删除成功!")
							window.location.reload();
						}
					})
				}
			}else {
				alert("请选择一行再进行删除！")
			}
		})

		$("#allbtn").click(function() {
			window.location.reload();
		})
		$("#addbtn").click(function() {

			$('#handledialog').dialog("open");
		});
		$("#updbtn").click(function() {
			var row = $('#tb').datagrid("getSelections");
			if (row.length == 1) {
				var index = row[0].ROLEID;
				$('#tt1').tree({
					url : '/p2p/role/selrolepower.do?roleid=' + index,
					checkbox : true,
					lines : true,
					animate : true
				});
				$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
					type : "post", //请求方式
					url : "/p2p/role/fanhuirole.do", //请求地址
					data : {
						id : index
					},//{nameha:$("#username").val(),passha:$("#password").val()},
					dataType : "json",
					success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
						var jsonObj = eval(data);
						$.each(jsonObj, function(i, a) {
							$("#rolename1").val(a.ROLENAME);
							$("#rolecode1").val(a.ROLECODE);
							$("#description1").val(a.DESCRIPTION);
							var radio = document.getElementsByName("statu");
							for (var i = 0; i < radio.length; i++) {
								if (radio[i].value == a.ROLESTATUS) {
									radio[i].checked = true;
								}
							}

						})
					}
				})
				$('#dialog').dialog("open");

			} else {
				alert("请选择一行再进行删除");
			}

		});
		$("#selbtn").click(function() {
			var index = $("#powername").val();
			if (index != "") {
				$('#tb').datagrid({
					url : '/p2p/role/queryrole.do',
					striped : true,
					rownumbers : true,
					fitColumns : true,
					singleSelect : false, //是否只能选择一行
					pageSize : 10,//每页显示的记录条数，默认为10 
					pageList : [ 5, 10, 15 ],//可以设置每页记录条数的列表 
					beforePageText : '第',//页数文本框前显示的汉字 
					afterPageText : '页    共 {pages} 页',
					pagination : true, //分页工具栏
					pagePosition : "top",
					toolbar : "#toolbar",
					queryParams : {
						id : $("#powername").val()
					},

					/* onClickRow:function(rowIndex,rowData){
						 var rowInfo = $("#tb").datagrid('getChecked');
						 
						 if (rowInfo) {
							alert("已经选中的行");
						}
					}, */
					//fit : true,  
					onLoadSuccess : function(list) {

					},
					columns : [ [ {
						field : 'xuanze',
						title : 'Code',
						width : 200,
						align : 'center',
						checkbox : true
					}, {
						field : 'ROLEID',
						title : '权限编号',
						width : 150,
						align : 'center'
					}, {
						field : 'ROLENAME',
						title : '权限名称',
						width : 150,
						align : 'center'
					}, {
						field : 'ROLESTATUS',
						title : '关键字',
						width : 150,
						align : 'center'
					}, {
						field : 'ROLECODE',
						title : '具体描述',
						width : 250,
						align : 'center'
					}, {
						field : 'DESCRIPTION',
						title : 'url地址',
						width : 150,
						align : 'center'
					} ] ]
				});
			} else {
				alert("請輸入您要查詢的數據");
			}
		})
		$('#tb').datagrid({
			url : '/p2p/role/selrole.do',
			striped : true,
			rownumbers : true,
			fitColumns : true,
			singleSelect : false, //是否只能选择一行
			pageSize : 10,//每页显示的记录条数，默认为10 
			pageList : [ 5, 10, 15 ],//可以设置每页记录条数的列表 
			beforePageText : '第',//页数文本框前显示的汉字 
			afterPageText : '页    共 {pages} 页',
			pagination : true, //分页工具栏
			pagePosition : "top",
			toolbar : "#toolbar",
			/* queryParams: {
				id: $("#powername").val()
			}, */

			/* onClickRow:function(rowIndex,rowData){
				 var rowInfo = $("#tb").datagrid('getChecked');
				 
				 if (rowInfo) {
					alert("已经选中的行");
				}
			}, */
			//fit : true,  
			onLoadSuccess : function(list) {

			},
			columns : [ [ {
				field : 'xuanze',
				title : 'Code',
				width : 200,
				align : 'center',
				checkbox : true
			}, {
				field : 'ROLEID',
				title : '权限编号',
				width : 150,
				align : 'center'
			}, {
				field : 'ROLENAME',
				title : '权限名称',
				width : 150,
				align : 'center'
			}, {
				field : 'ROLESTATUS',
				title : '关键字',
				width : 150,
				align : 'center'
			}, {
				field : 'ROLECODE',
				title : '具体描述',
				width : 250,
				align : 'center'
			}, {
				field : 'DESCRIPTION',
				title : 'url地址',
				width : 150,
				align : 'center'
			} /* ,
										{
											field : 'GENERATENEMU',
											title : '是否生成菜单',
											width : 150,
											align : 'center',
											formatter : function(value,row,index){
												   
			                					if(value=='1'){return '生成菜单'}  
			               						 else {return '不生成菜单'}                        
			             						 } 
										} */] ]

		})

		$('#dialog')
				.dialog(
						{
							title : '我的模态框', //模态框标题
							width : 400, //宽度
							height : 400, //高度	
							left : 400,
							close : true, //是否可以关闭
							top : 0, //上移100
							cache : false, //
							modal : true,//模态框 
							onOpen : function() {
							},
							buttons : [
									{ //自带的按钮
										text : '保存',
										iconCls : 'icon-save',
										handler : function() {
											var nodes = $('#tt1').tree(
													'getChecked');
											var s = '';
											for (var i = 0; i < nodes.length; i++) {
												if (s != '')
													s += ',';
												s += nodes[i].id;//例如:菜单的menuID
											}
											alert(s);
											var row = $('#tb').datagrid(
													"getSelections");
											index = row[0].ROLEID;
											alert(index);
											var data = {};
											data["rolename"] = $("#rolename1")
													.val();
											data["rolestatus"] = $(
													"input[name='statu']:checked")
													.val();
											data["description"] = $(
													"#description1").val();
											data["rolecode"] = $("#rolecode1")
													.val();
											data["roleid"] = index;
											data["power"] = s;
											alert(data);
											//data={id:$("#id").val(),name:$("#name").val(),code:$("#code").val(),page:$("#page").val(),description:$("#description").val(),generatenemu:$("#generatenemu").val(),pid:$("#pid").val(),zindex:$("#zindex").val()};
											$
													.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
														type : "post", //请求方式
														url : "/p2p/role/updaterole.do", //请求地址
														//contentType:'application/json;charset=UTF-8',
														//dataType : "json",
														data : data,
														success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定

															alert("更改成功！")
															$("#rolename1")
																	.val("");
															$("#description1")
																	.val("");
															$("#rolecode1")
																	.val("");
															if (nodes
																	&& nodes.length) {
																for (var i = 0; i < nodes.length; i++) {
																	//设置节点属性为未选中状态 
																	nodes[i].attributes.checked = false;
																}
															}
															$('#dialog')
																	.dialog(
																			"close")
															window.location
																	.reload();

														}
													})
										}
									}, {
										text : '关闭',
										handler : function() {
											alert("你确定取消吗？");
											$('#dialog').dialog("close")
										}
									} ]
						})
		$('#dialog').dialog("close");
		$('#handledialog')
				.dialog(
						{
							title : '我的模态框', //模态框标题
							width : 400, //宽度
							height : 400, //高度	
							left : 400,
							close : true, //是否可以关闭
							top : 0, //上移100
							cache : false, //
							modal : true,//模态框 
							onOpen : function() {
							},
							buttons : [
									{ //自带的按钮
										text : '保存',
										iconCls : 'icon-save',
										handler : function() {

											var nodes = $('#tt').tree(
													'getChecked');
											var s = '';
											for (var i = 0; i < nodes.length; i++) {
												if (s != '')
													s += ',';
												s += nodes[i].id;//例如:菜单的menuID
											}
											alert(s);
											var data = {};
											data["rolename"] = $("#rolename")
													.val();
											data["rolestatus"] = $(
													"input[name='statu1']:checked")
													.val();
											data["description"] = $(
													"#description").val();
											data["rolecode"] = $("#rolecode")
													.val();
											data["power"] = s;
											alert(data);
											//data={id:$("#id").val(),name:$("#name").val(),code:$("#code").val(),page:$("#page").val(),description:$("#description").val(),generatenemu:$("#generatenemu").val(),pid:$("#pid").val(),zindex:$("#zindex").val()};
											$
													.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
														type : "post", //请求方式
														url : "/p2p/role/addrole.do", //请求地址
														//contentType:'application/json;charset=UTF-8',
														//dataType : "json",
														data : data,
														success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定

															alert("插入成功！")
															$("#rolename").val(
																	"");
															$("#description")
																	.val("");
															$("#rolecode").val(
																	"");
															if (nodes
																	&& nodes.length) {
																for (var i = 0; i < nodes.length; i++) {
																	//设置UI状态为未选中状态 
																	nodes[i]
																			.getUI()
																			.toggleCheck(
																					false);
																	//设置节点属性为未选中状态 
																	nodes[i].attributes.checked = false;
																}
															}
															$('#handledialog')
																	.dialog(
																			"close");
															window.location
																	.reload();

														}
													})
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

	})
</script>
</html>