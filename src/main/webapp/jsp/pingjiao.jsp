<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'pingjiao.jsp' starting page</title>
    
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
  </head>
  
  <body>
   <div id="dd">
   		
   </div>  
   
  </body>
  <script type="text/javascript">
  	$(function(){
  		$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
					type : "post", //请求方式
					url : "/pingjiao/ping/shijian.do", //请求地址
					//data:{username:$("#sel").val()},//{nameha:$("#username").val(),passha:$("#password").val()},
					dataType : "json",
					success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
						if (data!="") {
							for ( var row in data) {
								alert(row.TEACHERNAME);
							}
							$('#dd').dialog(
						{
							title : '评教选择系统', //模态框标题
							width : 600, //宽度
							height : 200, //高度		
							close : false, //是否可以关闭
							top : 200, //上移100
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
						}else{
							alert("现时间内没有可以评教内容！")
						}			
					}
			});
  		
  	})
  	
  </script>
</html>
