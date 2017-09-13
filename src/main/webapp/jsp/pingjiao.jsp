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
     <div class="input-group " >
				<span class="input-group-addon">项目图片</span> 
				<div id="photo" >
				  <div id="preview" >
                     <img id="imghead" width=100 height=100 border=0 src=''/>                 
                  </div>
				  <input id="itemPhoto" type="file" name="file" class="form-control"/>
			    </div>
			</div>  
  </body>
  <script type="text/javascript">
  	$(function(){
  	//图片上传预览    IE是用了滤镜。
  	alert("1111");
  		$("#itemPhoto").change(function(){
  			alert(this.files);
  			var MAXWIDTH  = 260; 
  			var MAXHEIGHT = 180;
  			var div = document.getElementById('preview');
  			alert("1212");
  			alert(this.files);
  			if (this.files && this.files[0])
  			{
  				div.innerHTML ='<img id=imghead>';
  				var img = document.getElementById('imghead');
  				img.onload = function(){
  					var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
  					img.width  =  rect.width;
  					img.height =  rect.height;
					img.style.marginLeft = rect.left+'px';
  					img.style.marginTop = rect.top+'px';
  				}
  				var reader = new FileReader();
  				reader.onload = function(evt){img.src = evt.target.result;}
  				reader.readAsDataURL(this.files[0]);
  			}
  			else //兼容IE
  			{
  				var sFilter='filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
  				this.select();
  				var src = document.selection.createRange().text;
  				div.innerHTML = '<img id=imghead>';
  				var img = document.getElementById('imghead');
  				img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
  				var rect = clacImgZoomParam(MAXWIDTH, MAXHEIGHT, img.offsetWidth, img.offsetHeight);
  				status =('rect:'+rect.top+','+rect.left+','+rect.width+','+rect.height);
  				div.innerHTML = "<div id=divhead style='width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;"+sFilter+src+"\"'></div>";
  			}
  		
  		function clacImgZoomParam( maxWidth, maxHeight, width, height ){
  			var param = {top:0, left:0, width:width, height:height};
  			if( width>maxWidth || height>maxHeight )
  			{
  				rateWidth = width / maxWidth;
  				rateHeight = height / maxHeight;

  				if( rateWidth > rateHeight )
  				{
  					param.width =  maxWidth;
  					param.height = Math.round(height / rateWidth);
  				}else
  				{
  					param.width = Math.round(width / rateHeight);
  					param.height = maxHeight;
  				}
  			}

  			param.left = Math.round((maxWidth - param.width) / 2);
  			param.top = Math.round((maxHeight - param.height) / 2);
  			return param;
  		} 
  		
  	});
  	});	
  </script>
</html>
