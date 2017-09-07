<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript" src="../bootstrap/js/jquery-1.8.2.min.js"></script>
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
	<script src="../bootstrap/js/jquery.min.js"></script>
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	
	<style>
			body {
				margin: 0;
				padding: 0;
				background-color:#EBC79E;
			}
			#TouDiv {
				width: 50%;
				height:auto;
				margin-left:300px;
			}
			#zeroDiv {
				width: 100%;
				height: 100px;
				
				background-color:white;
			}
			
			#zero_firstDiv {
				width:60%;
				height:100px;
				line-hegiht:100px;
				float:left;
				margin-top:20px;
			}
			
			#zero_secondDiv {
				width:40%;
				height:100px;
				float:right;
				
			}
			#TouBiaoDiv {
				width:100%;
				height:183px;
				background-color:white;
			}
			#firstDiv {
				width:100%;
				hegiht:850px;
				background-color:white;
			}
			#home {
				clear:both;
				width:100%;
				height:490px;
				
				
			}
			#first_firstNewsDiv,#first_firstWordDiv,#first_firstBorrowDiv,#first_firstOtherDiv {
				margin-right:40px;
				margin-top:15px;
				width:40%;
				height:225px;
				float:right;
			}
			#first_firstDiv2 {
				width:100%;
				height:400px;		
			}
			#first_firstTable {
				width:100%;
				height:400px;
				
			}
			
	</style>

</head>

<body >
	<div id="TouDiv">
	<div id="zeroDiv">
		
			<div id="zero_firstDiv">
				<c:forEach items="${min}" var="mm">
					<span style="font-size:16px;color:red;">${mm.RATEMONEY}%年化利率</span>&nbsp;&nbsp;&nbsp;
					<span style="font-size:16px;color:red;">${mm.LIFELOAN }年借款期限</span>&nbsp;&nbsp;&nbsp;
					<span style="font-size:16px;color:red;">${mm.MONEY}元借款金额</span>
				</c:forEach>
			</div>
			<div id="zero_secondDiv">
				<span>还需金额:元</span><br/>
				<button type="button" class="btn btn-success">已满标</button>
				<button type="button" class="btn btn-warning">未满标</button>
			</div>
		
	</div>
	<div id="TouBiaoDiv">
		 <div style="width:100%;hegiht:170px;"><img src="../image/TouBiao2.png"></div>
	</div>
	<div id="firstDiv">
		<ul id="myTab" class="nav nav-tabs">
			<li class="active" >
				<a href="#home" data-toggle="tab">借款人详情</a>
			</li>
			<li> 
				<a href="#ios" data-toggle="tab">标记记录</a>
			</li>
	
		</ul>
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="home">
				
				<div id="first_firstNewsDiv">
					<span>个人信息</span><br/>
					<table class="table table-hover">
					<c:forEach items="${min}" var="m">
						<tr class="active">
							<td>昵称:</td><td>${m.USERNAME}</td>
						</tr>
						<tr class="success">
							<td>手机号:</td><td>${m.IPHONE}</td>
						</tr>
						<tr class="warning">
							<td>学历:</td><td>${m.EDUCATIONAL}</td>
						</tr>
						<tr class="active">
							<td>婚姻状况:</td><td>${m.MARRIAGE}</td>
						</tr>
						<tr class="warning">
							<td>房产状况:</td><td>${m.HOUSELOAN}</td>
						</tr>
						<tr class="success">
							<td>现居地:</td><td>${m.ADDRESS}</td>
						</tr>
					</c:forEach>
					</table>
				</div>
				<div id="first_firstWordDiv">
					<span>借款标信息</span>
					<table class="table table-hover">
						<c:forEach items="${min }" var="m">
						<tr class="active">
							<td>借款金额:</td><td>${m.MONEY }</td>
						</tr>
						<tr class="info">
							<td>借款期限:</td><td>${m.LIFELOAN }</td>
						</tr>
						<tr class="warning">
							<td>年化利率:</td><td>${m.RATEMONEY }</td>
						</tr>
						<tr class="info">
							<td>借款用途:</td><td></td>
						</tr>
						<tr class="success">
							<td>投标截止时间:</td><td>${m.LASTTIME }</td>
						</tr>
						</c:forEach>
					</table>
					
				</div>
				<div id="first_firstBorrowDiv">
					<span>工作状况</span>
					<table class="table table-hover">
						<c:forEach items="${min }" var="m">
						<tr class="info">
							<td>工作行业:</td><td>${m.OCCUPATION }</td>
						</tr>
						<tr class="success">
							<td>工作城市:</td><td></td>
						</tr>
						<tr class="active">
							<td>工作时长:</td><td>${m.WORKLIFE }</td>
						</tr>
						<tr class="info">
							<td>月收入:</td><td>${m.MONTHLYINCOME }</td>
						</tr>
						<tr class="success">
							<td>信用额度:</td><td></td>
						</tr>
						</c:forEach>
					</table>
				</div>
				<div id="first_firstOtherDiv">
					<span>其他审核资料</span>
					<table class="table table-hover">
						<c:forEach items="${min }" var="m">
						<tr class="warning">
							<td>身份证信息:</td><td>${m.IDCARD}</td>
						</tr>
						<tr class="warning">
							<td>银行卡信息:</td><td>${m.ACCOUNTNUMBER }</td>
						</tr>
						<tr class="success">
							<td>收入证明:</td><td></td>
						</tr>
						<tr class="info">
							<td>工作证:</td><td></td>
						</tr>
						<tr class="success">
							<td>联系人信息:</td><td>${m.CONTACTPHONE}</td>
						</tr>
						</c:forEach>
					</table>
				</div>
				
			</div>
			<div class="tab-pane fade" id="ios">
				<table id="first_firstTable" class="table table-hover">
					<tr class="success">
						<td>帐号</td><td>投标资金</td><td>投标日起</td>
					</tr>
					<c:forEach items="${publl}" var="pp">
						<tr class="info">
							<td>${pp.NAME}</td><td>${pp.MONEY}</td><td>${pp.TIME}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			
		</div>
		
	</div>
	</div>
</body>
</html>
