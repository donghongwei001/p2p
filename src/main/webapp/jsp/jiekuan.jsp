<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="../easyui/js/jquery.min.js"></script>
<title>index</title>
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
		#top-login{float:right;margin-top:3.5%;margin-left:50px;font-size:18px;}
		#img{width:100%;height:auto;/* background-image:url(../image/img6.png) none; */}
		#content{width:76%;float:left;margin-left:12%;margin-top:20px;}
		#address{width:100%;height:30px;float:left;background-color:#87BCEE;}
		#address-text{width:76%;font-size:17px;float:left;margin-left:12%;margin-top:0px;}
		#down{width:100%;border-top:1px solid #DCDCDC;float:left;margin-top:20px;}
		#down-one{margin-left:35.5%;margin-top:20px;}
		#down-two{margin-left:37.3%;}
		#down-three{margin-left:41%;margin-bottom:20px;}
		#input-btu{margin-left:250px;}
		
		body {
			margin: 0;
			padding:0;		
		}
		#zeroDiv {
			width:90%;
			height:auto;
			margin-left:5%;
			/* overflow-y:scroll; */
		}
		#firstDiv {
			/* margin-top:-20px; */
			width:100%;
			height:auto;
			/* padding-top:20px;
			padding-left:40px; */
		}
		#secondDiv {
			width:100%;
			height:auto;
			font-size:14px;
			/* margin-left:300px; */
		}
		#but{
			float:left;
			margin-left:48%;
		}
		
	</style>
	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript" src="../bootstrap/js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" src="../bootstrap/js/menu.js"></script>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->


<script src="../bootstrap-table/bootstrap-datetimepicker.fr.js"></script>
<script src="../bootstrap-table/bootstrap-datetimepicker.js"></script>
<script src="../bootstrap-table/bootstrap-datetimepicker.min.css"></script>

<link rel="icon" href="favicon.ico">
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript"></script>

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
				欢迎<a href="/p2p/jsp/zxlpersonal.jsp">${abcd}</a>!加入宜人贷&nbsp;&nbsp;&nbsp;&nbsp;
				<a>帮助</a><span>|</span><a href="/p2p/jsp/Home.jsp">退出</a>
			</div>
		</div>
		<div id="address">
			<div id="address-text">
				<span>首页<span>>></span>我要借款
				</span>
			</div>
		</div>

		<div id="content">
			<div id="zeroDiv">
				<div id="secondDiv" class="input-append date" id="datetimepicker" data-date="12-02-2012" data-date-format="dd-mm-yyyy">
					<form action="/p2p/ypgPerson/ypgNal.do" method="post">
						<table class="table table-hover">
							<tr class="warning">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">姓名:</span>
								</td>
								<td width="30%">
									<input name="personalname" id="personalname" style="width: 250px;" class="form-control" type="text" />
								</td>
								<td width="35%">
									<span id="span1" style="font-size:16px;"></span>
								</td>
							</tr>
							<tr class="warning">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">身份证号:</span>
								</td>
								<td width="30%">
									<input name="idcard" id="idcard" style="width: 250px;" class="form-control" type="text" />
								</td>
								<td width="35%">
									<span id="span2" style="font-size:16px;"></span>
								</td>
							</tr>
							<tr class="danger">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">手机号:</span>
								</td>
								<td width="30%">
									<input name="iphone" id="iphone" style="width: 250px; " class="form-control" type="text" />
								</td>
								<td width="35%">
									<span id="span3" style="font-size:16px;"></span>
								</td>
							</tr>
							<tr class="active">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">银行卡号:</span>
								</td>
								<td width="30%">
									<input name="accountnumber" id="accountnumber" style="width: 250px; "class="form-control" type="text" />
								</td>
								<td width="35%">
									<span id="span4" style="font-size:16px;"></span>
								</td>
							</tr>
							<tr class="danger">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">联系邮箱:</span>
								</td>
								<td width="30%">
									<input name="mailbox" id="mailbox" style="width: 250px;" class="form-control" type="text" />
								</td>
								<td width="35%">
									<span id="span5" style="font-size:16px;"></span>
								</td>
							</tr>
							<tr class="info">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">性别:</span>
								</td>
								<td width="30%">
									<select name="sex" style="width: 60px; " class="selectpicker show-tick form-control">
										<option>男</option>
										<option>女</option>
									</select>
								</td>
								<td width="35%">
									<span id="span0"></span>
								</td>
							</tr>
							<tr class="danger">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 5px;">出生日期:</span>
								</td>
								<td width="65%" colspan="2">
									<div class="form-group">
										<div class="input-group date form_date col-md-2" data-date=""
											data-date-format="yyyy-mm-dd" data-link-field="dtp_input2"
											data-link-format="yyyy-mm-dd">
											<input id="datatime" name="birthday" style="width:150px;margin-top:4px;" class="form-control"  size="16" type="text" value="" > 
												<span class="input-group-addon">
													<span class="glyphicon glyphicon-remove" ></span>
												</span> 
												<span class="input-group-addon" >
													<span class="glyphicon glyphicon-calendar"></span>
												</span>
										</div>
										<input type="hidden" id="dtp_input2" value="" /><br />
									</div>
								</td>
								 
							</tr>
							<tr class="success">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">学历:</span>
								</td>
								<td width="30%">
									<input name="educational" style="width: 250px; " class="form-control" type="text" />
								</td>
								<td width="35%">
									<span id="span0"></span>
								</td>
							</tr>
							<tr class="active">

								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">婚姻状况:</span>
								</td>
								<td width="30%">
									<select name="marriage" style="width: 80px;" class="selectpicker show-tick form-control">

										<option>未婚</option>
										<option>已婚</option>
									</select>
							 	</td>
							 	<td width="35%">
									<span id="span0"></span>
								</td>
							</tr>
							<tr class="active">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">是否有子女:</span>
								</td>
								<td width="30%">
									<select name="havachidren" style="width: 60px;" class="selectpicker show-tick">
										<option>是</option>
										<option>否</option>
									</select>
								</td>
								<td width="35%">
									<span id="span0"></span>
								</td>
							</tr>
							<tr class="success">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">地点:</span>
								</td>
								<td width="65%" colspan="2">
									<div class="col-sm-9" id="distpicker2" name="address">
										  <select name="location1" style="width: 130px; float:left;"  class="selectpicker show-tick form-control" id="s1"></select>
										  <select name="location2" style="width: 130px; float:left;" class="selectpicker show-tick form-control" id="s2"></select>
										  <select name="location3" style="width: 130px; float:left;" class="selectpicker show-tick form-control" id="s3" ></select>
									</div>
								</td>
								
							</tr>
							<tr class="success">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">家庭电话:</span>
								</td>
								<td width="30%">
									<input name="homephone" id="homephone" style="width: 250px; " class="form-control" type="text" />
								</td>
								<td width="35%">
									<span id="span6"></span>
								</td>
							</tr>
							<tr class="success">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">工作年限:</span>
								</td>
								<td width="30%">
									<input name="worklife" style="width: 250px; " class="form-control" type="text" />
								</td>
								<td width="35%">
									<span id="span7"></span>
								</td>
							</tr>
							<tr class="success">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">职业:</span>
								</td>
								<td width="30%">
									<input name="occupation" style="width: 250px; " class="form-control" type="text" />
								</td>
								<td width="35%">
									<span id="span8"></span>
								</td>
							</tr>
							<tr class="success">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">工作单位:</span>
								</td>
								<td width="30%">
									<input name="workunit" style="width: 250px; " class="form-control" type="text" />
								</td>
								<td width="35%">
									<span id="span0"></span>
								</td>
							</tr>
							<tr class="success">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">单位性质:</span>
								</td>
								<td width="30%">
									<input name="unitproperties" style="width: 250px; " class="form-control" type="text" />
								</td>
								<td width="35%">
									<span id="span0"></span>
								</td>
							</tr>
							<tr class="success">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">单位电话:</span>
								</td>
								<td width="30%">
									<input name="unitphone" style="width: 250px; " class="form-control" type="text" />
								</td>
								<td width="35%">
									<span id="span9"></span>
								</td>
							</tr>
							<tr class="success">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">月收入:</span>
								</td>
								<td width="30%">
									<input name="monthlyincome" style="width: 250px;" class="form-control" type="text" />
								</td>
								<td width="35%">
									<span id="span10"></span>
								</td>
							</tr>
							<tr class="active">
								<td width="35%">		
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">是否有房:</span>
								</td>
								<td width="30%">
									<select name="haveroom" style="width: 60px; " class="selectpicker show-tick form-control">
										<option>是</option>
										<option>否</option>
									</select>
								</td>
								<td width="35%">
									<span id="span0"></span>
								</td>
							</tr>
							<tr class="active">
								<td width="35% ">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">是否有房贷:</span>
								</td>
								<td width="30%">
									<select name="houseloan" style="width: 60px; " class="selectpicker show-tick form-control">
										<option>是</option>
										<option>否</option>
									</select>
								</td>
								<td width="35%">
									<span id="span0"></span>
								</td>
							</tr>
							<tr class="active">
								<td width="35%"> 
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">是否有车:</span>
								</td>
								<td width="30%">
									<select name="havecar" style="width: 60px; " class="selectpicker show-tick form-control">
										<option>是</option>
										<option>否</option>
									</select>
								</td>
								<td width="35%">
									<span id="span0"></span>
								</td>
							</tr>
							<tr class="active">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">是否有车贷:</span>
								</td>
								<td width="30%">
									<select name="carloan" style="width: 60px;  " class="selectpicker show-tick form-control">
										<option>是</option>
										<option>否</option>
									</select>
								</td>
								<td width="35%">
									<span id="span0"></span>
								</td>
							</tr>
							<tr class="danger">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">亲属姓名:</span>
								</td>
								<td width="30%">
									<input name="contactname" class="form-control" style="width: 250px;" type="text" />
								</td>
								<td width="35%">
									<span id="span0"></span>
								</td>
							</tr>
							<tr class="danger">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">亲属关系:</span>
								</td>
								<td width="30%">
									<input name="contactrelation" class="form-control" style="width: 250px; " type="text" />
								</td>
								<td width="35%">
									<span id="span0"></span>
								</td>
							</tr>
							<tr class="danger">
								<td width="35%">
									<span style="float: right; font-size: 16px;font-weight:bold; margin-top: 4px;">亲属电话:</span>
								</td>
								<td width="30%">
									<input id="contactphone" onfocus="contactphone(this)" onblur="contactph(this)" name="contactphone" class="form-control"style="width: 250px; " type="text" />
								</td>
								<td width="35%">
									<span id="span0"></span>
								</td>
							</tr>
						</table>
						<div id="but">
							<button id="btn" type="submit" class="btn btn-danger">提交</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<div id="down">
			<div id="down-one">
				<span>联系我们</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>关于我们</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span>入驻我们</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>联系电话：1234567</span>
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

<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-times/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../bootstrap/bootstrap-times/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>

<script src="../bootstrap/js/shengshijilian/distpicker.data.js"></script>
<script src="../bootstrap/js/shengshijilian/distpicker.js"></script>
<script src="../bootstrap/js/shengshijilian/main.js"></script>

<script>
	$('.form_date').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$("#distpicker2").distpicker({
		  province: "---- 所在省 ----",
		  city: "---- 所在市 ----",
		  district: "---- 所在区 ----"
		});
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
	</script>
	
	<script type="text/javascript">
		/* 姓名验证 */
		$("#personalname").focus(function(){
			$("#span1").html("请输入2-7个汉字").css("color","#A9A9A9");
		})
		$("#personalname").blur(function(){
			var name=$("#personalname").val();
			var re=/^([\u4e00-\u9fa5]){2,7}$/;
			if(name==""){
				$("#span1").html("不能为空").css("color","red");
			}else{
				if(re.test(name)){
					$("#span1").html("");
				}else{
					$("#span1").html("请输入正确的姓名").css("color","red");
				}
			}		
		})
		/* 身份证验证 */
		$("#idcard").focus(function(){
			$("#span2").html("请输入18位身份证号").css("color","#A9A9A9");
		})
		$("#idcard").blur(function(){
			var name=$("#idcard").val();
			var re=/^[1-9][0-9]{5}(19[0-9]{2}|200[0-9]|2010)(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01])[0-9]{3}[0-9xX]$/;
			if(name==""){
				$("#span2").html("不能为空").css("color","red");
			}else{
				if(re.test(name)){
					$("#span2").html("");
				}else{
					$("#span2").html("请输入正确的身份证号").css("color","red");
				}
			}		
		})
		/* 手机号验证 */
		$("#iphone").focus(function(){
			$("#span3").html("请输入手机号").css("color","#A9A9A9");
		})
		$("#iphone").blur(function(){
			var name=$("#iphone").val();
			var re=/^1[3|4|5|8][0-9]\d{8}$/;
			if(name==""){
				$("#span3").html("不能为空").css("color","red");
			}else{
				if(re.test(name)){
					$("#span3").html("");
				}else{
					$("#span3").html("请输入正确的手机号").css("color","red");
				}
			}		
		})
		/* 银行卡号 */accountnumber
		$("#accountnumber").focus(function(){
			$("#span4").html("请输入银行卡号").css("color","#A9A9A9");
		})
		$("#accountnumber").blur(function(){
			var name=$("#accountnumber").val();
			var re=/\d{18}/;
			if(name==""){
				$("#span4").html("不能为空").css("color","red");
			}else{
				if(re.test(name)){
					$("#span4").html("");
				}else{
					$("#span4").html("请输入正确的银行卡号").css("color","red");
				}
			}		
		})
		/* 联系邮箱 */mailbox
		$("#mailbox").focus(function(){
			$("#span5").html("请输入联系邮箱").css("color","#A9A9A9");
		})
		$("#mailbox").blur(function(){
			var name=$("#mailbox").val();
			var re=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
			if(name==""){
				$("#span5").html("不能为空").css("color","red");
			}else{
				if(re.test(name)){
					$("#span5").html("");
				}else{
					$("#span5").html("请输入正确的联系邮箱").css("color","red");
				}
			}		
		})
		/* 家庭电话 */homephone
		$("#homephone").focus(function(){
			$("#span6").html("请输入联系电话").css("color","#A9A9A9");
		})
		$("#homephone").blur(function(){
			var name=$("#homephone").val();
			var re=/^1(3|4|5|7|8)\d{9}$/;
			if(name==""){
				$("#span6").html("不能为空").css("color","red");
			}else{
				if(re.test(name)){
					$("#span6").html("");
				}else{
					$("#span6").html("请输入正确的联系电话").css("color","red");
				}
			}		
		})
	</script>

</html>