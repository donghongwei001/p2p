<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
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
     <input type="text" id="index"/>
     <input type="button" value="22222" id="aa"/>
  </body>
  <script type="text/javascript">
  	$(function(){
  		$("#aa").click(function(){
  			var index=$("#index").val();
  			var j = parseInt(index)
  			if (j<100) {
  				$("#index").val("100");
			}
  			if (j>10000) {
  				$("#index").val("10000")
			}
  		})
  	
  	});	
  </script>
</html>
