<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="../easyui/js/jquery.min.js"></script>
<script src="../easyui/js/jquery.easyui.min.js"></script>

<script src="../easyui/js/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="../easyui/css/icon.css" />
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css" />
</head>
<style>
	#ssdd{
		width:100%;
		height:100%;
	}
</style>
<body>
	
		<a id="btn" href="#">禁用</a>  <a id="btna" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">启用</a>  
		 
		<table id="dg" >	</table>
	
</body>
</html>
<script type="text/javascript"> 
	$(function(){
		$('#btn').linkbutton({    
		    iconCls: 'icon-no'   
		}); 
		
		
		
		$('#dg').datagrid({    
		    url:'/p2p/add/user.do',   
		    columns:[[    
		              {field:'',title:'',width:100,checkbox:true}, 
		        {field:'USERNAME',title:'用户名',width:100},    
		        {field:'PWD',title:'密码',width:100},
		        {field:'STATE',title:'是否禁用',width:100}
		    ]]  ,
		    striped:true, //斑马线
		    fit :true,
			pagination:true, //分页
			pageSize:5,
			fitColumns : true,
			pageList:[5,10,15,20],
			pagePosition : "top",
			showFooter:true ,  //行脚
			rownumbers:true   //行号

		    
		});
		
		 $('#btn').bind('click', function(){   
			 var row=$('#dg').datagrid('getChecked');
			 var str="";
			 $.each(row,function(i){
				 
				 str=str+row[i].USERNAME+",";
			 });
			 var i=0;
			 var str1="";
			for(i;i<str.length-1;i++){
				str1=str1+str[i];
			}
			// 循环组装："tom,zhangsan"
			 $.ajax({
				 type:"post",
				// dataType:"json",
				 url:"/p2p/add/disable.do",
				// data:JSON.stringify(row),
				data:str1,
				 contentType:"application/json;charset=utf-8",
				 success:function(dataa){
					 alert(dataa);
				 }
			 });
			
			 $('#dg').datagrid('reload',row);
		    }); 
		 
		 $('#btna').bind('click', function(){   
			 var row=$('#dg').datagrid('getChecked');
			 var str="";
			 $.each(row,function(i){
				 
				 str=str+row[i].USERNAME+",";
			 });
			 var i=0;
			 var str1="";
			for(i;i<str.length-1;i++){
				str1=str1+str[i];
			}
			// 循环组装："tom,zhangsan"
			 $.ajax({
				 type:"post",
				// dataType:"json",
				 url:"/p2p/add/start.do",
				// data:JSON.stringify(row),
				data:str1,
				 contentType:"application/json;charset=utf-8",
				 success:function(dataa){
					 alert(dataa);
				 }
			 });
			
			 $('#dg').datagrid('reload',row);
		    });
	});
</script>