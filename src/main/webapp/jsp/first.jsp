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

	<table id="proDataGrid">
	
		<c:forEach items="${lm }" var="m">
			<tr>
			<td><input type="text" size="5" name="xmid"
				style="border:0px;background:rgba(0, 0, 0, 0);"
				value="${m.projectid}"></td>
				<td>${m.projectname}</td>
				<td>${m.firststatus }</td>
				<td>${m.firstdate }</td>
				<td>${m.firstname }</td>
				<td>${m.firstremarks }</td>
				<td><input type="radio" value="1" name="xmstates" />同意
				<input type="radio" value="0" name="xmstates" />拒绝</td>
				<td><input type="text" id="people"></td>
				<td><textarea name="note" cols=15 rows=1 id="reason"></textarea></td>
		<!-- 		<td><input type="radio" value="1" name="lstates" />可发布
				<input type="radio" value="0" name="lstates" />待发布</td> -->
				<td><button type="button" value="submit" class="btn default btn-xs" id="addsecond">审核</button></td>
				<td><input type="button" value="详情" class="btn default btn-xs" id="selxm"></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>
<script type="text/javascript">
$(function(){
	$('#proDataGrid').datagrid({
	url : 'http://localhost:9088/p2p/yx/first.do',
	// data:data,
	fitColumns : true,//自动适应网格宽度
	striped : true,//显示斑马线
	//idField : "projectid",//设置productid为主键
	loadMsg : "努力加载中......",//加载慢的时候提示信息
	fit : true,//
	rownumbers : true,
	singleSelect : false,
	pagination : true,
	pageSize : 20,
	pageList : [ 20, 40, 60 ],
	toolbar : "#toolbar",

	columns : [ [

	{
		field : 'PROJECTID',
		title : '项目ID',
		width : 50,
		
	}, {
		field : 'PROJECTNAME',
		title : '项目名称',
		width : 100
	}, {
		field : 'FIRSTSTATUS',
		title : '初审状态',
		width : 80
	},{
		field : 'FIRSTDATE',
		title : '初审时间',
		width : 120
	},{
		field : 'FIRSTNAME',
		title : '初次审核人',
		width : 100
	},{
		field : 'FIRSTREMARKS',
		title : '审核部意见',
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
		title : '原因',
		width : 100
	},{
		field : 'second',
		title : '操作',
		width : 100
	},{
		field : 'xmx',
		title : '项目详情',
		width : 100
	}] ]
});
	
	$("#addsecond").click(function(){
		alert("22222222");
		var data={};
		data["projectid"]=$('input[name="xmid"]').val();
		data["finalstatus"]=$("input[name='xmstates']:checked").val();
		data["finalname"]=$("#people").val();
		data["finalremarks"]=$("#reason").val();
		//data["poststatus"]=$("input[name='lstates']:checked").val();
		alert(data.finalname);
		alert(data.finalremarks);
		$.ajax({
			type : "post",
			url : "/p2p/first/director.do",
			contentType :"application/json;charset=UTF-8",
			data:JSON.stringify(data),
			success : function(data1){
				if(data1=="right"){
					var data={};
					data["projectid"]=$('input[name="xmid"]').val();
					$.ajax({
						type : "post",
						url : "/p2p/first/updatefinal.do",
						contentType :"application/json;charset=UTF-8",
						data:JSON.stringify(data),
						success : function(data2){
							if(data2=="ok"){
								 window.location.href="http://localhost:9088/p2p/yx/chushe.do"
							}
						}
					})
				}
			}
		});
		
	});
	
	 $("#selxm").click(function(){
		var data={};
		data["projectid"]=$('input[name="xmid"]').val();
		alert(data.projectid);
		
		$.ajax({
			type : "post",
			url : "/p2p/yx/xiang.do",
			contentType : "application/json;charset=utf-8",
			data : $('input[name="xmid"]').val(),
			success : function(data1){
				alert(ok);
			}
		});
	});
	
	
	
});
</script>