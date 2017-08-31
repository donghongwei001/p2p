<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="../easyui/css/icon.css" />
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css" />

<script src="../easyui/js/jquery.min.js"></script>
<script src="../easyui/js/jquery.easyui.min.js"></script>

<script type="text/javascript" src="../easyui/js/easyui-lang-zh_CN.js"></script>
<style type="text/css">
body {
	
}

#dd {
	background: url("../image/17545383fc56cb4007dcc6600244967c (2).png")
		no-repeat;
}

#ss {
	color: red;
}

#shenfen {
	margin-left: 70;
	margin-top: 50;
	font-size: 20px;
}
</style>
</head>

<body>

	<div id="dd">

		<form id="form" method="post">
			<div>
				<div id="shenfen">
					<span id="ss">请选择你的身份:</span>
					<div style="margin-left:150px;">
						<input type="radio" name="name" value="1"><span id="ss">学生</span>
					</div>
					<div style="margin-left:210px;">
						<input type="radio" id="teacher" name="name" value="2" /><span
							id="ss">教师</span>
					</div>
					<div style="margin-left:270px;">
						<input type="radio" id="admin" name="name" value="3" /><span
							id="ss">管理员</span>
					</div>
					<div style="margin-left:350px;">
						<input type="radio" id="other" name="name" value="4" /><span
							id="ss">其他</span>
					</div>
				</div>
			</div>
			<br />

			<div>
				<a style="color:gray;margin-left:80px;margin-top:10px;">用户名:</a> <input
					style="width:250;height:30;" class="easyui-validatebox" type="text"
					name="username" id="username"
					data-options="required:true,validType:'username'" /><br /> <br />
				<br /> <a style="color:gray;margin-left:80px;margin-top:10px;">密码&nbsp;&nbsp;&nbsp;:</a>
				<input style="width:250;height:30;" class="easyui-validatebox"
					type="password" name="password" id="password"
					data-options="required:true,validType:'username',missingMessage:'请您输入密码'" />
			</div>

		</form>

	</div>

</body>
<script>
	$(function() {
		
		$('#dd').dialog(
						{
							title : '评教后台登录系统', //模态框标题
							width : 600, //宽度
							height : 440, //高度		
							close : false, //是否可以关闭
							top : 300, //上移100
							cache : false, //
							modal : true,//模态框 
							shadow : true,
							onOpen : function() {
								//product.init();
							},
							buttons : [{ //自带的按钮
										text : '登录',
										iconCls : 'icon-save',
										handler : function() {
											$('#form').form('submit',
															{url : "/pingjiao/login/student.do", //提交地址
																onSubmit : function() { //在提交之前执行  如果返回false  则阻止提交
																	var index = $('#shenfen input[name="name"]:checked ').val();
																	var username = $("#username").val();
																	var password = $("#password").val();
																	if (index>0&&username!=""&&password!="") {
																		return true;
																	}
																	alert("请选择您的身份和认真填写您的用户名和密码！");
																	return false;
																	
																},
																success : function(data) { //表单提交成功后执行
																alert(data);
																	if (data!="" ) { //回调函数
																		window.location="haha.jsp"; 
																		
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
						})
	})
</script>
</html>
