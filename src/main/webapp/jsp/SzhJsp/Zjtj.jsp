<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>资金统计</title>

<link rel="stylesheet" type="text/css" href="../../easyui/css/easyui.css">
<link rel="stylesheet" type="text/css" href="../../easyui/css/icon.css">
<script src="../../easyui/js/jquery.min.js"></script>
<script src="../../easyui/js/jquery.easyui.min.js"></script>
<script src="../../easyui/js/easyui-lang-zh_CN.js"></script>

</head>
<body>
	<div id="toolbar">
		申请人检索：<input id="ss1" class="easyui-searchbox change"/>
		项目名检索：<input id="sss1" class="easyui-searchbox change"/>  
                                    日期检索：<input id="begindate1" type="text" class="easyui-datebox" currentText="今天" closeText="关闭" />到     
            <input id="enddate1" type="text" class="easyui-datebox" currentText="今天" closeText="关闭" />  
            <input style="width:10px;visibility:hidden" />  
            <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="searchOrder()">查询</a>
	</div>
	<table id="dg1"></table>
	
	<script>
        $(function () {
            $('#dg1').datagrid({
                singleSelect: true,
                onLoadSuccess: compute,//加载完毕后执行计算
                url: '/p2p/queryMoney.do',
                fitColumns: true,
				striped : true,
                pagination: true,
                fit : true,
				rownumbers : true,
                pageSize: 20,
                pageList : [ 20, 40, 60 ],
                title: '资金统计',
                toolbar : "#toolbar",
                columns: [[{
					field : 'name',
					title : '申请人',
					width : 160
				},{
					field : 'projectname',
					title : '项目名称',
					width : 160
				}, {
					field : 'time',
					title : '放款时间',
					width : 200
				}, {
					field : 'money',
					title : '放款金额',
					width : 160
				}, {
					field : 'hktime',
					title : '还款日期',
					width : 200
				}, {
					field : 'hkmoney',
					title : '还款金额',
					width : 160
				}, {
					field : 'ptmoney',
					title : '平台费用',
					width : 160
				}, {
					field : 'codename',
					title : '还款状态',
					width : 160
				}, {
					field : 'outday',
					title : '逾期天数',
					width : 160
				}, {
					field : 'outmoney',
					title : '逾期金额',
					width : 160
				}]]
            });
        });
        function compute() {//计算函数
            var rows = $('#dg1').datagrid('getRows')//获取当前的数据行
            var ptotal = 0//计算listprice的总和
            ,utotal=0,htotal = 0,stotal = 0;//统计unitcost的总和
            for (var i = 0; i < rows.length; i++) {
                ptotal += rows[i]['money'];
                utotal += rows[i]['hkmoney'];
                htotal += rows[i]['ptmoney'];
                stotal += rows[i]['outmoney'];
            }
            //新增一行显示统计信息
            $('#dg1').datagrid('appendRow', { name: '<b style="font-size:14px;font-family:仿宋;">统计：</b>', money: '<b style="font-size:14px;font-family:仿宋;">总额：'+ptotal+'元</b>', hkmoney: '<b style="font-size:14px;font-family:仿宋;">总额：'+utotal+'元</b>',
            ptmoney: '<b style="font-size:14px;font-family:仿宋;">总额：'+htotal+'元</b>',outmoney: '<b style="font-size:14px;font-family:仿宋;">总额：'+stotal+'元</b>'});
        }
        
        $(function(){
        	$('#ss1').searchbox({ 
            	searcher:function(value,name){ 
            		$('#dg1').datagrid({
                        singleSelect: true,
                        method:'post',
                        onLoadSuccess: compute,//加载完毕后执行计算
                        url:'/p2p/queryMoneyName.do',
                        fitColumns: true,
        				striped : true,
                        pagination: true,
                        fit : true,
                        queryParams: {
                        	name : value
        				},
        				rownumbers : true,
                        pageSize: 20,
                        pageList : [ 20, 40, 60 ],
                        title: '资金统计',
                      	toolbar : "#toolbar",
                       	columns: [[{
	       					field : 'name',
	       					title : '申请人',
	       					width : 160
	       				},{
	       					field : 'projectname',
	       					title : '项目名称',
	       					width : 160
	       				}, {
	       					field : 'time',
	       					title : '放款时间',
	       					width : 200
	       				}, {
	       					field : 'money',
	       					title : '放款金额',
	       					width : 160
	       				}, {
	       					field : 'hktime',
	       					title : '还款日期',
	       					width : 200
	       				}, {
	       					field : 'hkmoney',
	       					title : '还款金额',
	       					width : 160
	       				}, {
	       					field : 'ptmoney',
	       					title : '平台费用',
	       					width : 160
	       				}, {
	       					field : 'codename',
	       					title : '还款状态',
	       					width : 160
	       				}, {
	       					field : 'outday',
	       					title : '逾期天数',
	       					width : 160
	       				}, {
	       					field : 'outmoney',
	       					title : '逾期金额',
	       					width : 160
	       				}]]
                    });
            	}, 
            	prompt:'请输入申请人...'
            }); 
        });
        
        $(function(){
        	$('#sss1').searchbox({ 
            	searcher:function(value,name){ 
            		$('#dg1').datagrid({
                        singleSelect: true,
                        method:'post',
                        onLoadSuccess: compute,//加载完毕后执行计算
                        url:'/p2p/queryMoneyProject.do',
                        fitColumns: true,
        				striped : true,
                        pagination: true,
                        fit : true,
                        queryParams: {
                        	moneyProject : value
        				},
        				rownumbers : true,
                        pageSize: 20,
                        pageList : [ 20, 40, 60 ],
                        title: '资金统计',
                      	toolbar : "#toolbar",
                       	columns: [[{
	       					field : 'name',
	       					title : '申请人',
	       					width : 160
	       				},{
	       					field : 'projectname',
	       					title : '项目名称',
	       					width : 160
	       				}, {
	       					field : 'time',
	       					title : '放款时间',
	       					width : 200
	       				}, {
	       					field : 'money',
	       					title : '放款金额',
	       					width : 160
	       				}, {
	       					field : 'hktime',
	       					title : '还款日期',
	       					width : 200
	       				}, {
	       					field : 'hkmoney',
	       					title : '还款金额',
	       					width : 160
	       				}, {
	       					field : 'ptmoney',
	       					title : '平台费用',
	       					width : 160
	       				}, {
	       					field : 'codename',
	       					title : '还款状态',
	       					width : 160
	       				}, {
	       					field : 'outday',
	       					title : '逾期天数',
	       					width : 160
	       				}, {
	       					field : 'outmoney',
	       					title : '逾期金额',
	       					width : 160
	       				}]]
                    });
            	}, 
            	prompt:'请输入项目名...'
            }); 
        });
        
        function searchOrder(){  
            var begindate1 = $('#begindate1').datebox('getValue');    //获取查询的起始日期  
            var enddate1 = $('#enddate1').datebox('getValue');    //获取查询的终止日期   
            $('#dg1').datagrid({
                singleSelect: true,
                method:'post',
                onLoadSuccess: compute,//加载完毕后执行计算
                url:'/p2p/queryMoneyTime.do',
                fitColumns: true,
				striped : true,
                pagination: true,
                fit : true,
				rownumbers : true,
				queryParams: {
					ti : begindate1,
					me : enddate1
				},
                pageSize: 20,
                pageList : [ 20, 40, 60 ],
                title: '资金统计',
               	toolbar : "#toolbar",
               	columns: [[{
  					field : 'name',
  					title : '申请人',
  					width : 160
  				},{
  					field : 'projectname',
  					title : '项目名称',
  					width : 160
  				}, {
  					field : 'time',
  					title : '放款时间',
  					width : 200
  				}, {
  					field : 'money',
  					title : '放款金额',
  					width : 160
  				}, {
  					field : 'hktime',
  					title : '还款日期',
  					width : 200
  				}, {
  					field : 'hkmoney',
  					title : '还款金额',
  					width : 160
  				}, {
  					field : 'ptmoney',
  					title : '平台费用',
  					width : 160
  				}, {
  					field : 'codename',
  					title : '还款状态',
  					width : 160
  				}, {
  					field : 'outday',
  					title : '逾期天数',
  					width : 160
  				}, {
  					field : 'outmoney',
  					title : '逾期金额',
  					width : 160
  				}]]
            });
        }  
    </script>
</body>
</html>