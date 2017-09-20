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
		<a id="finalselect"
			href="javascript:void(0)" class="easyui-linkbutton"
			data-options="iconCls:'icon-add'">查看详情</a>
</div>
	<table id="proDataGrid">

	</table>
<div id="dialog">
			<form id="myform" method="post">
			<table with="100%" class="formtable">
				<tr>
					<th height="28">用户名:</th>
					<td><input id="username1" name="username"
						class="easyui-validatebox"style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">项目名称:</th>
					<td><input id="projectname1" name="projectname"
						class="easyui-validatebox"style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">项目类型:</th>
					<td><input id="name1" name="name"
						class="easyui-validatebox"style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">项目地点:</th>
					<td><input id="location1" name="location"
						class="easyui-validatebox"style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">申请时间:</th>
					<td><input id="time1" name="time"
						class="easyui-validatebox"style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				
				<tr>
					<th height="28">金额:</th>
					<td><input id="money1" name="money"
						class="easyui-validatebox"style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">借款期限:</th>
					<td><input id="lifeloan1" name="lifeloan"
						class="easyui-validatebox"style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">附件:</th>
					<td><input id="appendix1" name="appendix"
						class="easyui-validatebox"style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				
				<tr>
					<th height="28">个人姓名:</th>
					<td><input id="personalname1" name="personalname"
						class="easyui-validatebox"style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">身份证号:</th>
					<td><input id="idcard1" name="idcard"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">手机号码:</th>
					<td><input id="iphone1" name="iphone"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">联系邮箱:</th>
					<td><input id="mailbox1" name="mailbox"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">是否已婚:</th>
					<td><input id="marriage1" name="marriage"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">是否有子女:</th>
					<td><input id="havachidren1" name="havachidren"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">家庭地址:</th>
					<td><input id="address1" name="address"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">工作年限:</th>
					<td><input id="worklife1" name="worklife"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">职业:</th>
					<td><input id="occupation1" name="occupation"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">工作单位:</th>
					<td><input id="workunit1" name="workunit"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">单位电话:</th>
					<td><input id="unitphone1" name="unitphone"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">月收入:</th>
					<td><input id="monthlyincome1" name="monthlyincome"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">是否有房:</th>
					<td><input id="haveroom1" name="haveroom"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">有无房贷:</th>
					<td><input id="houseloan1" name="houseloan"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">是否有车:</th>
					<td><input id="havecar1" name="havecar"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">有无车贷:</th>
					<td><input id="carloan1" name="carloan"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">亲属姓名:</th>
					<td><input id="contactname1" name="contactname"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">亲属关系:</th>
					<td><input id="contactrelation1" name="contactrelation"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
					<th height="28">亲属电话:</th>
					<td><input id="contactphone1" name="contactphone1"
						class="easyui-validatebox" style="border:0px;background:rgba(0, 0, 0, 0);"></td>
				</tr>
				<tr>
				<th height="28">是否通过:</th>
				<td><input type="radio" value="1" name="xmstates" />同意
				<input type="radio" value="0" name="xmstates" />拒绝</td>
				</tr>
				<tr>
				<th height="28">意见:</th>
				<td><textarea name="reason" cols=25 rows=5 id="reason"></textarea></td>
				</tr>
			</table>
		</form>	
	</div>
</body>
</html>
<script type="text/javascript">
$(function(){
	
	$('#proDataGrid').datagrid({
	url : 'http://localhost:9088/p2p/yx/chushe.do',
	// data:data,
	fitColumns : true,//自动适应网格宽度
	striped : true,//显示斑马线
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
		title : '项目序号',
		width : 60,
		align : 'center'
	}, {
		field : 'PROJECTNAME',
		title : '项目名称',
		width : 80,
		align : 'center'
	} , {
		field : 'time1',
		title : '审核时间',
		width : 200,
		align : 'center'
	}, {
		field : 'FIRSTNAME',
		title : '审核人',
		width : 100,
		align : 'center'
	}, {
		field : 'FIRSTREMARKS',
		title : '初审意见',
		width : 100,
		align : 'center'
	}] ]
});

	
	
	$("#finalselect").click(function() {
		var row = $('#proDataGrid').datagrid("getSelections");
		if (row.length==1) {
			var index=row[0].PROJECTID;
		$('#dialog')
		.dialog(
				{
					title : '我的模态框', //模态框标题
					width : 600, //宽度
					height : 680, //高度	
					left : 400,
					close : true, //是否可以关闭
					closable:false,
					top : 0, //上移100
					cache : false, //
					modal : true,//模态框 
					onOpen : function() {
						$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
							type : "post", //请求方式
							url : "/p2p/yx/xiang.do", //请求地址
							data : {
								id : index
							},//{nameha:$("#username").val(),passha:$("#password").val()},
							dataType : "json",
							success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
								var jsonObj = eval(data);
								$.each(jsonObj, function(i, a) {
									$("#username1").val(a.USERNAME);
									$("#projectname1").val(a.PROJECTNAME);
									$("#name1").val(a.NAME);
									$("#location1").val(a.LOCATION);
									$("#time1").val(a.TIME);
									$("#money1").val(a.MONEY);
									$("#lifeloan1").val(a.LIFELOAN);
									$("#appendix1").val(a.APPENDIX);
									$("#personalname1").val(a.PERSONALNAME);
									$("#idcard1").val(a.IDCARD);
									$("#iphone1").val(a.IPHONE);
									$("#mailbox1").val(a.MAILBOX);
									$("#marriage1").val(a.MARRIAGE);
									$("#havachidren1").val(a.HAVACHIDREN);
									$("#address1").val(a.ADDRESS);
									$("#worklife1").val(a.WORKLIFE);
									$("#occupation1").val(a.OCCUPATION);
									$("#workunit1").val(a.WORKUNIT);
									$("#unitphone1").val(a.UNITPHONE);
									$("#monthlyincome1").val(a.MONTHLYINCOME);
									$("#haveroom1").val(a.HAVEROOM);
									$("#houseloan1").val(a.HOUSELOAN);
									$("#havecar1").val(a.HAVECAR);
									$("#carloan1").val(a.CARLOAN);
									$("#contactname1").val(a.CONTACTNAME);
									$("#contactrelation1").val(a.CONTACTRELATION);
									$("#contactphone1").val(a.CONTACTPHONE);
									
									//$("#myform :input").attr("readonly", "readonly"); //对form里面的禁用
									$("input").attr("readonly", "readonly"); //对所有的input标签禁用
								})
							}
						})
					},
					buttons : [
							{ //自带的按钮 
								text : '审核',
								iconCls : 'icon-save',
								handler : function() {
									var row = $('#proDataGrid').datagrid("getSelections");
									var data={};
									data["projectid"]=row[0].PROJECTID;
									data["finalstatus"]=$("input[name='xmstates']:checked").val();
									data["finalremarks"]=$("#reason").val(); 
									data["tworeason"]=$("#reason").val(); 
									if(data.finalstatus=='1'){
									$.ajax({
										type : "post",
										url : "/p2p/first/director.do",
										contentType :"application/json;charset=UTF-8",
										data:JSON.stringify(data),
										success : function(data1){
										
												alert("审核完成");
												 window.location.href="http://localhost:9088/p2p/jsp/first.jsp"
										
										}
									});
									}else{
										$.ajax({
											type : "post",
											url : "/p2p/first/twofailed.do",
											contentType :"application/json;charset=UTF-8",
											data:JSON.stringify(data),
											success : function(data3){
												
													alert("审核完成");
													window.location.href="http://localhost:9088/p2p/jsp/first.jsp"
													
											}
										});
									}
								}
							},{text : '关闭',
								handler : function() {
									alert("你确定取消吗？");
									$('#dialog').dialog("close");
									window.location.reload();
								}
							} ]
				})
		
		}else{
			alert("请选择一条数据");
		}
	});
$('#dialog').dialog("close");
	
});
</script>