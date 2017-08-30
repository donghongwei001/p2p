$(function(){
	product.grid();
	product.clcik();
	product.dialog();
	
});
var product={
		init:function select(){
			$('#proType').combobox({
				url:'select.json',    
				valueField:'id',    
				textField:'text',
				panelHeight:"auto",
				editable:false,
				onLoadSuccess:function(){
					var data = $("#proType").combobox("getData");
					if(data.length>0){
						$("#proType").combobox("setValue",data[0].id);
					}
				}
			});  
		},
		

		clcik:function click(){
			$("#addbtn").click(function (){				//点击增加按钮 
				$('#handledialog').dialog("open");		//打开模态框
			});
			//-------------------------------------
			$("#deletebtn").click(function (){			//点击删除按钮
				//getSelected第一次选中的行
				/* var row =$('#proDataGrid').datagrid("getSelected");
		if (row) {
			$.post("ok.result",{id:row.productid},function(data){   提交   参数1 提交地址  参数2 id  回调函数
				if (data=="ok") {						
					var index=$('#proDataGrid').datagrid("getRowIndex",row);	得到该行的索引
					$('#proDataGrid').datagrid("deleteRow",index);			删除该行
				}
			})
		}else{
			alert("请选择一行再进行删除");
		} */
				//----------------------------------------------------------
				var rows=$('#proDataGrid').datagrid("getSelections");			//getSelections选中的所有行
				if (rows.length>0) {											//当选择成功时
					var ids=new Array();										//定义一个新的数组
					for ( var i = 0; i < rows.length; i++) {					//
						ids.push(rows[i].productid);							//向新数组添加东西
					}
					$.post("ok.result",{ids:ids.join(",")},function(data){		//提交  参数1 地址  参数2 把数组ids变成json字符串
						if (data=="ok") {
							for ( var j = rows.length-1; j >=0; j--) {
								var index=$('#proDataGrid').datagrid("getRowIndex",rows[j]);		//得到该行的索引
								$('#proDataGrid').datagrid("deleteRow",index);			//删除该行
							}
						}
					});
				}else{
					alert("请选择一行再进行删除");
				}
			});
		},

		//-------------------------------------
		dialog:function dialog(){
			$('#handledialog').dialog({
				title : '我的模态框', //模态框标题
				width : 400, //宽度
				height : 200, //高度		
				close : true, //是否可以关闭
				top : 100, //上移100
				cache : false, //
				modal : true,//模态框 
				onOpen:function(){
					product.init();
				},
				buttons : [ {	//自带的按钮
					text : '保存',
					iconCls : 'icon-save',
					handler : function() {
						$('#myform').form('submit', {		//表单提交
							url : "ok.result",				//提交地址
							onsubmit : function() {			//在提交之前执行  如果返回false  则阻止提交
								var isValid = $(this).form('validate');
								return isValid;
							},
							success : function(data) {		//表单提交成功后执行
								if (data == "ok") {			//回调函数
									//更新grid
									//$('#proDataGrid').datagrid("reload");		
									$('#proDataGrid').datagrid('insertRow', {			//插入一行
										index : 0,										//索引从0开始
										row : {
											productid : $("#proid").val(),
											productname : $("#proName").val(),
											unitcost : $("#unitcost").val(),
											status : $("#status").val(),
											listprice : $("#listprice").val(),
											attr1 : $("#attr1").val(),
											itemid : $("#proType").val()
										}
									});
									$('#handledialog').dialog("close");					//模态框关闭
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
			});
		},
		grid:function datagrid(){
		$('#proDataGrid').datagrid({
			url : 'datagrid_data1.json',//通过url向服务器检索数据
			// data:data,				//加载的数据
			fitColumns : false, //自动展开/收缩列的大小，防止水平滚动
			striped : true, //是否显示斑马线
			idField : "productid", //指明标识键   比如主键
			loadMsg : "努力加载中......", //加载数据时候显示提示信息	
			fit : true, //填满
			rownumbers : true, //是否显示行号列
			singleSelect : false, //是否只能选择一行
			pagination : true, //分页工具栏
			pagePosition : "bottom",
			pageSize : 5, //初始化页面大小
			pageList : [ 20, 40, 60 ], //初始化页面大小选择列表
			toolbar : "#toolbar", //顶部的工具栏
			frozenColumns : [ [ { //同列属性 ，  会被固定在左侧
				field : 'productid', //数据的列名
				title : 'id', //表格列名
				width : 400
			}, {
				field : 'productname',
				title : '名称',
				width : 400
			} ] ],
			columns : [ [ //列

			              {
			            	  field : 'unitcost',
			            	  title : '单价',
			            	  width : 200,
			            	  align : 'right'
			              }, {
			            	  field : 'status',
			            	  title : '状态',
			            	  width : 200
			              }, {
			            	  field : 'listprice',
			            	  title : '总价',
			            	  width : 200
			              }, {
			            	  field : 'attr1',
			            	  title : '属性',
			            	  width : 200
			              }, {
			            	  field : 'itemid',
			            	  title : '型号',
			            	  width : 200
			              } ] ]
		});
		}
		
		
};