<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
 	
    <!-- Bootstrap core CSS -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script>window.jQuery || document.write('<script src="js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../easyui/js/jquery.min.js"></script> 
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    
    <script src="../bootstrap/js/shengshijilian/distpicker.data.js"></script>
	<script src="../bootstrap/js/shengshijilian/distpicker.js"></script>
	<script src="../bootstrap/js/shengshijilian/main.js"></script>
	
	<style type="text/css">
		body{/* background-color:#F5F5F5; */}
		#body{width:100%;height:auto;}
		#top{width:76%;height:auto;align:center;margin-left:11%;float:left;}
		#top-img{float:left;}
		#top-menu{float:left;margin-top:3.5%;margin-left:40px;}
		#top-menu a{text-decoration:none;color:black;font-size:18px;}
		#top-menu a:hover{color:#00BFFF;}
		#asd{font-size:18px;}
		#top-login{float:right;margin-top:3.5%;margin-left:50px;font-size:18px;}
		#img{width:100%;height:auto;/* background-image:url(../image/img6.png) none; */}
		#content{width:76%;float:left;margin-left:22%;margin-top:20px;}	
		#address{width:100%;height:30px;float:left;background-color:#87BCEE;}
		#address-text{width:76%;font-size:17px;float:left;margin-left:12%;margin-top:0px;}
		#down{width:100%;border-top:1px solid #DCDCDC;float:left;margin-top:20px;}
		#down-one{margin-left:35.5%;margin-top:20px;}
		#down-two{margin-left:37.3%;}
		#down-three{margin-left:41%;margin-bottom:20px;}
		#input-btu{margin-left:250px;}
		#s1,#s2,#s3{
			float:left;
			width:33.3%;
		}
		#ddin{
			width:auto;
			border:1px solid red;
		}
		#content{
			float:left;
			
			width:600px;
		}
		#disc{
			
			width:400px;
			height:500px;
			float:left;
			
		}
	</style>
	
	
</head>
<body>

	<div id="body">
		<div id="top">
			<div id="top-img">
				<img src="../image/top.PNG" />
			</div>			
			<div id="top-menu">
				<a href="/p2p/user/listpro.do">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="/p2p/user/listtouzi.do">我要投资</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span id="asd">我要借款&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<a href="/p2p/user/zxlpersonal.do">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;			
			</div>
			<div id="top-login">										
				欢迎<a href="/p2p/user/zxlpersonal.do">${abcd}</a>!加入宜人贷&nbsp;&nbsp;&nbsp;&nbsp;
				<a>帮助</a><span>|</span><a href="/p2p/jsp/Home.jsp">退出</a>
			</div>
		</div>
		
		<div id="address">
			<div id="address-text">
				<span>首页<span></span>我要投资</span>
			</div>
		</div>
			
		<div id="content">
			<form class="form-horizontal" name="myform" action="/p2p/add/project.do" method="post" enctype="multipart/form-data" onsubmit="return check(this)">
				<div class="form-group">
					<label for="inputEmail3" style="font-size:16px;" class="col-sm-2 control-label">项目名称</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="ptojectname" name="projectname"><span id="absf"></span>
					</div>
					
				 </div>
				 <div class="form-group">
					<label for="input3" style="font-size:16px;" class="col-sm-2 control-label">项目类型</label>
					<div class="col-sm-9">
						<select class="form-control" name="projecttype" >
							<option   value=1>建筑</option>
							<option   value=2>科学</option>
							<option   value=3>医药</option>
							<option   value=4>金融</option>
						</select>
					</div>
				 </div>
				 <div class="form-group">
					<label for="inputE" style="font-size:16px;" class="col-sm-2 control-label">项目地点</label>
					<div class="col-sm-9" >
						 <div id="distpicker2">
							  <select name="location1" class="form-control "  id="s1"></select>
							  <select name="location2" class="form-control" id="s2"></select>
							  <select name="location3" class="form-control" id="s3" ></select>
						</div>
						
					</div>
				 </div>
				
				 <div class="form-group">
				 	<label for="inputEm" style="font-size:16px;" class="col-sm-2 control-label">申请金额</label>
				 <div class="col-lg-9">
					    <div class="input-group">
					      <input type="text" class="form-control" name="money"  id="mmmoney" placeholder="例如：10000" onkeyup="this.value=this.value.replace(/[^0-9-]+/,'');">
					      <span class="input-group-btn">
					        <button class="btn btn-default"   type="button">元</button>
					      </span><br/>
					     
					    </div><!-- /input-group -->
					    <div><span id="sp"></span></div> 
 				 </div>
				 </div>
				 
				 
				 
				 <div class="form-group">
					<label for="input2" style="font-size:16px;" class="col-sm-2 control-label">借款期限</label>
					<div class="col-sm-9">
						
						<select class="form-control" id="life" name="lifeloan" >
							<option   value=6>6个月</option>
							<option   value=12>12个月</option>
							<option   value=12>18个月</option>
							<option   value=24>24个月</option>
						</select>
					</div>
				 </div>
				 <div class="form-group">
					<label for="input2" style="font-size:16px;" class="col-sm-2 control-label">月利率</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="rateee" name="ratemoney" placeholder="例如：0.001" ><span id="vvi"></span>
					</div>
				 </div>
				
				 
				 <div class="form-group">
					<label for="inputEmail3" style="font-size:16px;" class="col-sm-2 control-label">附件</label>
					<div class="input-group " >
				
				<div id="photo" >
				  <div id="preview" >
                     <img id="imghead" width=100 height=100 border=0 src=''/>                 
                  </div>
				  <input id="itemPhoto" type="file" name="file" class="form-control"/>
			    </div>
			</div>
				 </div>	
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input class="btn btn-info" type="submit" value="完成申请"/>
			</form>			
		</div>
		<div id="disc">
			<table id="ttb">
			
			</table>
		</div>
		
		<div id="down">
			<div id="down-one">
				<span>联系我们</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;				
				<span>关于我们</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span>入驻我们</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span>联系电话：1234567</span>
			</div>
			<div id="down-two">
				<span>网贷有风险，出借需谨慎；期待回报不等于实际收益</span>
			</div>
			<div id="down-three">
				<span>版权所有@2017-08-31第七组成员</span>
			</div>
		</div>
	</div>	

	
</body>
</html>

<script>
function check(){
	var pp=$("#ptojectname").val();
	var asd=$("#absf");
	var qwe= /[\u4e00-\u9fa5]/;
	asd.empty();
	if(pp==""||pp==null){
		asd.html("项目不能为空");
		asd.css("color","red");
		return false;
	}else{ 
		if(!qwe.test(pp)){
		asd.html("只能输入汉字");
		asd.css("color","red");
		return false;
	}
	}
	
	var mm=$("#mmmoney").val();
	var sp=$("#sp");
	var rate=$("#rateee").val();
	var life=$("#life").val();
	var reg=/^[0-9]*$/;
	sp.empty();
	if(mm==""||mm==null){
		sp.html("不能为空");
		sp.css("color","red");
		return false;
	}else{
	if(!reg.test(mm)){
		sp.html("请输入正整数");
		sp.css("color","red");
		return false;
	}else{
		if(mm<0){
			sp.html("请输入大于零的整数");
			return false;
		}else{
			if(mm>1000000){
				sp.html("最大申请额度为1000000元");
				sp.css("color","red");
				return false;
			}
		}
	}
	}
	
	
	var rate=$("#rateee").val();
	var life=$("#life").val();
	var mmoney=$("#mmmoney").val();
	$("#vvi").empty();
	if(rate==null||rate==""){
		$("#vvi").html("月利率不能为空");
		$("#vvi").css("color","red");
		return false;
	}else{
		if(parseFloat(rate)>1){
			$("#vvi").html("利率太大啦");
			return false;
		}else{
			if(rate==null||rate==""||life==null||life==""||mmmoney==null||mmmoney==""){
				return false;
			}
		}
	}

	

	
}
$("#ptojectname").blur(function(){
	
	var pp=$("#ptojectname").val();
	var asd=$("#absf");
	var qwe= /[\u4e00-\u9fa5]/;
	asd.empty();
	if(pp==""||pp==null){
		asd.html("项目不能为空");
		asd.css("color","red");
	}else{ 
		if(!qwe.test(pp)){
		asd.html("只能输入汉字");
		asd.css("color","red");
	}
	}
});

$("#rateee").blur(function(){
	var rate=$("#rateee").val();
	var life=$("#life").val();
	var mmoney=$("#mmmoney").val();
	$("#vvi").empty();
	if(rate==null||rate==""){
		$("#vvi").html("月利率不能为空");
		$("#vvi").css("color","red");
		return false;
	}else{
		if(parseFloat(rate)>=1){
			$("#vvi").html("利率太大啦");
			$("#vvi").css("color","red");
			return false;
		}else{
			if(rate==null||rate==""||life==null||life==""||mmmoney==null||mmmoney==""){
				return false;
			}else{
				var data={};
				data["rate"]=rate;
				data["life"]=life;
				data["mmoney"]=mmoney;
				$.ajax({
					type:"post",
					url:"/p2p/zkj/capital.do",
					contentType:"application/json;charset=utf-8",
					data:JSON.stringify(data),
					success :function(dataa){
						$("#ttb").empty();
						$("#ttb").append("<tr><td><h3>到期还款计划</h3></td></tr>");
						$("#ttb").append("<tr><td><h3>本金为："+mmoney+"元</h3></td></tr>");
						/* $("#ttb").append("<tr><td><h3>每月还款:"+dataa[0]+"元</h3></td></tr>"); */
						$("#ttb").append("<tr><td><h3>总利息为："+/* (dataa[2]-mmoney).toFixed(2) */dataa[0]+"元</h3></td></tr>");
						$("#ttb").append("<tr><td><h3>本息总共："+dataa[2]+"元</h3></td></tr>");
						$("#ttb").append("<tr><td><h3>手续费为："+dataa[1]+"元</h3></td></tr>");
						$("#ttb").append("<tr><td>温馨提示：计算结果仅为试算，实际费率结果以还款计划为准！</td></tr>");
					}
					
				});
			}
		}
	}
	
	
});

$("#distpicker2").distpicker({
	  province: "---- 所在省 ----",
	  city: "---- 所在市 ----",
	  district: "---- 所在区 ----"
	});
	
	
	$("#mmmoney").blur(function(){
		var mm=$("#mmmoney").val();
		var sp=$("#sp");
		var rate=$("#rateee").val();
		var life=$("#life").val();
		var reg=/^[0-9]*$/;
		sp.empty();
		if(mm==""||mm==null){
			sp.html("不能为空");
			sp.css("color","red");
			return false;
		}else{
		if(!reg.test(mm)){
			sp.html("请输入正整数");
			sp.css("color","red");
			return false;
		}else{
			if(mm<0){
				sp.html("请输入大于零的整数");
				return false;
			}else{
				if(mm>1000000){
					sp.html("最大申请额度为1000000元");
					sp.css("color","red");
					return false;
				}else{
					if(rate!=null&&rate!=""&&life!=null&&life!=""&&mm!=null&&mm!=""){
						var data={};
						data["rate"]=rate;
						data["life"]=life;
						data["mmoney"]=mm;
						
						$.ajax({
							type:"post",
							url:"/p2p/zkj/capital.do",
							contentType:"application/json;charset=utf-8",
							data:JSON.stringify(data),
							success :function(dataa){
								$("#ttb").empty();
								$("#ttb").append("<tr><td><h3>到期还款计划</h3></td></tr>");
								$("#ttb").append("<tr><td><h3>本金为："+mm+"元</h3></td></tr>");
								$("#ttb").append("<tr><td><h3>每月还款:"+dataa[0]+"元</h3></td></tr>");
								$("#ttb").append("<tr><td><h3>总利息为："+(dataa[2]-mm).toFixed(2)+"元</h3></td></tr>");
								$("#ttb").append("<tr><td><h3>本息总共："+dataa[2]+"元</h3></td></tr>");
								$("#ttb").append("<tr><td><h3>手续费为："+dataa[1]+"元</h3></td></tr>");
								$("#ttb").append("<tr><td>温馨提示：计算结果仅为试算，实际费率结果以还款计划为准！</td></tr>");
							}
							
						});
					}else{
						return false;
					}
				}
				
			}
		}
		}
		
		
	});
	
	
	$("#life").blur(function(){
		var mm=$("#mmmoney").val();
		
		var rate=$("#rateee").val();
		var life=$("#life").val();
		if(rate!=null&&rate!=""&&life!=null&&life!=""&&mm!=null&&mm!=""){
			var data={};
			data["rate"]=rate;
			data["life"]=life;
			data["mmoney"]=mm;
			$.ajax({
				type:"post",
				url:"/p2p/zkj/capital.do",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify(data),
				success :function(dataa){
					$("#ttb").empty();
					$("#ttb").append("<tr><td><h3>到期还款计划</h3></td></tr>");
					$("#ttb").append("<tr><td><h3>本金为："+mm+"元</h3></td></tr>");
					$("#ttb").append("<tr><td><h3>每月还款:"+dataa[0]+"元</h3></td></tr>");
					$("#ttb").append("<tr><td><h3>总利息为："+(dataa[2]-mm).toFixed(2)+"元</h3></td></tr>");
					$("#ttb").append("<tr><td><h3>本息总共："+dataa[2]+"元</h3></td></tr>");
					$("#ttb").append("<tr><td><h3>手续费为："+dataa[1]+"元</h3></td></tr>");
					$("#ttb").append("<tr><td>温馨提示：计算结果仅为试算，实际费率结果以还款计划为准！</td></tr>");
				}
				
			});
			
		}else{
			return false;
		}
		
	});
	$(function(){
		$("#itemPhoto").change(function(){
  			var MAXWIDTH  = 260; 
  			var MAXHEIGHT = 180;
  			var div = document.getElementById('preview');
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
	})
</script>

