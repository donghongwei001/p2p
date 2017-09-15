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
<script>
	window.jQuery
			|| document
					.write('<script src="js/vendor/jquery.min.js"><\/script>')
</script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../imgtable/js/YuxiSlider.jQuery.min.js"></script>
<script src="../imgtable/css/style.css"></script>

<script src="../bootstrap-table/bootstrap-datetimepicker.fr.js"></script>
<script src="../bootstrap-table/bootstrap-datetimepicker.js"></script>
<script src="../bootstrap-table/bootstrap-datetimepicker.min.css"></script>


<style type="text/css">
body { /* background-color:#F5F5F5; */
	
}

#body {
	width: 100%;
	height: auto;
}

#top {
	width: 76%;
	height: auto;
	align: center;
	margin-left: 12%;
	float: left;
}

#top-img {
	float: left;
}

#top-menu {
	float: left;
	margin-top: 3.5%;
	margin-left: 40px;
}

#top-menu a {
	text-decoration: none;
	color: black;
	font-size: 18px;
}

#top-menu a:hover {
	color: #00BFFF;
}

#asd {
	font-size: 18px;
}

#top-login {
	float: right;
	margin-top: 3.5%;
	margin-left: 50px;
	font-size: 18px;
}

#img {
	width: 100%;
	height: auto; /* background-image:url(../image/img6.png) none; */
}

#content {
	width: 76%;
	float: left;
	margin-left: 12%;
	margin-top: 20px;
}

#address {
	width: 100%;
	height: 30px;
	float: left;
	background-color: #87BCEE;
}

#address-text {
	width: 76%;
	font-size: 17px;
	float: left;
	margin-left: 12%;
	margin-top: 0px;
}

#down {
	width: 100%;
	border-top: 1px solid #DCDCDC;
	float: left;
	margin-top: 20px;
}

#down-one {
	margin-left: 35.5%;
	margin-top: 20px;
}

#down-two {
	margin-left: 37.3%;
}

#down-three {
	margin-left: 41%;
	margin-bottom: 20px;
}

#input-btu {
	margin-left: 250px;
}

body {
	margin: 0;
	padding: 0;
}

#zeroDiv {
	width: 80%;
	height: auto;
	margin-left: 10%;
	/* overflow-y:scroll; */
}

#firstDiv {
	/* margin-top:-20px; */
	width: 80%;
	height: auto;
	/* padding-top:20px;
			padding-left:40px; */
}

#secondDiv {
	/* width:60%;
			height:80%; */
	font-size: 10px;
	/* margin-left:300px; */
}

#but {
	float: left;
	margin-left: 70%;
}

#distpicker2{
	width:450px;
}
#s1,#s2,#s3{
	float:left;
	width:33.3%;
		}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="../bootstrap/js/jquery-1.8.2.min.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

<link rel="icon" href="favicon.ico">
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript"></script>

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
				<a href="/p2p/user/personal.do">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;
			</div>
			<div id="top-login">
				欢迎<a href="http://localhost:9088/p2p/jsp/personal.jsp">${abcd}</a>!加入宜人贷&nbsp;&nbsp;&nbsp;&nbsp;
				<a>帮助</a><span>|</span><a
					href="http://localhost:9088/p2p/user/list.do">退出</a>
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
				<div id="secondDiv" class="input-append date" id="datetimepicker"
					data-date="12-02-2012" data-date-format="dd-mm-yyyy">
					<form action="/p2p/ypgPerson/ypgNal.do" method="post">
						<table class="table table-hover">
							<tr class="warning">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">姓名:</span></td>
								<td><input name="personalname"  style="width: 250px; height:20px;"
									class="form-control" type="text" /></td>
							</tr>
							<tr class="warning">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">身份证号:</span></td>
								<td><input name="idcard" style="width: 250px;height:20px;"
									class="form-control" type="text" /></td>
							</tr>
							<tr class="danger">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">手机号:</span></td>
								<td><input name="iphone" style="width: 250px; height:20px;"
									class="form-control" type="text" /></td>
							</tr>
							<tr class="active">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">银行卡号:</span></td>
								<td><input name="accountnumber" style="width: 250px; height:20px;"
									class="form-control" type="text" /></td>
							</tr>
							<tr class="danger">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">联系邮箱:</span></td>
								<td><input name="mailbox" style="width: 250px; height:20px;"
									class="form-control" type="text" /></td>
							</tr>
							<tr class="info">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">性别:</span></td>
								<td><select name="sex" style="width: 70px; height:20px;"
									class="selectpicker show-tick ">
										<option>男</option>
										<option>女</option>
								</select></td>
							</tr>
							<tr class="danger">
								<td><span style="float: right; font-size: 12px;font-weight:bold; margin-top: 5px;">出生日期:</span></td>
								<td>
									<div class="form-group">
										<div class="input-group date form_date col-md-2" data-date=""
											data-date-format="yyyy-mm-dd" data-link-field="dtp_input2"
											data-link-format="yyyy-mm-dd">
											<input id="datatime" name="birthday" style="height:20px;width:160px;margin-top:4px;" size="12" type="text" value="" > 
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
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">学历:</span></td>
								<td><input name="educational" style="width: 250px; height:20px;"
									class="form-control" type="text" /></td>
							</tr>
							<tr class="active">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">婚姻状况:</span></td>
								<td><select name="marriage" style="width: 250px; height:20px;"
									class="selectpicker show-tick">
										<option>未婚</option>
										<option>已婚</option>
								</select></td>
							</tr>
							<tr class="active">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">是否有子女:</span></td>
								<td><select name="havachidren" style="width: 70px; height:20px;"
									class="selectpicker show-tick">
										<option>是</option>
										<option>否</option>
								</select></td>
							</tr>
							<tr class="success">
								<td>
									<span style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">地点:</span>
								</td>
								<td><div class="col-sm-9" id="distpicker2" name="address">
										  <select name="location1" style="width: 130px; height:20px;"   id="s1"></select>
										  <select name="location2" style="width: 130px; height:20px;"  id="s2"></select>
										  <select name="location3" style="width: 130px; height:20px;"  id="s3" ></select>
									</div>
								</td>
							</tr>
							<tr class="success">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">家庭电话:</span></td>
								<td><input name="homephone" style="width: 250px; height:20px;"
									class="form-control" type="text" /></td>
							</tr>
							<tr class="success">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">工作年限:</span></td>
								<td><input name="worklife" style="width: 250px; height:20px;"
									class="form-control" type="text" /></td>
							</tr>
							<tr class="success">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">职业:</span></td>
								<td><input name="occupation" style="width: 250px; height:20px;"
									class="form-control" type="text" /></td>
							</tr>
							<tr class="success">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">工作单位:</span></td>
								<td><input name="workunit" style="width: 250px; height:20px;"
									class="form-control" type="text" /></td>
							</tr>
							<tr class="success">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">单位性质:</span></td>
								<td><input name="unitproperties" style="width: 250px; height:20px;"
									class="form-control" type="text" /></td>
							</tr>
							<tr class="success">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">单位电话:</span></td>
								<td><input name="unitphone" style="width: 250px; height:20px;"
									class="form-control" type="text" /></td>
							</tr>
							<tr class="success">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">月收入:</span></td>
								<td><input name="monthlyincome" style="width: 250px; height:20px;"
									class="form-control" type="text" /></td>
							</tr>
							<tr class="active">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">是否有房:</span></td>
								<td><select name="haveroom" style="width: 70px; height:20px;">
										<option>是</option>
										<option>否</option>
								</select></td>
							</tr>
							<tr class="active">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">是否有房贷:</span></td>
								<td><select name="houseloan" style="width: 70px; height:20px;">
										<option>是</option>
										<option>否</option>
								</select></td>
							</tr>
							<tr class="active">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">是否有车:</span></td>
								<td><select name="havecar" style="width: 70px; height:20px;">
										<option>是</option>
										<option>否</option>
								</select></td>
							</tr>
							<tr class="active">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">是否有车贷:</span></td>
								<td><select name="carloan" style="width: 70px; height:20px; font-size: 10px;">
										<option>是</option>
										<option>否</option>
								</select></td>
							</tr>
							<tr class="danger">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">亲属姓名:</span></td>
								<td><input name="contactname" class="form-control"
									style="width: 250px; height:20px;" type="text" /></td>
							</tr>
							<tr class="danger">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">亲属关系:</span></td>
								<td><input name="contactrelation" class="form-control"
									style="width: 250px; height:20px;" type="text" /></td>
							</tr>
							<tr class="danger">
								<td><span
									style="float: right; font-size: 12px;font-weight:bold; margin-top: 4px;">亲属电话:</span></td>
								<td><input id="contactphone" onfocus="contactphone(this)" onblur="contactph(this)" name="contactphone" class="form-control"
									style="width: 250px; height:20px;" type="text" /></td>
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
	
	flag=0;
	function add1(){
		document.getElementById("personalname").innerHTML="设置后不可更改中英文均可，最长14个英文或7个汉字";
		document.getElementById("personalname").style.display="inline-block";
		document.getElementById("user").value="";
	}
	function add2(){
		var dda=document.getElementById("user").value;
		var reg1=/[A-z]{4,14}/g;
		if(reg1.test(dda)){
			document.getElementById("personalname").innerHTML="正确";
			document.getElementById("personalname").style.dispaly="inline-block";
			flag=1;
		}else{
			document.getElementById("personalname").innerHTML="此用户名太受欢迎，请更换一个";
			document.getElementById("personalname").style.display="inline-block";
			flag=0;
		}
	}
	</script>

</html>