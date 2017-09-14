<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		#top{width:76%;height:auto;align:center;margin-left:12%;float:left;}
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
			width:80%;
			height:auto;
			margin-left:10%;
			/* overflow-y:scroll; */
		}
		#firstDiv {
			/* margin-top:-20px; */
			width:80%;
			height:auto;
			/* padding-top:20px;
			padding-left:40px; */
		}
		#secondDiv {
			/* width:60%;
			height:80%; */
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
				<a href="/p2p/user/personal.do">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;			
			</div>
			<div id="top-login">										
				欢迎<a href="http://localhost:9088/p2p/jsp/personal.jsp">${abcd}</a>!加入宜人贷&nbsp;&nbsp;&nbsp;&nbsp;
				<a>帮助</a><span>|</span><a href="http://localhost:9088/p2p/user/list.do">退出</a>
			</div>
		</div>
		
		<div id="address">
			<div id="address-text">
				<span>首页<span>>></span>我要借款</span>
			</div>
		</div>
			
		<div id="content">
			<div id="zeroDiv">
				<div id="secondDiv">
					<form action="/p2p/ypgPerson/ypgNal.do" method="post">
						<table class="table table-hover">						
							<tr class="warning">
								<td><span style="float:right;font-size:18px;margin-top:4px;">姓名:</span></td><td><input name="personalname" style="width:250px;" class="form-control" type="text"/></td>
							</tr>
							<tr class="warning">
								<td><span style="float:right;font-size:18px;margin-top:4px;">身份证号:</span></td><td><input name="idcard" style="width:250px;" class="form-control" type="text"/></td>
							</tr>
							<tr class="danger">
								<td><span style="float:right;font-size:18px;margin-top:4px;">手机号:</span></td><td><input name="iphone" style="width:250px;" class="form-control" type="text"/></td>
							</tr>
							<tr class="active">
								<td><span style="float:right;font-size:18px;margin-top:4px;">支付账号:</span></td><td><input name="accountnumber" style="width:250px;" class="form-control" type="text"/></td>
							</tr>
							<tr class="danger">
								<td><span style="float:right;font-size:18px;margin-top:4px;">联系邮箱:</span></td><td><input name="mailbox" style="width:250px;" class="form-control" type="text"/></td>
							</tr>
							<tr class="info">
								<td><span style="float:right;font-size:18px;margin-top:4px;">性别:</span></td>
								<td >
									<select name="sex"  style="width:70px;" class="selectpicker show-tick form-control">
										<option >男</option>
										<option>女</option>
							    	</select>
								</td>
							</tr>
							<tr class="danger">
								<td><span style="float:right;font-size:18px;margin-top:4px;">出生日期:</span></td><td><input name="birthday"  style="width:250px;" class="form-control" type="text"/></td>
							</tr>
							<tr class="success">
								<td><span style="float:right;font-size:18px;margin-top:4px;">学历:</span></td><td><input name="educational" style="width:250px;" class="form-control" type="text"/></td>
							</tr>
							<tr class="active">
								<td><span style="float:right;font-size:18px;margin-top:4px;">婚姻状况:</span></td>
								<td>
									<select name="marriage"  style="width:250px;" class="selectpicker show-tick form-control" >
										<option>未婚</option>
										<option>已婚</option>
								    </select>
								</td>
							</tr>
							<tr class="active">
								<td><span style="float:right;font-size:18px;margin-top:4px;">是否有子女:</span></td>
								<td>
									<select name="havachidren" style="width:70px;" class="selectpicker show-tick form-control" >
										<option>是</option>
										<option>否</option>
								    </select>
								</td>
							</tr>
							<tr class="success">
								<td><span style="float:right;font-size:18px;margin-top:4px;">地址:</span></td><td><input name="address" style="width:250px;" class="form-control" type="text"/></td>
							</tr>
							<tr class="success">
								<td><span style="float:right;font-size:18px;margin-top:4px;">家庭电话:</span></td><td><input name="homephone" style="width:250px;" class="form-control" type="text"/></td>
							</tr>
							<tr class="success">
								<td><span style="float:right;font-size:18px;margin-top:4px;">工作年限:</span></td><td><input name="worklife" style="width:250px;" class="form-control" type="text"/></td>
							</tr>
							<tr class="success">
								<td><span style="float:right;font-size:18px;margin-top:4px;">职业:</span></td><td><input name="occupation" style="width:250px;" class="form-control" type="text"/></td>
							</tr>
							<tr class="success">
								<td><span style="float:right;font-size:18px;margin-top:4px;">工作单位:</span></td><td><input name="workunit" style="width:250px;" class="form-control" type="text"/></td>
							</tr>
							<tr class="success">
								<td><span style="float:right;font-size:18px;margin-top:4px;">单位性质:</span></td><td><input name="unitproperties" style="width:250px;" class="form-control" type="text"/></td>
							</tr>
							<tr class="success">
								<td><span style="float:right;font-size:18px;margin-top:4px;">单位电话:</span></td><td><input name="unitphone" style="width:250px;" class="form-control" type="text"/></td>
							</tr>
							<tr class="success">
								<td><span style="float:right;font-size:18px;margin-top:4px;">月收入:</span></td><td><input name="monthlyincome" style="width:250px;" class="form-control" type="text"/></td>
							</tr>
							<tr class="active">
								<td><span style="float:right;font-size:18px;margin-top:4px;">是否有房:</span></td>
								<td>
									<select name="haveroom" style="width:70px;" class="form-control">
										<option>是</option>
										<option>否</option>
								    </select>
								</td>
							</tr>
							<tr class="active">
								<td><span style="float:right;font-size:18px;margin-top:4px;">是否有房贷:</span></td>
								<td>
									<select name="houseloan" style="width:70px;" class="form-control">
										<option>是</option>
										<option>否</option>
								    </select>
								</td>
							</tr>
							<tr class="active">
								<td><span style="float:right;font-size:18px;margin-top:4px;">是否有车:</span></td>
								<td>
									<select name="havecar" style="width:70px;" class="form-control">
										<option>是</option>
										<option>否</option>
								    </select>
								</td>
							</tr>
							<tr class="active">
								<td><span style="float:right;font-size:18px;margin-top:4px;">是否有车贷:</span></td>
								<td>
									<select name="carloan" style="width:70px;" class="form-control">
										<option>是</option>
										<option>否</option>
								    </select>
								</td>
							</tr>
							<tr class="danger">
								<td><span style="float:right;font-size:18px;margin-top:4px;">亲属姓名:</span></td><td><input name="contactname" class="form-control" style="width:250px;" type="text"/></td>
							</tr>
							<tr class="danger">
								<td><span style="float:right;font-size:18px;margin-top:4px;">亲属关系:</span></td><td><input name="contactrelation" class="form-control" style="width:250px;" type="text"/></td>
							</tr>
							<tr class="danger">
								<td><span style="float:right;font-size:18px;margin-top:4px;">亲属电话:</span></td><td><input name="contactphone" class="form-control" style="width:250px;" type="text"/></td>
							</tr>
						</table>
						<div id="but">
							<button id="btn" type="submit" class="btn btn-danger" >提交</button>
						</div>
					</form>
				</div>
			</div>
				
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