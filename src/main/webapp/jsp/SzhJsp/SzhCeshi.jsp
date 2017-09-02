<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>增加用户</title>

<script src="../easyui/js/jquery.min.js"></script>

</head>
<body>
		用户编号：<input id="a1"/><br>
  		用户名称：<input id="a2"/><br>
  		用户密码：<input id="a3"/><br>
  		账户余额：<input id="a4"/><br>
  		<button id="b1">确定</button>
  		
  		<script>
	  		$("#b1").click(function(){
					var data={};
					data["userID"]=$("#a1").val();
					data["username"]=$("#a2").val();
					data["pwd"]=$("#a3").val();
					data["money"]=$("#a4").val();
					$.ajax({
					type: "post",
					url: "http://localhost:9088/p2p/addUser.do",
					contentType :"application/json;charset=UTF-8",			
					data:JSON.stringify(data),
					success: function(data1){	
					   window.location.href="http://localhost:9088/p2p/queryUser.do"
				}})  		 			
			})	
  		</script>
</body>
</html>