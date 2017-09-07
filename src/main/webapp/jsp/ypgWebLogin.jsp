<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<style>

		body {
			margin: 0;
			padding:0;
			
		}
		#zeroDiv {
			width:100%;
			height:500px;
			overflow-y:scroll;
		}
		#firstDiv {
			margin-top:-20px;
			width:100%;
			height:auto;
			padding-top:20px;
			padding-left:40px;
		}
		#secondDiv {
			width:60%;
			height:80%;
			font-size:14px;
			margin-left:300px;
		}
		
	</style>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript" src="../bootstrap/js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" src="../bootstrap/js/menu.js"></script>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

    <link rel="icon" href="favicon.ico">

    
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../bootrap/scss/ie10-viewport-bug-workaround.css" rel="stylesheet">
   

    <script src="js/ie-emulation-modes-warning.js"></script>
	
</head>

<body>
		<div id="firstDiv" class="bg-success">
			<h1>凡是看过</h1>
		</div>
		<div id="zeroDiv">
		<div id="secondDiv">
			<form action="/p2p/jsp/xiangmushenqing.jsp" method="post">
			<table class="table table-hover">
				
				<tr class="warning">
					<td>姓名:</td><td><input name="personalname" class="form-control" type="text"/></td>
				</tr>
				<tr class="warning">
					<td>身份证号:</td><td><input name="idcard" class="form-control" type="text"/></td>
				</tr>
				<tr class="danger">
					<td>手机号:</td><td><input name="iphone" class="form-control" type="text"/></td>
				</tr>
				<tr class="active">
					<td>支付账号:</td><td><input name="accountnumber" class="form-control" type="text"/></td>
				</tr>
				<tr class="danger">
					<td>联系邮箱:</td><td><input name="mailbox" class="form-control" type="text"/></td>
				</tr>
				<tr class="info">
					<td>性别:</td>
					<td >
						<select name="sex" class="selectpicker show-tick form-control">
							<option >男</option>
							<option>女</option>
				    	</select>
					</td>
				</tr>
				<tr class="danger">
					<td>出生日期:</td><td><input name="birthday" class="form-control" type="text"/></td>
				</tr>
				<tr class="success">
					<td>学历:</td><td><input name="educational" class="form-control" type="text"/></td>
				</tr>
				<tr class="active">
					<td>婚姻状况:</td>
					<td>
						<select name="marriage" class="selectpicker show-tick form-control" >
							<option>未婚</option>
							<option>已婚</option>
					    </select>
					</td>
				</tr>
				<tr class="active">
					<td>是否有子女:</td>
					<td>
						<select name="havachidren" class="selectpicker show-tick form-control" >
							<option>是</option>
							<option>否</option>
					    </select>
					</td>
				</tr>
				<tr class="success">
					<td>地址:</td><td><input name="address" class="form-control" type="text"/></td>
				</tr>
				<tr class="success">
					<td>家庭电话:</td><td><input name="homephone" class="form-control" type="text"/></td>
				</tr>
				<tr class="success">
					<td>工作年限:</td><td><input name="worklife" class="form-control" type="text"/></td>
				</tr>
				<tr class="success">
					<td>职业:</td><td><input name="occupation" class="form-control" type="text"/></td>
				</tr>
				<tr class="success">
					<td>工作单位:</td><td><input name="workunit" class="form-control" type="text"/></td>
				</tr>
				<tr class="success">
					<td>单位性质:</td><td><input name="unitproperties" class="form-control" type="text"/></td>
				</tr>
				<tr class="success">
					<td>单位电话:</td><td><input name="unitphone" class="form-control" type="text"/></td>
				</tr>
				<tr class="success">
					<td>月收入:</td><td><input name="monthlyincome" class="form-control" type="text"/></td>
				</tr>
				<tr class="active">
					<td>是否有房:</td>
					<td>
						<select name="haveroom" class="form-control">
							<option>是</option>
							<option>否</option>
					    </select>
					</td>
				</tr>
				<tr class="active">
					<td>是否有房贷:</td>
					<td>
						<select name="houseloan" class="form-control">
							<option>是</option>
							<option>否</option>
					    </select>
					</td>
				</tr>
				<tr class="active">
					<td>是否有车:</td>
					<td>
						<select name="havecar" class="form-control">
							<option>是</option>
							<option>否</option>
					    </select>
					</td>
				</tr>
				<tr class="active">
					<td>是否有车贷:</td>
					<td>
						<select name="carloan" class="form-control">
							<option>是</option>
							<option>否</option>
					    </select>
					</td>
				</tr>
				<tr class="danger">
					<td>亲属姓名:</td><td><input name="contactname" class="form-control" type="text"/></td>
				</tr>
				<tr class="danger">
					<td>亲属关系:</td><td><input name="contactrelation" class="form-control" type="text"/></td>
				</tr>
				<tr class="danger">
					<td>亲属电话:</td><td><input name="contactphone" class="form-control" type="text"/></td>
				</tr>
				<tr >
					<td><button id="btn" class="btn btn-danger" >提交</button></td>
				</tr>
			</table>
			</form>
		</div>
	</div>
</body>	
</html>
