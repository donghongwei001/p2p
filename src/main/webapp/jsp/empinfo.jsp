<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"">
<link rel="stylesheet" type="text/css" href="../easyui/css/icon.css" />
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css" />

<script src="../easyui/js/jquery.min.js"></script>
<script src="../easyui/js/jquery.easyui.min.js"></script>

<script type="text/javascript" src="../easyui/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<table id="tb"></table>
	<div id="toolbar">
		<a id="updbtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">修改用户角色
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <input id="powername"> <a
			id="selbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">查詢
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="allbtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">顯示所有
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>

	</div>
	<div id="dialog">
		<form id="form" method="post">
			<table with="100%" id="table" class="formtable">
				
				<tr>
					
					<td>
				</td>
				</tr>
				
			</table>
		</form>
	</div>
</body>
<script type="text/javascript">
$(function(){
	$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
		type : "post", //请求方式
		url : "/p2p/emprole/role.do", //请求地址
		//data:{id:index},//{nameha:$("#username").val(),passha:$("#password").val()},
		dataType : "json",
		success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
			for (var i = 0; i < data.length; i++) {
				var str="";
				str="<tr><td><input name='role' type='checkbox' value='"+data[i].ROLEID+"'/>"+data[i].ROLENAME+"</td></tr>"
				$('#table').append(str);
			}
				/* var radio = document.getElementsByName("sex1");
				for (var i = 0; i < radio.length; i++) {
					if (radio[i].value == a.SEX) {
						radio[i].checked = true;
					}
				} */
					
			
			//$('#dialog').dialog("open");
				
    			
		}
	})
	$("#selbtn").click(function() {
			var index = $("#powername").val();
			if (index != "") {
				$('#tb').datagrid({
					url : '/p2p/emprole/sel.do',
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
						id : $("#powername").val()
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
					columns : [ [{
						field : 'xuanze',
						title : 'Code',
						width : 200,
						align : 'center',
						checkbox : true
					},{
						field : 'EMPNAME',
						title : '用户名',
						width : 150,
						align : 'center'
					}, {
						field : 'EMPPWD',
						title : '密码',
						width : 150,
						align : 'center'
					},  {
						field : 'NAME',
						title : '姓名',
						width : 150,
						align : 'center'
					},{
						field : 'EMPID',
						title : 'id',
						width : 150,
						align : 'center',
						hidden : true
					}] ]
				});
			} else {
				alert("請輸入您要查詢的數據");
			}
		})
	$("#allbtn").click(function() {
		window.location.reload();
	});
	$("#updbtn").click(function() { //点击删除按钮

		//getSelected第一次选中的行
		var row = $('#tb').datagrid("getSelections");
		if (row.length==1) {
			var index=row[0].EMPID;
			$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
				type : "post", //请求方式
				url : "/p2p/emprole/fanrole.do", //请求地址
				data:{id:index},//{nameha:$("#username").val(),passha:$("#password").val()},
				dataType : "json",
				success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
					var radio = document.getElementsByName("role");
					for (var j = 0; j < data.length; j++) {
						for (var i = 0; i < radio.length; i++) {
							if (radio[i].value == data[j].ROLEID) {
								radio[i].checked = true;
							}
						} 
					}
						/* $("#empname1").val(a.EMPNAME);
						$("#emppwd1").val(a.EMPPWD);
						$("#name1").val(a.NAME);
						$("#iphone1").val(a.IPHONE);
						$("#emailaaa1").val(a.EMAIL);
						//$("#addtime1").datebox('setValue', a.ADDTIME);*/
				}		
						
						
					
					});
					$('#dialog').dialog("open");
						
	        			
				}else {
					alert("请选择一行再进行更改");
				} 
			
			});
			
		

	$('#tb').datagrid({
		url : '/p2p/emprole/emp.do',
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
		/* queryParams: {
			id: $("#powername").val()
		}, */

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
		},{
			field : 'EMPNAME',
			title : '用户名',
			width : 150,
			align : 'center'
		}, {
			field : 'EMPPWD',
			title : '密码',
			width : 150,
			align : 'center'
		},  {
			field : 'NAME',
			title : '姓名',
			width : 150,
			align : 'center'
		},{
			field : 'EMPID',
			title : 'id',
			width : 150,
			align : 'center',
			hidden : true
		}] ]

	})
	$('#dialog')
				.dialog(
						{
							title : '我的模态框', //模态框标题
							width : 400, //宽度
							height : 400, //高度	
							left : 400,
							close : false, //是否可以关闭
							closable:false,
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
											if (window.confirm('你确定修改该员工的角色吗？')) {
											var row = $('#tb').datagrid("getSelections");
											index = row[0].EMPID;
											var list=document.getElementsByName("role");
											var s = '';
											for (var i = 0; i < list.length; i++) {
												if (s != '')
													s += ',';
												if (list[i].checked) {
													s += list[i].value;
												}
											}
											
											var data={};
											data["empid"]=index;
											data["roleid"]=s;
											//data["roleid"]=
											//data={id:$("#id").val(),name:$("#name").val(),code:$("#code").val(),page:$("#page").val(),description:$("#description").val(),generatenemu:$("#generatenemu").val(),pid:$("#pid").val(),zindex:$("#zindex").val()};
											$
													.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
														type : "post", //请求方式
														url : "/p2p/emprole/updarole.do", //请求地址
														//contentType:'application/json;charset=UTF-8',
														//dataType : "json",
														data : data,
														success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定

															alert("更改成功！")
															var radio = document.getElementsByName("role");
															for (var i = 0; i < radio.length; i++) {
																radio[i].checked=false;
															} 
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
											var radio = document.getElementsByName("role");
											for (var i = 0; i < radio.length; i++) {
												radio[i].checked=false;
											} 
											$('#dialog').dialog("close")
										}
									} ]
						}
					)
		$('#dialog').dialog("close");
})

</script>
</html>