<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>项目统计</title>

<link rel="stylesheet" type="text/css" href="../../easyui/css/easyui.css">
<link rel="stylesheet" type="text/css" href="../../easyui/css/icon.css">
<script src="../../easyui/js/jquery.min.js"></script>
<script src="../../easyui/js/jquery.easyui.min.js"></script>
<script src="../../easyui/js/easyui-lang-zh_CN.js"></script>

</head>
<body>
	<div id="toolbar">
		<input type="text" id="changeName1" size="24" maxlength="50" class="easyui-combobox"
		data-options="required:false,validType:'special'"/>
	</div>
    <table id="dg"></table>
	<script>
        $(function () {
            $('#dg').datagrid({
                singleSelect: true,
                onLoadSuccess: compute,//加载完毕后执行计算
                url: '/p2p/queryProject.do',
                fitColumns: true,
				striped : true,
                pagination: true,
                fit : true,
				rownumbers : true,
                pageSize: 20,
                pageList : [ 20, 40, 60 ],
                title: '项目统计',
                toolbar : "#toolbar",
                columns: [[{
					field : 'username',
					title : '申请人',
					width : 200
				},{
					field : 'projectname',
					title : '项目名称',
					width : 200
				}, {
					field : 'name',
					title : '项目类型',
					width : 200
				}, {
					field : 'time',
					title : '申请时间',
					width : 200
				}, {
					field : 'money',
					title : '申请金额',
					width : 200
				}, {
					field : 'lifeloan',
					title : '借款期限',
					width : 200
				}, {
					field : 'ratemoney',
					title : '利率',
					width : 200
				}, {
					field : 'codename',
					title : '审核状态',
					width : 200
				}]]
            });
        });
        function compute() {//计算函数
            var rows = $('#dg').datagrid('getRows')//获取当前的数据行
            var ptotal = 0//计算listprice的总和
            ,utotal=0;//统计unitcost的总和
            for (var i = 0; i < rows.length; i++) {
                ptotal += rows[i]['money'];
                utotal += rows[i]['lifeloan'];
            }
            //新增一行显示统计信息
            $('#dg').datagrid('appendRow', { username: '<b style="font-size:16px;font-family:仿宋;">统计</b>', money: '<b style="font-size:16px;font-family:仿宋;">共'+ptotal+'元</b>', lifeloan: '<b style="font-size:16px;font-family:仿宋;">共'+utotal+'天</b>' });
        }
        $(document).ready(function(){
        	//自动搜索 

        	$('#changeName1').combobox({

        	mode:'remote' ,

        	url:'/p2p/queryProject.do' ,

        	valueField:'projectname' ,

        	textField:'projectname' ,

        	delay:500

        	});
        });
    </script>
</body>
</html>