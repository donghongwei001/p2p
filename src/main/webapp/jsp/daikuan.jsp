<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../easyui/css/icon.css" />
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css" />

<script src="../easyui/js/jquery.min.js"></script>
<script src="../easyui/js/jquery.easyui.min.js"></script>
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../easyui/js/easyui-lang-zh_CN.js"></script>
<style>

		body {
			margin: 0;
			padding: 0;
			
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
</head>

<body>
	<div id="firstDiv" class="bg-success">
			
		</div>
		<div id="zeroDiv">
		<div id="secondDiv">
			<form action="/p2p/person/nal.do" method="post">
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
<script type="text/javascript">

	 
</script>
</html>