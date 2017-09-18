<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="../easyui/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="../easyui/css/icon.css" />
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css" />
<script src="../easyui/js/jquery.min.js"></script>
<script src="../easyui/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../easyui/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
<div id="toolbar">
		<a id="fabu"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-add'">发布项目</a>
		<a id="xiajia"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-remove'">项目下架</a>
		<a id="seldo"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-remove'">查看项目金额</a>
	</div>
	<table id="proDataGrid"> 

	</table>
<div id="dialog">
  	<form id="myform" method="post">
			<table with="100%" class="formtable">
				<tr>
					<th height="28">用户姓名:</th>
					<td><input id="personalname1" name="personalname"
						class="easyui-validatebox"style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				
				</tr>
				<tr>
					<th height="28">身份证号:</th>
					<td><input id="idcard1" name="idcard"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">手机号:</th>
					<td><input id="iphone1" name="iphone"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">电子邮箱:</th>
					<td><input id="mailbox1" name="mailbox"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">居住地址:</th>
					<td><input id="address1" name="address"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">已筹到金额:</th>
					<td><input id="nowmoney1" name="nowmoney"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">发布时间:</th>
					<td><input id="begintime1" name="begintime"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">结束时间:</th>
					<td><input id="lasttime1" name="lasttime"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
			</table>
			</form>
	</div>
</body>
</html>
<script type="text/javascript">
$(function(){
	$('#proDataGrid').datagrid({
	url : 'http://localhost:9088/p2p/yx/fa.do',
	// data:data,
	fitColumns : true,//自动适应网格宽度
	striped : true,//显示斑马线
	//idField : "projectid",//设置productid为主键
	loadMsg : "努力加载中......",//加载慢的时候提示信息
	fit : true,//
	rownumbers : true,
	singleSelect : false,
	pageSize : 10,//每页显示的记录条数，默认为10 
	pageList : [ 5, 10, 15 ],//可以设置每页记录条数的列表 
	beforePageText : '第',//页数文本框前显示的汉字 
	afterPageText : '页    共 {pages} 页',
	pagination : true, //分页工具栏
	pagePosition : "bottom",
	toolbar : "#toolbar",
	
	columns : [ [{
		field : 'PROJECTID',
		title : '项目ID',
		width : 50,
		
	},{
		field : 'USERNAME',
		title : '用户名',
		width : 50,
		
	},
	{
		field : 'PROJECTNAME',
		title : '项目名称',
		width : 100
	}, {
		field : 'NAME',
		title : '项目类型',
		width : 80
	},{
		field : 'LOCATION',
		title : '项目地点',
		width : 120
	},{
		field : 'MONEY',
		title : '申请金额',
		width : 200
	},{
		field : 'POSTSTATUS',
		title : '状态',
		width : 200,
		formatter: function(value,row,index){
            if (row.POSTSTATUS=='5'){
                return "发布中";
            }else if(row.POSTSTATUS=='12'){
                return "待发布";
            }else if(row.POSTSTATUS=='6'){
            	return "已下架";
            }
        }
	}] ]
});
	//////////////////

	 
	$("#fabu").click(function(){
		var row = $('#proDataGrid').datagrid("getSelections");
		if (row.length==1) {
			//var index=row[0].PROJECTID;
		var data={};
		data["projectid"]=row[0].PROJECTID;
		alert(data.projectid);
		if(row[0].POSTSTATUS=='5'){
			alert("该项目已发布");
			return false;
		}else if(row[0].POSTSTATUS=='12'){
		if (window.confirm('确定发布吗？')) {
		$.ajax({
			type : "post",
			url : "/p2p/first/addfa.do",
			contentType :"application/json;charset=UTF-8",
			data:JSON.stringify(data),
			success : function(data1){
				alert("发布成功");
				window.location.href="http://localhost:9088/p2p/jsp/Fabu.jsp"
			}
		});
		}
		}else{
			alert("该项目已下架");
			return false;
		}
		}else{
			alert("请选择要发布的项目");
		}
	});
	$("#xiajia").click(function(){
		var row = $('#proDataGrid').datagrid("getSelections");
		if (row.length==1) {
			var index=row[0].POSTSTATUS;
			if (index=='5') {
				if (window.confirm('你确定下架该项目吗？')) {
					var pid=row[0].PROJECTID;
				$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
					type : "post", //请求方式
					url : "/p2p/first/xiajia.do", //请求地址
					data : {
						id : pid
					},//{nameha:$("#username").val(),passha:$("#password").val()},
					//dataType : "json",
					success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
						alert("下架成功!")
						window.location.reload();
					}
				})
				}
			} else {
				alert("该项目不可以下架")
			}
		}else {
			alert("请选择一条要下架的项目");
		}
	})
	
	
	$("#seldo").click(function() {
		var row = $('#proDataGrid').datagrid("getSelections");
		if (row.length==1) {
			var index=row[0].PROJECTID;
			alert(index);
			if(row[0].POSTSTATUS=='12'){
				alert("该项目还未发布");
				return false;
			}else{
		$('#dialog')
		.dialog(
				{
					title : '我的模态框', //模态框标题
					width : 600, //宽度
					height : 400, //高度	
					left : 400,
					close : true, //是否可以关闭
					closable:false,
					top : 0, //上移100
					cache : false, //
					modal : true,//模态框 
					onOpen : function() {
						
						$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
							type : "post", //请求方式
							url : "/p2p/yx/removexmsel.do", //请求地址
							data : {
								id : index
							},//{nameha:$("#username").val(),passha:$("#password").val()},
							dataType : "json",
							success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
								var jsonObj = eval(data);
								$.each(jsonObj, function(i, a) {
									$("#personalname1").val(a.PERSONALNAME);
									$("#idcard1").val(a.IDCARD);
									$("#iphone1").val(a.IPHONE);
									$("#mailbox1").val(a.MAILBOX);
									$("#address1").val(a.ADDRESS);
									$("#nowmoney1").val(a.NOWMONEY);
									$("#begintime1").val(a.time1);
									$("#lasttime1").val(a.time2);
								
									$("input").attr("readonly", "readonly"); //对所有的input标签禁用
								})
							}
						})
					},
					buttons : [
							{ //自带的按钮 
								text : '关闭',
								handler : function() {
									alert("你确定取消吗？");
									$('#dialog').dialog("close");
									window.location.reload();
								}
							} ]
				})
			}
		}else{
			alert("请选择一条数据");
		}
	});
$('#dialog').dialog("close");

	
	
});
</script>