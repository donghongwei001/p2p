<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../easyui/css/icon.css" />
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css" />

<script src="../easyui/js/jquery.min.js"></script>
<script src="../easyui/js/jquery.easyui.min.js"></script>

<script type="text/javascript" src="../easyui/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
	${list}
</body>
<script type="text/javascript">
$(function(){
		alert("1111");
		$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
		type : "post", //请求方式
		url : "/p2p/dhw/selpro.do", //请求地址
		//data:{username:$("#sel").val()},//{nameha:$("#username").val(),passha:$("#password").val()},
		dataType : "json",
		success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
				
					alert("aaa");
			}
		})
})
	 
</script>
</html>