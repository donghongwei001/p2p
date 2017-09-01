<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Home</title>
	
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="../easyui/js/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
	
	<style type="text/css">
		body{/* background-color:#F5F5F5; */}
		#body{width:100%;height:auto;}
		#top{width:76%;height:auto;align:center;margin-left:12%;float:left;}
		#top-img{float:left;}
		#top-menu{float:left;margin-top:3.5%;margin-left:40px;}
		#top-menu a{text-decoration:none;color:#333;font-size:18px;}
		#top-login{float:right;margin-top:3%;margin-left:50px;}
		#img{width:100%;height:auto;}
		#content{width:76%;float:left;margin-left:12%;margin-top:20px;}
		#content-left{width:69%;height:800px;float:left;/* background-color:#FFA07A; */}
		#content-right{width:29%;height:800px;float:left;margin-left:15px;background-color:#FF7F50;}
		#down{width:100%;border-top:1px solid #DCDCDC;float:left;margin-top:20px;}
		#down-one{margin-left:35.5%;margin-top:20px;}
		#down-two{margin-left:37.3%;}
		#down-three{margin-left:41%;margin-bottom:20px;}
		#input-btu{margin-left:250px;}
	</style>
	
	<script type="text/javascript">
		
	</script>
	
</head>
<body>
	<div id="body">
		<div id="top">
			<div id="top-img">
				<img src="../image/title2.png" />
			</div>			
			<div id="top-menu">
				<a href="#">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#">我要投资</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#">我要借款</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;			
			</div>
			<div id="top-login">										
				<button type="button" class="btn btn-default" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">注册</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="button" class="btn btn-default">登录</button>
			</div>
		</div>
		<div id="img">
			<img src="../image/img6.png" width="100%" />
		</div>		
		<div id="content">
			<div id="content-left">
				<table class="table">
					<thead>
						<tr>
							<th>用户id</th>
							<th>用户名</th>
							<th>密码</th>
							<th>余额</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${user}" var="user">
							<tr>
								<td>${user.userID}</td>
								<td>${user.username}</td>
								<td>${user.pwd}</td>
								<td>${user.money}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div id="content-right"></div>
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
	
	<!-- 注册模态框 -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="exampleModalLabel">用户注册</h4>
				</div>
				<div class="modal-body">
					<div id="modal-div">
						<form action="#">					
							<table >
								<tr>
									<td width="220px;" align="right">用户名：</td>
									<td>
										<input type="text" id="user" class="form-control" placeholder="必须是5-10位数字或字母组成，开头不能是数字">
									</td>
									<td><div id="s1"></div></td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;</td>
									<td>&nbsp;&nbsp;</td>
								</tr>
								<tr>
									<td width="220px;" align="right">密码：</td>
									<td>
										<input type="password" id="pwd" class="form-control" placeholder="请输入密码">
									</td>
									<td><div id="s2"></div></td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;</td>
									<td>&nbsp;&nbsp;</td>
								</tr>
								<tr>
									<td width="220px;" align="right">确认密码：</td>
									<td>
										<input type="text" id="rpwd" class="form-control" placeholder="请确认密码">
									</td>
									<td><div id="s3"></div></td>
								</tr>
								<tr>
									<td>&nbsp;&nbsp;</td>
									<td>&nbsp;&nbsp;</td>
								</tr>
								
							</table>
						</form>
					</div>
					<div id="input-btu">
						<input type="button" class="btn btn-success" id="but" value="注册"/>
					</div>								
				</div>
			</div>
		</div>
	</div>
	<!-- 注册模态框结束 -->
</body>
	<script type="text/javascript">
  		$("#but").click(function(){
  			var data={};
			data["username"] = $("#user").val();
			data["pwd"] = $("#pwd").val();
			$.ajax({
				type : "post",
				url : "/p2p/user/add.do", 
				contentType : "application/json;charset=utf-8",
				data : JSON.stringify(data),
				success : function(data1) {
				alert(data1);
					window.location.href="http://localhost:9088/p2p/user/list.do"
				},
				error : function() {
					alert("error");
				}
			});
  		})
  	</script>

</html>