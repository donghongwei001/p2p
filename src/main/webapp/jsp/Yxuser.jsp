<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="../easyui/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="../easyui/css/icon.css" />
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css" />

<script src="../easyui/js/jquery.min.js"></script>
<script src="../easyui/js/jquery.easyui.min.js"></script>

<script type="text/javascript" src="../easyui/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
		<table id="proDataGrid"> 
		<c:forEach items="${llm }" var="li">
			<tr>
				<td>${li.PERSONALNAME }</td>
				<td>${li.IDCARD}</td>
				<td>${li.IPHONE}</td>
				<%-- <td>${li.ACCOUNTNUMBER }</td> --%>
				<td>${li.MAILBOX }</td>
				<td>${li.MARRIAGE}</td>
				<td>${li.HAVACHIDREN }</td>
				<td>${li.ADDRESS}</td>
				<%-- <td>${li.HOMEPHONE}</td> --%>
				<td>${li.WORKLIFE}</td>
				<td>${li.OCCUPATION}</td>
				<td>${li.WORKUNIT}</td>
				<%-- <td>${li.UNITPROPERTIES}</td> --%>
				<td>${li.UNITPHONE}</td>
				<td>${li.MONTHLYINCOME}</td>
				<td>${li.HAVEROOM}</td>
				<td>${li.HOUSELOAN }</td>
				<td>${li.HAVECAR }</td>
				<td>${li.CARLOAN }</td>
				<td>${li.CONTACTNAME }</td>
				<td>${li.CONTACTRELATION }</td>
				<td>${li.CONTACTPHONE }</td>
			</tr>
			
		</c:forEach>
		<tr><td><a href="http://localhost:9088/p2p/yx/first.do" style="font-size:14px;color:red">返回上页面</a></td></tr>
	</table>
	<table id="dg">
		<tr>
			<td></td>
		</tr>
		
	</table>
</body>
</html>
<script type="text/javascript">
$(function(){
	$('#proDataGrid').datagrid({
	url : 'http://localhost:9088/p2p/yx/onex.do',
	fitColumns : true,//自动适应网格宽度
	striped : true,//显示斑马线
	loadMsg : "努力加载中......",//加载慢的时候提示信息
	fit : true,//
	rownumbers : true,
	singleSelect : false,
	pagination : true,
	pageSize : 20,
	pageList : [ 20, 40, 60 ],
	toolbar : "#toolbar",

	columns : [ [{
		field : 'PERSONALNAME',
		title : '用户名',
		width : 70,
		
	},{
		field : 'IDCARD',
		title : '身份证号',
		width : 200
	}, {
		field : 'IPHONE',
		title : '手机号',
		width : 150
	},{
		field : 'MAILBOX',
		title : '联系邮箱',
		width : 200
	},{
		field : 'MARRIAGE',
		title : '是否结婚',
		width : 80
	},{
		field : 'HAVACHILDREN',
		title : '有无子女',
		width : 80
	},{
		field : 'ADDRESS',
		title : '家庭地址',
		width : 150
	},{
		field : 'WORKLIFE',
		title : '工作年限',
		width : 80
	},{
		field : 'OCCUPATION',
		title : '职业',
		width : 80
	},{
		field : 'WORKUNIT',
		title : '工作单位',
		width : 150
	},{
		field : 'UNITPHONE',
		title : '单位电话',
		width : 130
	},{
		field : 'MONTHLYINCOME',
		title : '月收入',
		width : 80
	},{
		field : 'HAVEROOM',
		title : '是否有房',
		width : 80
	},{
		field : 'HOUSELOAN',
		title : '有无房贷',
		width : 80
	},{
		field : 'HAVECAR',
		title : '是否有车',
		width : 80
	},{
		field : 'CARLOAN',
		title : '有无车贷',
		width : 80
	},{
		field : 'CONTACTNAME',
		title : '亲属姓名',
		width : 80
	},{
		field : 'CONTACTRELATION',
		title : '亲属关系',
		width : 80
	},{
		field : 'CONTACTPHONE',
		title : '亲属电话',
		width : 150
	}] ]
});
});
</script>