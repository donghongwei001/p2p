<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
	类型编号:<input type="text" id="t1"><br/>
	名称:<input type="text" id="t2"><br/>
	<input type="button" value="submit" id="addtype" />
	
	<script type="text/javascript">

		$("#addtype").click(function(){
					var data={};
					data["id"]=$("#t1").val();
					data["name"]=$("#t2").val();
					$.ajax({
					type: "post",
					url: "/p2p/add/type.do",
					contentType :"application/json;charset=UTF-8",			
					data:JSON.stringify(data),
					success: function(data1){	
					   alert("success");
				}})  					
			})
	</script>
</body>
</html>