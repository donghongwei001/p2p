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
<script src="../bootstrap/js/bootstrap.min.js"></script>
      
 	<script src="../bootstrap/js/shengshijilian/distpicker.data.js"></script>
	<script src="../bootstrap/js/shengshijilian/distpicker.js"></script>
	<script src="../bootstrap/js/shengshijilian/main.js"></script>
<script type="text/javascript" src="../easyui/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<div id="toolbar">
		<a id="addbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">增加
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="deletebtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">删除
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="updbtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">修改
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <input id="powername"> <a
			id="selbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">查詢
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="allbtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">顯示所有
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>

	</div>
	<table id="tb">
	</table>
	<div id="dialog">
		<form id="form" method="post">
			<table with="100%" class="formtable">
				<tr>
					<th height="30">用户名:</th>
					<td><input id="empname1" name="empname" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="30">密码:</th>
					<td><input id="emppwd1" name="emppwd" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				
				<tr>
					<th height="30">姓名：</th>
					<td><input id="name1" name="name" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="25">性别：</th><td>男：<input checked type="radio" id="id" name="sex1" value="男">女：<input type="radio" id="id" name="sex1" value="女"></td>
				</tr>
				<tr>
					<th height="30">手机号：</th>
					<td><input id="iphone1" name="iphone1" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr><th height="30">地址：</th>
					<td><div id="distpicker2">
		  <select id="sheng1"></select>
		  <select id="shi1"></select>
		  <select id="xian1"></select>
		</div></td>
				</tr>
				<tr>
					<th height="30">邮箱:</th>
					<td><input id="emailaaa1" name="email1" class="easyui-validatebox" data-options="required:true"></td>    
				</td>
				</tr>
				
			</table>
		</form>
	</div>
	<div id="handledialog">
		<form id="myform" method="post">
			<table with="100%" class="formtable">
				<tr>
					<th height="30">用户名:</th>
					<td><input id="empname" name="empname" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="30">密码:</th>
					<td><input id="emppwd" name="emppwd" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				
				<tr>
					<th height="30">姓名：</th>
					<td><input id="name" name="name" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="25">性别：</th><td>男：<input checked type="radio" id="id" name="sex" value="男">女：<input type="radio" id="id" name="sex" value="女"></td>
				</tr>
				<tr>
					<th height="30">手机号：</th>
					<td><input id="iphone" name="iphone" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr><th height="30">地址：</th>
					<td><div id="distpicker2">
		  <select id="sheng"></select>
		  <select id="shi"></select>
		  <select id="xian"></select>
		</div></td>
				</tr>
				<tr>
					<th height="30">邮箱:</th>
					<td><input id="emailaaa" name="email" class="easyui-validatebox" data-options="required:true"></td>    
				</td>
				</tr>
				<tr>
					<th height="30">入职时间:</th>
					<td><input id="addtime" type="text" class="easyui-datebox" required="required"data-options="editable:false"></td>
				</tr>
			</table>
		</form>
	</div>  
</body>
<script type="text/javascript">
	$("#distpicker2").distpicker({
	  province: "---- 所在省 ----",
	  city: "---- 所在市 ----",
	  district: "---- 所在区 ----"
	});
	$(function(){
		
	
	$("#allbtn").click(function() {
		window.location.reload();
	});
	$("#addbtn").click(function(){
			
			$('#handledialog').dialog("open");
	});
	
	$("#deletebtn").click(function() { //点击删除按钮

		//getSelected第一次选中的行
		var row = $('#tb').datagrid("getSelections");
		if (row.length==1) {
			var index=row[0].EMPID;
			if (window.confirm('你确定删除该角色吗？')) {
			alert(index);
			$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
				type : "post", //请求方式
				url : "/p2p/emp/delete.do", //请求地址
				data:{id:index},//{nameha:$("#username").val(),passha:$("#password").val()},
				//dataType : "json",
				success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
						
					alert("删除成功！");
						
					var index = $('#tb').datagrid("getRowIndex", row); //得到该行的索引
					$('#tb').datagrid("deleteRow", index); //删除该行
					window.location.reload();
	        			
				}
			
			});
			}
		} else {
			alert("请选择一行再进行删除");
		} 
	})
		$("#updbtn").click(function() { //点击删除按钮

			//getSelected第一次选中的行
			var row = $('#tb').datagrid("getSelections");
			if (row.length==1) {
				var index=row[0].EMPID;
				alert(index);
				$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
					type : "post", //请求方式
					url : "/p2p/emp/selone.do", //请求地址
					data:{id:index},//{nameha:$("#username").val(),passha:$("#password").val()},
					dataType : "json",
					success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
						var jsonObj = eval(data);
						$.each(jsonObj,function(i, a) {
							$("#empname1").val(a.EMPNAME);
							$("#emppwd1").val(a.EMPPWD);
							$("#name1").val(a.NAME);
							$("#iphone1").val(a.IPHONE);
							$("#emailaaa1").val(a.EMAIL);
							//$("#addtime1").datebox('setValue', a.ADDTIME);
							var radio = document.getElementsByName("sex1");
							for (var i = 0; i < radio.length; i++) {
								if (radio[i].value == a.SEX) {
									radio[i].checked = true;
								}
							}
								
						});
						$('#dialog').dialog("open");
							
		        			
					}
				
				});
				
			} else {
				alert("请选择一行再进行更改");
			} 
		})
	$("#selbtn").click(function() {
		var index = $("#powername").val();
		if (index != "") {
			$('#tb').datagrid({
				url : '/p2p/emp/sel.do',
				striped : true,
				rownumbers : true,
				fitColumns : true,
				singleSelect : false, //是否只能选择一行
				pageSize : 10,//每页显示的记录条数，默认为10 
				pageList : [ 5, 10, 15 ],//可以设置每页记录条数的列表 
				beforePageText : '第',//页数文本框前显示的汉字 
				afterPageText : '页    共 {pages} 页',
				pagination : true, //分页工具栏
				pagePosition : "bottom",
				toolbar : "#toolbar",
				queryParams : {
					name : $("#powername").val()
				},

				/* onClickRow:function(rowIndex,rowData){
					 var rowInfo = $("#tb").datagrid('getChecked');
					 
					 if (rowInfo) {
						alert("已经选中的行");
					}
				}, */
				fit : true,  
				onLoadSuccess : function(list) {

				},
				columns : [ [ {
					field : 'xuanze',
					title : 'Code',
					width : 200,
					align : 'center',
					checkbox : true
				}, {
					field : 'EMPNAME',
					title : '用户名',
					width : 150,
					align : 'center'
				}, {
					field : 'EMPPWD',
					title : '密码',
					width : 150,
					align : 'center'
				}, {
					field : 'NAME',
					title : '姓名',
					width : 150,
					align : 'center'
				}, {
					field : 'SEX',
					title : '性别',
					width : 250,
					align : 'center'
				}, {
					field : 'IPHONE',
					title : '手机号',
					width : 150,
					align : 'center'
				}, {
					field : 'ADDRESS',
					title : '地址',
					width : 150,
					align : 'center'
				}, {
					field : 'EMAIL',
					title : '邮箱',
					width : 150,
					align : 'center'
				}, {
					field : 'time1',
					title : '入职时间',
					width : 150,
					align : 'center'
				}, {
					field : 'EMPID',
					title : 'id',
					width : 150,
					align : 'center',
					hidden : true
				} ] ]
			});
		} else {
			alert("請輸入您要查詢的數據");
		}

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
							closable:false,
							cache : false, //
							modal : true,//模态框 
							onOpen : function() {
							},
							buttons : [
									{ //自带的按钮
										text : '保存',
										iconCls : 'icon-save',
										handler : function() {
											if (window.confirm('你确定修改该员工吗？')) {
											var row = $('#tb').datagrid("getSelections");
											index = row[0].EMPID;
											var s1=$("#sheng1").val();
											var s2=$("#shi1").val();
											var s3=$("#xian1").val();
											var s=s1+s2+s3;
											alert(index);
											var data = {};
											data["empid"] = index;
											data["empname"] = $("#empname1").val();
											data["emppwd"] = $("#emppwd1").val();
											data["sex"] = $("input[name='sex1']:checked").val();
											data["name"] = $("#name1").val();
											data["iphone"] = $("#iphone1").val();
											data["address"] = s;
											data["Email"] = $("#emailaaa1").val();
											data["addtime"] = $("#addtime1").val();
											alert(data);
											//data={id:$("#id").val(),name:$("#name").val(),code:$("#code").val(),page:$("#page").val(),description:$("#description").val(),generatenemu:$("#generatenemu").val(),pid:$("#pid").val(),zindex:$("#zindex").val()};
											$
													.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
														type : "post", //请求方式
														url : "/p2p/emp/updateemp.do", //请求地址
														//contentType:'application/json;charset=UTF-8',
														//dataType : "json",
														data : data,
														success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定

															alert("更改成功！")
															
															$('#dialog').dialog("close")
															window.location.reload();

														}
													})
										}else {
											$('#dialog').dialog("close")
										}}
									}, {
										text : '关闭',
										handler : function() {
											alert("你确定取消吗？");
											
											$('#dialog').dialog("close")
										}
									} ]
						}
					)
	$('#handledialog')
		.dialog(
				{
					title : '我的模态框', //模态框标题
					width : 500, //宽度
					height : 400, //高度	
					left:400,
					close : true, //是否可以关闭
					closable:false,
					top : 0, //上移100
					cache : false, //
					modal : true,//模态框 
					onOpen:function(){ 
					} ,
					buttons : [ {	//自带的按钮
						text : '保存',
						iconCls : 'icon-save',
						handler : function() {
							alert("111");
							var s1=$("#sheng").val();
							var s2=$("#shi").val();
							var s3=$("#xian").val();
							var s=s1+s2+s3;
							if ($("#empname").val()!=""&&$("#emppwd").val()!=""&&$("#name").val()!=""&&$("#iphone").val()!=""&&$("#email").val()!=""&&$("#addtime").val()) {
								var data={};
								data["empname"] = $("#empname").val();
								data["emppwd"] = $("#emppwd").val();
								data["name"] = $("#name").val();
								data["sex"] = $("input[name='sex']:checked").val();
								data["iphone"] = $("#iphone").val();
								data["address"] = s;
								data["Email"] = $("#emailaaa").val();
								data["addtime"] =  $("#addtime").val();
								alert(data);
								alert($("#emailaaa").val()+data.Email);
								//data={id:$("#id").val(),name:$("#name").val(),code:$("#code").val(),page:$("#page").val(),description:$("#description").val(),generatenemu:$("#generatenemu").val(),pid:$("#pid").val(),zindex:$("#zindex").val()};
								 $.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
										type : "post", //请求方式
										url : "/p2p/emp/add.do", //请求地址
										//contentType:'application/json;charset=UTF-8',
										//dataType : "json",
										data:data,
										success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
											
											
												alert("插入成功！")
												$("#empname").val("");
												$("#emppwd").val("");
												$("#name").val("");
												$("#iphone").val("");
												$("#emailaaa").val("");
												$("#addtime").val("");
												$("#sheng").val("");
												$("#shi").val("");
												$("#xian").val("");
												$('#handledialog').dialog("close");
											
										} 
								 })
							}else {
								alert("请填写所有信息!");
							}
							
						}
					},{
								text : '关闭',
								handler : function() {
									alert("你确定取消吗？");
									$("#empname").val("");
									$("#emppwd").val("");
									$("#name").val("");
									$("#iphone").val("");
									$("#emailaaa").val("");
									$("#addtime").val("");
									$("#sheng").val("");
									$("#shi").val("");
									$("#xian").val("");
									$('#handledialog').dialog("close")
								}
							} ]
				})
	$('#handledialog').dialog("close");
	$('#dialog').dialog("close");
	$('#tb').datagrid({
		url : '/p2p/emp/query.do',
		striped : true,
		rownumbers : true,
		fitColumns : true,
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
		onLoadSuccess : function(list) {

		},
		columns : [ [ {
			field : 'xuanze',
			title : 'Code',
			width : 200,
			align : 'center',
			checkbox : true
		}, {
			field : 'EMPNAME',
			title : '用户名',
			width : 150,
			align : 'center'
		}, {
			field : 'EMPPWD',
			title : '密码',
			width : 150,
			align : 'center'
		}, {
			field : 'NAME',
			title : '姓名',
			width : 150,
			align : 'center'
		}, {
			field : 'SEX',
			title : '性别',
			width : 250,
			align : 'center'
		}, {
			field : 'IPHONE',
			title : '手机号',
			width : 150,
			align : 'center'
		}, {
			field : 'ADDRESS',
			title : '地址',
			width : 150,
			align : 'center'
		}, {
			field : 'EMAIL',
			title : '邮箱',
			width : 150,
			align : 'center'
		}, {
			field : 'time1',
			title : '入职时间',
			width : 150,
			align : 'center'
		}, {
			field : 'EMPID',
			title : 'id',
			width : 150,
			align : 'center',
			hidden : true
		} ,
		] ]
		
	});
	})
</script>
</html>