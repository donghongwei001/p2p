<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="../easyui/js/jquery.min.js"></script>
<script src="../easyui/js/jquery.easyui.min.js"></script>

<script src="../easyui/js/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<table id="dg">
		<tr>
			<td></td>
		</tr>
	</table>
</body>
</html>
<script type="text/javascript"> 
	$(function(){
		$('#dg').datagrid({    
		    url:'/p2p/add/user.do',    
		    columns:[[    
		        {field:'USERID',title:'USERID',width:100},    
		        {field:'USERNAME',title:'USERNAME',width:100},    
		        {field:'PWD',title:'PWD',width:100}
		    ]]    
		});
		
	});
</script>