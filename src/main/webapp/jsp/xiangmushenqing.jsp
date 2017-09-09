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
		#top{width:76%;height:auto;align:center;margin-left:12%;float:left;}
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
	</style>
	
	
</head>
<body>

	<div id="body">
		<div id="top">
			<div id="top-img">
				<img src="../image/title2.png" />
			</div>			
			<div id="top-menu">
				<a href="http://localhost:9088/p2p/user/listpro.do">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#">我要投资</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span id="asd">我要借款&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<a href="/p2p/user/personal.do">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;			
			</div>
			<div id="top-login">										
				欢迎<a href="http://localhost:9088/p2p/jsp/personal.jsp">${abcd}</a>!加入宜人贷&nbsp;&nbsp;&nbsp;&nbsp;
				<a>帮助</a><span>|</span><a href="http://localhost:9088/p2p/user/list.do">退出</a>
			</div>
		</div>
		
		<div id="address">
			<div id="address-text">
				<span>首页<span></span>我要投资</span>
			</div>
		</div>
			
		<div id="content">
			<form class="form-horizontal" name="myform" action="/p2p/add/project.do" method="post">
				<div class="form-group">
					<label for="inputEmail3" style="font-size:16px;" class="col-sm-2 control-label">项目名称</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="inputEmail3" name="projectname">
					</div>
				 </div>
				 <div class="form-group">
					<label for="input3" style="font-size:16px;" class="col-sm-2 control-label">项目类型</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="input3" name="projecttype" placeholder="厦门花木类型">
					</div>
				 </div>
				 <div class="form-group">
					<label for="inputE" style="font-size:16px;" class="col-sm-2 control-label">项目地点</label>
					<div class="col-sm-5">
						 <div id="distpicker2">
							  <select name="location1"  ></select>
							  <select name="location2"></select>
							  <select name="location3"></select>
						</div>
						
					</div>
				 </div>
				 <div class="form-group">
					<label for="inputEm" style="font-size:16px;" class="col-sm-2 control-label">申请金额</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="inputEm" name="money" placeholder="8000">
					</div>
				 </div>
				 <div class="form-group">
					<label for="input2" style="font-size:16px;" class="col-sm-2 control-label">借款期限</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="input2" name="lifeloan" >
					</div>
				 </div>
				 <div class="form-group">
					<label for="input2" style="font-size:16px;" class="col-sm-2 control-label">利率</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="input2" name="ratemoney"  >
					</div>
				 </div>
				 <div class="form-group">
					<label for="inputEmail3" style="font-size:16px;" class="col-sm-2 control-label">附件</label>
					<div class="col-sm-10">
						<textarea name="sponsor_info" id="" cols="90" rows="8" class="form_textarea" name="appendix"></textarea>
						<br/>
						<input type="submit"/>
					</div>
				 </div>	
			</form>			
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
$("#distpicker2").distpicker({
	  province: "---- 所在省 ----",
	  city: "---- 所在市 ----",
	  district: "---- 所在区 ----"
	});
</script>

