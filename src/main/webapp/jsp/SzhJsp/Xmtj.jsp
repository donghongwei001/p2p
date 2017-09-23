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
		项目检索：<input id="ss" class="easyui-searchbox change"/>
		用户检索：<input id="sss" class="easyui-searchbox change"/>
		<br/>    
                                    日期检索：<input id="begindate" type="text" class="easyui-datebox" currentText="今天" closeText="关闭" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;到&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="enddate" type="text" class="easyui-datebox" currentText="今天" closeText="关闭" />  
            <input style="width:10px;visibility:hidden" />  
            <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="searchOrder()">查询</a>&nbsp;&nbsp;&nbsp;
            <a href="SzhCeshi3.jsp" class="easyui-linkbutton c1" data-options="iconCls:'icon-large-chart'" style="width:80px">统计图</a>
	</div>
    <table id="dg"></table>
	<script>
        $(function () {
            $('#dg').datagrid({
                singleSelect: true,
                //onLoadSuccess: compute,//加载完毕后执行计算
                url: '/p2p/queryProject.do',
                fitColumns: true,
				striped : true,
                fit : true,
				rownumbers : true,
				pagination:true,
			    pagePosition:"bottom",
			    pageSize:'5',
				pageList:[5,10,15,20,25],
                title: '项目统计',
                toolbar : "#toolbar", 
                columns: [[
             	{
					field : 'USERNAME',
					title : '用户名',
					width : 200
				},{
					field : 'PROJECTNAME',
					title : '项目名称',
					width : 200
				}, {
					field : 'NAME',
					title : '项目类型',
					width : 200
				}, {
					field : 'TIME',
					title : '申请时间',
					width : 200
				}, {
					field : 'MONEY',
					title : '申请金额',
					width : 200
				}, {
					field : 'LIFELOAN',
					title : '借款期限',
					width : 200
				}, {
					field : 'RATEMONEY',
					title : '利率',
					width : 200
				}, {
					field : 'CODENAME',
					title : '审核状态',
					width : 200
				}]]
            });
        });
        /* function compute() {//计算函数
            var rows = $('#dg').datagrid('getRows')//获取当前的数据行
            var ptotal = 0//计算listprice的总和
            ,utotal=0;//统计unitcost的总和
            for (var i = 0; i < rows.length; i++) {
                ptotal += rows[i]['money'];
                utotal += rows[i]['lifeloan'];
            }
            //新增一行显示统计信息
            $('#dg').datagrid('appendRow', { username: '<b style="font-size:14px;font-family:仿宋;">统计：</b>', money: '<b style="font-size:14px;font-family:仿宋;">共'+ptotal+'元</b>', lifeloan: '<b style="font-size:14px;font-family:仿宋;">共'+utotal+'月</b>' });
        }  */
        $(function(){
        	$('#ss').searchbox({ 
            	searcher:function(value,name){ 
            		$('#dg').datagrid({
                        singleSelect: true,
                        method:'post',
                        //onLoadSuccess: compute,//加载完毕后执行计算
                        url:'/p2p/queryPart.do',
                        fitColumns: true,
        				striped : true,
                        pagination: true,
                        fit : true,
                        queryParams: {
                        	comname : value
        				},
        				rownumbers : true,
                        pageSize: 20,
                        pageList : [ 20, 40, 60 ],
                        title: '项目统计',
                       toolbar : "#toolbar",
                        columns: [[{
        					field : 'username',
        					title : '用户名',
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
            	}, 
            	prompt:'请输入项目名...'
            }); 
        });
        
        $(function(){
        	$('#sss').searchbox({ 
            	searcher:function(value,name){ 
            		$('#dg').datagrid({
                        singleSelect: true,
                        method:'post',
                        //onLoadSuccess: compute,//加载完毕后执行计算
                        url:'/p2p/queryUser.do',
                        fitColumns: true,
        				striped : true,
                        pagination: true,
                        fit : true,
        				rownumbers : true,
        				queryParams: {
        					user : value
        				},
                        pageSize: 20,
                        pageList : [ 20, 40, 60 ],
                        title: '项目统计',
                       toolbar : "#toolbar",
                        columns: [[{
        					field : 'username',
        					title : '用户名',
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
            	}, 
            	prompt:'请输入用户名...'
            }); 
        });
        
        function searchOrder(){  
            var begindate = $('#begindate').datebox('getValue');    //获取查询的起始日期  
            var enddate = $('#enddate').datebox('getValue');    //获取查询的终止日期  
            $('#dg').datagrid({
                singleSelect: true,
                method:'post',
                //onLoadSuccess: compute,//加载完毕后执行计算
                url:'/p2p/queryTime.do',
                fitColumns: true,
				striped : true,
                pagination: true,
                fit : true,
				rownumbers : true,
				queryParams: {
					zzz : begindate,
					hhh : enddate
				},
                pageSize: 20,
                pageList : [ 20, 40, 60 ],
                title: '项目统计',
               toolbar : "#toolbar",
                columns: [[{
					field : 'username',
					title : '用户名',
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
        }  
    </script>
</body>
</html>