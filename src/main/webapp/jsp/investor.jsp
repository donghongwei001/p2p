<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="../easyui/js/jquery.min.js"></script>
<title>index</title>
	<link rel="stylesheet" type="text/css" href="../bootstrap/css/build.css">
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="../easyui/js/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
	<script src="../imgtable/js/YuxiSlider.jQuery.min.js"></script>
	<script src="../imgtable/css/style.css"></script>
	<style type="text/css">
		body{/* background-color:#F5F5F5; */}
		#body{width:100%;height:auto;}
		#top{width:76%;height:auto;align:center;margin-left:11%;float:left;}
		#top-img{float:left;}
		#top-menu{float:left;margin-top:3.5%;margin-left:40px;}
		#top-menu a{text-decoration:none;color:black;font-size:18px;}
		#top-menu a:hover{color:#00BFFF;}
		#asd{font-size:18px;}
		#asd:hover{color:#00BFFF;}
		#top-login{float:right;margin-top:3.5%;margin-left:50px;font-size:18px;}
		#img{width:100%;height:auto;/* background-image:url(../image/img6.png) none; */}
		#content{width:76%;float:left;margin-left:12%;margin-top:20px;}
		#content-left{width:70%;height:auto;float:left;/* background-color:#FFA07A; */}
		#left-con{float:left;}
		#left-conleft{width:80%;float:left;height:auto;}
		#left-contop{font-size:18px;color:#1E90FF;float:left;margin-top:40px;width:100%;}
		#left-conbut{float:left;width:100%;margin-top:20px;}
		#left-span{font-size:16px;color:#A9A9A9;}
		#left-conspan{color:#696969;font-size:20px;}
		#left-conmoney{float:left;}
		#left-conqx{float:left;margin-left:10%;}
		#left-conll{float:left;margin-left:10%;}
		#left-right{float:left;height:auto;}
		#left-button{float:left;margin-top:60px;}
		#left-conbutton{float:left;margin-left:35%;margin-top:30px;}
		#content-right{float:left;width:29%;height:auto;}
		#right-but{float:left;width:100%;height:auto;margin-top:50px;}
		#right-tzbut{float:left;}
		#right-jkbut{float:left;margin-left:20px;}
		#right-span{width:100%;height:auto;border:1px solid red;}
		#total1{float:left;font-size:18px;width:100%;margin-top:50px;margin-left:10%;}
		#total2{float:left;font-size:18px;width:100%;margin-top:10px;margin-left:40%;}
		#total3{float:left;font-size:18px;width:100%;margin-top:10px;margin-left:10%;}
		#total4{float:left;font-size:18px;width:100%;margin-top:10px;margin-left:40%;}
		#down{width:100%;border-top:1px solid #DCDCDC;float:left;margin-top:20px;}
		#down-one{margin-left:35.5%;margin-top:20px;}
		#down-two{margin-left:37.3%;}
		#down-three{margin-left:41%;margin-bottom:20px;}
		#input-btu{margin-left:250px;}
		#submit{margin-left:28%;}
		#content{
			margin-left:18%;
			width:600px;
		}
	</style>
	
	<script type="text/javascript">
		
	</script>
	
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
				欢迎<a href="/p2p/user/zxlpersonal.do">${abcd}</a>!加入宜人贷&nbsp;&nbsp;&nbsp;&nbsp;<span
								class="badge badge-danger">您有条未读消息！</span>
				<a>帮助</a><span>|</span><a href="/p2p/jsp/Home.jsp">退出</a>
			</div>
		</div>
		
		<div id="content">
			<form class="form-horizontal" name="myform" action="/p2p/zkj/savenvestor.do" method="post" onsubmit="return check(this)" >
				<div class="form-group">
					<label for="inputEmail3" style="font-size:16px;" class="col-sm-2 control-label">姓名：</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="name" name="name" placeholder="王五"/><span id="qwe"></span>
					</div>
					
				 </div>
				 <div class="form-group">
					<label for="input3" style="font-size:16px;" class="col-sm-2 control-label">性别:</label>
					<fieldset>
					 <div class="radio radio-info radio-inline">
		                    &nbsp; &nbsp;&nbsp;&nbsp;   <input type="radio" id="inlineRadio1" value="男" name="sex" checked>
		                        <label for="inlineRadio1"> 男 </label>
		                    </div>
		                    <div class="radio radio-inline">
		                        <input type="radio" id="inlineRadio2" value="女" name="sex" >
		                        <label for="inlineRadio2"> 女 </label>
		                    </div>
		                    </fieldset>
				 </div>
				
				
				 <div class="form-group">
				 	<label for="inputEm" style="font-size:16px; width:auto;" class="col-sm-2 control-label">身份证号码：</label>
						<div class="col-sm-8">
								<input type="text" class="form-control" id="idcard" name="idcard" ><scpan id="qwr"></scpan>
						</div>
				 </div>
				 
				 
				 
				 <div class="form-group">
					<label for="input2" style="font-size:16px;" class="col-sm-2 control-label">手机号码</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="iphonee" name="telphone" ><scpan id="qwtt"></scpan>
					</div>
				 </div>
				 <div class="form-group">
					<label for="input2" style="font-size:16px;width:auto" class="col-sm-2 control-label">银行卡号：</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" id="bankcard" name="banknumber"  ><scpan id="dfg"></scpan>
					</div>
				 </div>
				
				 
				
				 <input id="submit" type="submit" class="btn btn-primary" value="完成身份实名认证"/>
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
	$("#more").click(function(){
		window.location.href="/p2p/user/listtouzi.do"
	})

	$("#asd").click(function(){
		
		$.ajax({
			 type:"post",
			// dataType:"json",
			 url:"/p2p/add/name.do",
			// data:JSON.stringify(row),
			//data:str1,
			 contentType:"application/json;charset=utf-8",
			 success:function(dataa){
				
				 if(dataa==null||dataa==""){
					 window.location.href="../jsp/jiekuan.jsp";
				 }else{
					
					 window.location.href="../jsp/xiangmushenqing.jsp";
				 }
			 }
		 });
	});
	$("#bankcard").blur(function(){
		var bank=$("#bankcard").val();
		var reg=/^(\d{16}|\d{19})$/;
		$("#dfg").empty();
		if(bank==null||bank==""){
			$("#dfg").html("银行卡号不能为空");
			$("#dfg").css("color","red");
		}else{
			if(!reg.test(bank)){
				$("#dfg").html("银行卡号必须为19或16位纯数字");
				$("#dfg").css("color","red");
			}
		}
	});
	$("#name").blur(function(){
		var name=$("#name").val();
		var qwe= /[\u4e00-\u9fa5]/;
		$("#qwe").empty();
		if(name==null||name==""){
			$("#qwe").html("姓名不能为空");
			$("#qwe").css("color","red");
			return false;
		}else{
			if(!qwe.test(name)){
				$("#qwe").html("请输入中文");
				$("#qwe").css("color","red");
				return false;
			}
		}
	});
	$("#idcard").blur(function(){
		
		var idcard=$("#idcard").val();
		$("#qwr").empty();
		if(idcard==""||idcard==null){
			$("#qwr").html("身份证号码不能为空");
			$("#qwr").css("color","red");
		}else{
			var reg=/^(\d{16}|\d{18})$/;
			if(!reg.test(idcard)){
				$("#qwr").html("身份证号码格式不对");
				$("#qwr").css("color","red");
				
			}
		}
		
	});
	$("#iphonee").blur(function(){
	
		var iphone=$("#iphonee").val();
		var red=/^1[2|3|4|5|6|7|8][0-9]\d{4,8}$/;
		$("#qwtt").empty();
		if(ipone==null||iphone==""){
			$("#qwtt").html("手机号码不能为空");
			$("#qwtt").css("color","red");
			return false;
		}else{
			if(!red.test(iphone)){
				$("#qwtt").html("手机号码必须为1开头的11位数字");
				$("#qwtt").css("color","red");
				return false;
			}
		}
	});
	function check(){
		var idcard=$("#idcard").val();
		var iphone=$("#iphonee").val();
		var name=$("#name").val();
		var bank=$("#bankcard").val();
		var qwe= /[\u4e00-\u9fa5]/;
		$("#qwe").empty();
		if(name==null||name==""){
			$("#qwe").html("姓名不能为空");
			$("#qwe").css("color","red");
			return false;
		}else{
			if(!qwe.test(name)){
				$("#qwe").html("请输入中文");
				$("#qwe").css("color","red");
				return false;
			}
		}
		var reg=/^(\d{16}|\d{19})$/;
		$("#dfg").empty();
		if(bank==null||bank==""){
			$("#dfg").html("银行卡号不能为空");
			$("#dfg").css("color","red");
			return false;
		}else{
			if(!reg.test(bank)){
				$("#dfg").html("银行卡号必须为19或16位纯数字");
				$("#dfg").css("color","red");
				return false;
			}
		}
		$("#qwr").empty();
		if(idcard==""||idcard==null){
			$("#qwr").html("身份证号码不能为空");
			$("#qwr").css("color","red");
			return false;
		}else{
			var reg=/\d{15}|\d{18}/;
			if(!reg.test(idcard)){
				$("#qwr").html("身份证号码格式不对");
				$("#qwr").css("color","red");
				return false;
			}
		}
		var red=/^1[2|3|4|5|6|7|8][0-9]\d{4,8}$/;
		$("#qwt").empty();
		if(iphone==null||iphone==""){
			$("#qwtt").html("手机号码不能为空");
			$("#qwtt").css("color","red");
			return false;
		}else{
			if(!red.test(iphone)){
				$("#qwtt").html("手机号码必须为1开头的11位数字");
				$("#qwtt").css("color","red");
				return false;
			}
		}
		
		
		if(bank==null||bank==""||idcard==null||idcard==""||iphone==""||iphone==null||name==null||name==""){
			return false;
		}
	}
</script>
<script type="text/javascript">
	    function changeState(el) {
	        if (el.readOnly) el.checked=el.readOnly=false;
	        else if (!el.checked) el.readOnly=el.indeterminate=true;
	    }
	</script>