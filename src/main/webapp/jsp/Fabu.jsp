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
	</div>
	<table id="proDataGrid"> 

	</table>
	<table id="dg">
	
	</table>
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
	pagination : true,
	pageSize : 5,
	pageList : [ 5, 10, 15 ],
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
		//data["poststatus"]=row[6].POSTSTATUS;
		alert(data.projectid);
		
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
});
</script>