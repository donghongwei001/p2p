<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<table id="proDataGrid">
		<!-- <tr>
			<td>用户</td>
			<td>项目名称</td>
			<td>项目类型</td>
			<td>项目地点</td>
			<td>申请时间</td>
			<td>金额</td>
			<td>借款期限</td>
			<td>利率</td>
			<td>附件</td>
			<td>审核状态</td>
		</tr> -->
		<c:forEach items="${ly}" var="l">
			<tr>
				<td><input type="text" size="5" name="id"
					style="border: 0px; background: rgba(0, 0, 0, 0);" value="${l.id }"></td>
				<td>${l.userid}</td>
				<%-- <td>${l.username }</td> --%>
				<td>${l.projectname }</td>
				<td>${l.projecttype }</td>
				<td>${l.location }</td>
				<td>${l.time }</td>
				<td>${l.money }</td>
				<td>${l.lifeloan }</td>
				<td>${l.ratemoney }</td>
			<%-- 	<td>${l.appendix }</td> --%>
				<td>${l.aduitstate }</td>
				<td><input type="radio" value="1" name="xm_states" />同意 <input
					type="radio" value="0" name="xm_states" />拒绝</td>
				<td><input type="text" id="person"></td>
				<td><textarea name="note" cols=15 rows=1 id="reason"></textarea></td>

				<td><button type="button" value="submit"
						class="btn default btn-xs" id="addfirst">审核</button></td>
				<td><a href="http://localhost:9088/p2p/yx/onex.do?userid=${l.userid}"style="font-size:16px;color:red">查看用户信息</a></td>
			</tr>
		</c:forEach>
	</table>

	<script type="text/javascript">
		$(function(){
	$('#proDataGrid').datagrid({
	url : 'http://localhost:9088/p2p/yx/first.do',
	// data:data,
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
		field : 'id',
		title : '项目序号',
		width : 60
	},{
		field : 'userid',
		title : '用户id',
		width : 50
	}, {
		field : 'projectname',
		title : '项目名称',
		width : 80
	} ,{
		field : 'projecttype',
		title : '项目类型',
		width : 60,
		align : 'right'
	}, {
		field : 'location',
		title : '项目地点',
		width : 200
	}, {
		field : 'time',
		title : '申请时间',
		width : 100
	}, {
		field : 'money',
		title : '金额',
		width : 100
	}, {
		field : 'lifeloan',
		title : '借款期限',
		width : 100
	},{
		field : 'ratemoney',
		title : '利率',
		width : 50
	},{
		field : 'appendix',
		title : '附件',
		width : 200
	},{
		field : 'xm_states',
		title : '是否通过',
		width : 120
	},{
		field : 'person',
		title : '审核人',
		width : 100
	},{
		field : 'reason',
		title : '意见',
		width : 100
	},{
		field : 'first',
		title : '操作',
		width : 60
	},{
		field : 'user',
		title : '申请人详情',
		width : 100
	}] ]
});
	$("#addfirst").click(function(){
		alert("111111");
		var data={};
		data["projectid"]=$('input[name="id"]').val();
		data["firststatus"]=$("input[name='xm_states']:checked").val();
		data["firstname"]=$("#person").val();
		data["firstremarks"]=$("#reason").val();
		alert(data.firstname);
		alert(data.firstremarks);
		$.ajax({
			type : "post",
			url : "/p2p/first/shenhe.do",
			contentType :"application/json;charset=UTF-8",
			data:JSON.stringify(data),
			success : function(data1){
				alert("2222222222");
				if(data1=="success"){
					var data={};
					data["id"]=$('input[name="id"]').val();
					$.ajax({
						type : "post",
						url : "/p2p/first/updatestatus.do",
						contentType :"application/json;charset=UTF-8",
						data:JSON.stringify(data),
						success : function(data2){
							if(data2=="ture"){
								 window.location.href="http://localhost:9088/p2p/yx/first.do"
							}
					}
						})
				}
			}
		});
		
	});
		});
		
	</script>
</body>
</html>
