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
					<th height="30">编号:</th>
					<td><input id="id" name="id" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="30">名称:</th>
					<td><input id="name" name="name" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				
				<tr>
					<th height="30">访问路径：</th>
					<td><input id="page" name="page"></td>
				</tr>
				<tr>
					<th height="25">优先级：</th><td><input id="zindex"
					 class="easyui-validatebox" name="zindex" data-options="required:true"
					></td>
				</tr>
				<tr>
					<th height="30">是否生成菜单：</th>
					<td>是：<input id="generatenemu" name="generatenemu" TYPE="radio">否：<input id="generatenemu" name="generatenemu" TYPE="radio"></td>
				</tr>
				<tr>
					<th height="25">关键字：</th><td><input id="code" name="code" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="30">父权限id:</th>
					<td><input id="pid" name="pid">    
				</td>
				</tr>
				<tr>
					<th height="30">描述:</th>
					<td><textarea rows="4" id="description" name="description" cols="25"></textarea></td>
				</tr>
			</table>
		</form>
	</div>  
	<div id="dialog">
		<form id="myform1" method="post">
			<table with="100%" class="formtable">
				<tr>
					<th height="30">编号:</th>
					<td><input id="id1" name="id" class="easyui-validatebox" readonly="true" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="30">名称:</th>
					<td><input id="name1" name="name" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				
				<tr>
					<th height="30">访问路径：</th>
					<td><input id="page1" name="page"></td>
				</tr>
				<tr>
					<th height="25">优先级：</th><td><input id="zindex1"
					 class="easyui-validatebox" name="zindex" data-options="required:true"
					></td>
				</tr>
				<tr>
					<th height="30">是否生成菜单：</th>
					<td><input id="generatenemu1" name="generatenemu" class="easyui-validatebox" data-options="required:true">1為生成，2為不生成</td>
				</tr>
				<tr>
					<th height="25">关键字：</th><td><input id="code1" name="code" class="easyui-validatebox" data-options="required:true"></td>
				</tr>
				<tr>
					<th height="30">父权限id:</th>
					<td><input id="pid1" name="pid">    
				</td>
				</tr>
				<tr>
					<th height="30">描述:</th>
					<td><textarea rows="4" id="description1" name="description" cols="25"></textarea></td>
				</tr>
			</table>
		</form>
	</div>  
	<div id="toolbar">
		<a id="addbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">增加 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="deletebtn"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">删除 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
		<a id="updbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">修改 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
			<input id="powername" >
		<a id="selbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">查詢 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
		<a id="allbtn" href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">顯示所有 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
			
	</div>
</body>
<script type="text/javascript">
	$(function(){
		$("#allbtn").click(function(){
			window.location.reload();
		})
		$('#pid').combobox({
			url:'/p2p/aaa/queryid.do',    
			valueField:'ID',    
			textField:'ID',
			panelHeight:"auto",
			editable:false
			
		}); 
		$('#pid1').combobox({
			url:'/p2p/aaa/queryid.do',    
			valueField:'ID',    
			textField:'ID',
			panelHeight:"auto",
			editable:false
			
		});
		$("#selbtn").click(function(){
			var index=$("#powername").val();
			if (index!="") {
				$('#tb').datagrid(
						{
							url : '/p2p/aaa/selpower.do',
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
							queryParams: {
								id: $("#powername").val()
							},

							/* onClickRow:function(rowIndex,rowData){
								 var rowInfo = $("#tb").datagrid('getChecked');
								 
		           				 if (rowInfo) {
		                			alert("已经选中的行");
		            			}
							}, */
							//fit : true,  
							onLoadSuccess:function(list){
								
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
										field : 'ID',
										title : '权限编号',
										width : 150,
										align : 'center'
									},
									{
										field : 'NAME',
										title : '权限名称',
										width : 150,
										align : 'center'
									},
									{
										field : 'CODE',
										title : '关键字',
										width : 150,
										align : 'center'
									},
									{
										field : 'DESCRIPTION',
										title : '具体描述',
										width : 250,
										align : 'center'
									},
									{
										field : 'PAGE',
										title : 'url地址',
										width : 150,
										align : 'center'
									},
									{
										field : 'GENERATENEMU',
										title : '是否生成菜单',
										width : 150,
										align : 'center',
										formatter : function(value,row,index){
											   
		                					if(value=='1'){return '生成菜单'}  
		               						 else {return '不生成菜单'}                        
		             						 } 
									},
									{
										field : 'PID',
										title : '父权限id',
										width : 150,
										align : 'center'
									},
									{
										field : 'ZINDEX',
										title : '优先级',
										width : 150,
										align : 'center'
									}] ]
						});
			} else {
				alert("請輸入您要查詢的數據");
			}
			
		})
		$("#addbtn").click(function(){
			
			$('#handledialog').dialog("open");
			  


		});
		$('#tb').datagrid(
				{
					url : '/p2p/aaa/querypower.do',
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
					/* onClickRow:function(rowIndex,rowData){
						 var rowInfo = $("#tb").datagrid('getChecked');
						 
           				 if (rowInfo) {
                			alert("已经选中的行");
            			}
					}, */
					//fit : true,  
					onLoadSuccess:function(list){
						
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
								field : 'ID',
								title : '权限编号',
								width : 150,
								align : 'center'
							},
							{
								field : 'NAME',
								title : '权限名称',
								width : 150,
								align : 'center'
							},
							{
								field : 'CODE',
								title : '关键字',
								width : 150,
								align : 'center'
							},
							{
								field : 'DESCRIPTION',
								title : '具体描述',
								width : 250,
								align : 'center'
							},
							{
								field : 'PAGE',
								title : 'url地址',
								width : 150,
								align : 'center'
							},
							{
								field : 'GENERATENEMU',
								title : '是否生成菜单',
								width : 150,
								align : 'center',
								formatter : function(value,row,index){
									   
                					if(value=='1'){return '生成菜单'}  
               						 else {return '不生成菜单'}                        
             						 } 
							},
							{
								field : 'PID',
								title : '父权限id',
								width : 150,
								align : 'center'
							},
							{
								field : 'ZINDEX',
								title : '优先级',
								width : 150,
								align : 'center'
							}] ]
				});
		$('#handledialog')
		.dialog(
				{
					title : '我的模态框', //模态框标题
					width : 400, //宽度
					height : 400, //高度	
					left:400,
					close : true, //是否可以关闭
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
							var data={};
							data["id"] = $("#id").val();
							data["name"] = $("#name").val();
							data["code"] = $("#code").val();
							data["page"] = $("#page").val();
							data["description"] = $("#description").val();
							data["generatenemu"] = $("#generatenemu").val();
							data["pid"] = $("#pid").val();
							data["zindex"] = $("#zindex").val();
							alert(data);
							//data={id:$("#id").val(),name:$("#name").val(),code:$("#code").val(),page:$("#page").val(),description:$("#description").val(),generatenemu:$("#generatenemu").val(),pid:$("#pid").val(),zindex:$("#zindex").val()};
							 $.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
									type : "post", //请求方式
									url : "/p2p/aaa/addpower.do", //请求地址
									contentType:'application/json;charset=UTF-8',
									//dataType : "json",
									data: JSON.stringify(data),
									success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
										
										
											alert("插入成功！")
											$('#handledialog').dialog("close");
										
									} 
							 })
						}
					},{
								text : '关闭',
								handler : function() {
									alert("你确定取消吗？");
									$('#handledialog').dialog("close")
								}
							} ]
				})
				$('#handledialog').dialog("close");
		$('#dialog')
		.dialog(
				{
					title : '我的模态框', //模态框标题
					width : 400, //宽度
					height : 400, //高度	
					left:400,
					close : true, //是否可以关闭
					top : 0, //上移100
					cache : false, //
					modal : true,//模态框 
					onOpen:function(){ 
					} ,
					buttons : [ {	//自带的按钮
						text : '保存',
						iconCls : 'icon-save',
						handler : function() {
							alert("1111");
							var data={};
							data["id"] = $("#id1").val();
							data["name"] = $("#name1").val();
							data["code"] = $("#code1").val();
							data["page"] = $("#page1").val();
							data["description"] = $("#description1").val();
							data["generatenemu"] = $("#generatenemu1").val();
							data["pid"] = $("#pid1").val();
							data["zindex"] = $("#zindex1").val();
							//data["zhuid"] = index;
							
							//data={id:$("#id").val(),name:$("#name").val(),code:$("#code").val(),page:$("#page").val(),description:$("#description").val(),generatenemu:$("#generatenemu").val(),pid:$("#pid").val(),zindex:$("#zindex").val()};
							 $.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
									type : "post", //请求方式
									url : "/p2p/aaa/updatepower.do", //请求地址
									contentType:'application/json;charset=UTF-8',
									//dataType : "json",
									data: JSON.stringify(data),
									success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
										
										window.location.reload();
										$('#dialog').dialog("close")
										
									} 
							 })
						}
					},{
								text : '关闭',
								handler : function() {
									alert("你确定取消吗？");
									$('#dialog').dialog("close")
								}
							} ]
				})
				$('#dialog').dialog("close");
		$("#deletebtn").click(function() { //点击删除按钮

			//getSelected第一次选中的行
			var row = $('#tb').datagrid("getSelections");
			if (row.length==1) {
				var index=row[0].ID;
				alert(index);
				$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
					type : "post", //请求方式
					url : "/p2p/aaa/deletepower.do", //请求地址
					data:{id:index},//{nameha:$("#username").val(),passha:$("#password").val()},
					//dataType : "json",
					success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
							
						alert(data);
							
								var index = $('#tb').datagrid("getRowIndex", row); //得到该行的索引
								$('#tb').datagrid("deleteRow", index); //删除该行
								window.location.reload();
		        			
					}
				
				});
				
			} else {
				alert("请选择一行再进行删除");
			} 
			//----------------------------------------------------------
			/* var rows=$('#tb').datagrid("getSelections");
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
			}*/
		});
		$("#updbtn").click(function() { //点击删除按钮

			//getSelected第一次选中的行
			var row = $('#tb').datagrid("getSelections");
			if (row.length==1) {
				var index=row[0].ID;
				alert(index);
				$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
					type : "post", //请求方式
					url : "/p2p/aaa/selonepower.do", //请求地址
					data:{id:index},//{nameha:$("#username").val(),passha:$("#password").val()},
					dataType : "json",
					success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
						var jsonObj = eval(data);
						$.each(jsonObj,function(i, a) {
								$("#id1").val(a.ID);
								$("#name1").val(a.NAME);
								$("#code1").val(a.CODE);
								$("#description1").val(a.DESCRIPTION);
								$("#page1").val(a.PAGE);
								$("#generatenemu1").val(a.GENERATENEMU);							
								$('#pid1').combobox('select', a.PID);
								$("#zindex1").val(a.ZINDEX);
								
						});
						$('#dialog').dialog("open");
							
		        			
					}
				
				});
				
			} else {
				alert("请选择一行再进行删除");
			} 
			//----------------------------------------------------------
			/* var rows=$('#tb').datagrid("getSelections");
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
			}*/
		});
	})
</script>
</html>