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
		    url:'/p2p/',    
		    columns:[[    
		        {field:'PROJECTNAME',title:'PROJECTNAME',width:100},    
		        {field:'PROJECTTYPE',title:'PROJECTTYPE',width:100},    
		        {field:'LOCATION',title:'LOCATION',width:100},
		        {field:'TIME',title:'TIME',width:100}, 
		        {field:'MONEY',title:'MONEY',width:100}, 
		        {field:'LIFELOAN',title:'LIFELOAN',width:100}, 
		        {field:'RATEMONEY',title:'RATEMONEY',width:100}, 
		        {field:'APPENDIX',title:'APPENDIX',width:100}
		    ]]    
		});
		
	});
</script>