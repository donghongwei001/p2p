

<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;Charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">

  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="icon.css" />
<link rel="stylesheet" type="text/css" href="bootstrap/easyui.css" />
	
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.easyui.min.js"></script>
	<script src="js/easyui-lang-zh_CN.js"></script>
  </head>
  
  <body class="easyui-layout">
    <div data-options="region:'north',title:'',split:false" style="height:100px;align=:center" align="center">董宏伟</div>   
    <div data-options="region:'south',title:'',split:false" style="height:100px; line-height:100px"align="center" >本产品有QY68独家冠名</div>   
     
    <div data-options="region:'west',title:'West',split:true" style="width:200px;">
		<ul id="tt">
			
		</ul>
	</div>   
    <div id="tabinfo" class="easyui-tabs" data-options="region:'center',title:''" style="padding:5px;background:#eee;">
		
	</div>   
  </body>
  <script>
	$(function(){
		$('#tt').tree({
			url:'tree_data1.json',     	//检索远处的地址
			animate:true,				//打开关闭1是否有动画效果
			lines:true,					//是否有虚线
			onClick:function(node){		//点击事件
				var children=$('#tt').tree('getChildren',node.target);  //得到点击节点的子节点
				if (children==0) {									//如果子节点为空
					addtabs(node.text,node.attributes.url);			//执行打开函数   参数1 节点名称    参数2  请求地址
				}
				
			}
		});  
	});
	function addtabs(title,url){
		var tab=$('#tabinfo').tabs('getTab',title);					//打开函数     参数1 节点名称    参数2  请求地址
		if(tab){
			$('#tabinfo').tabs('select',title);						//如果已经打开  直接到该页面
		}else{
			$('#tabinfo').tabs('add',{    							//没有的 话  打开该页面
			title:title,    										//标题   
			content:"<iframe src="+url+" width='100%' height='100%' frameborder='0'>", 		//内容   用iframe得到远端的内容   href只能得到body的内容
			fit:true,												//自动填满
			closable:true,    										//是否能关闭
			tools:[{    											//工具栏
				iconCls:'icon-mini-refresh',    
				handler:function(){    
					alert('refresh');    
				}    
		}]    
		});  
		}
		
	};
	

</script>
  
</html>
