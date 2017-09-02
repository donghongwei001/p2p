<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="../easyui/js/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="js/vendor/jquery.min.js"><\/script>')
</script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<style type="text/css">
body{
	padding:70px;
}
#top-img {
	margin-left: 200px;
	float: left;
}

#daohang {
	font-size: 25px;
}

#BODY {
	margin-left: 400px;
}

#tubiao {
	margin-left: 250px;
}

#daow {
	width: 200px;
	text-align: center;
}

table {
	margin-left:25%;
}

#zuo {
	width: 800px;
	height: 1000px;
}

#you {
	height: 1000px;
	width: 150px;
}

#three-top {
	margin-left: 2%;
}
#tuone{
	width:200px;
	height:200px;
	float:left;
	margin-top:-46%;
	margin-left:4%;
}
#tuthree{
	width:200px;
	height:200px;
	float:left;
	margin-top:-46%;
	margin-left:34%;
}
#tutwo{
	width:200px;
	height:200px;
	float:left;
	margin-top:-46%;
	margin-left:64%;
}
#tuone img:hover,#tutwo img:hover,#tuthree img:hover {
width: 250px;
height: 250px;
padding: 0;
}

</style>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div style="margin-top:1%;margin-left:70%;" class="container">您好！欢迎来到宜人贷！	</div>
	</nav>
	<div>

		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<li id="tubiao">
				<div id="top-img">
					<img src="../image/title2.png" />
				</div>
			</li>
			<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<li id="daow" role="presentation" class="active"><a id="shouye" href="#home"
				aria-controls="home" role="tab" data-toggle="tab"><span
					id="daohang">首页</span></a></li>
			<li id="daow" role="presentation"><a href="#profile"
				aria-controls="profile" role="tab" data-toggle="tab"><span
					id="daohang">我要投资</span></a></li>
			<li id="daow" role="presentation"><a href="#messages"
				aria-controls="messages" role="tab" data-toggle="tab"><span
					id="daohang">我要借款</span></a></li>
			<li id="daow" role="presentation"><a href="#settings"
				aria-controls="settings" role="tab" data-toggle="tab"><span
					id="daohang">个人中心</span></a></li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<div role="tabpanel" class="tab-pane active" id="home">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img style="margin-left: 5%;"
								src="../image/01bb0355683a270000012b20a424c6.jpg@900w_1l_2o_100sh.jpg"
								height="100px" width="90%" alt="...">
							<div class="carousel-caption">122222222222222222222222</div>
						</div>
						<div class="item">
							<img style="margin-left: 5%;"
								src="../image/01bb0355683a270000012b20a424c6.jpg@900w_1l_2o_100sh.jpg"
								width="90%" alt="...">
							<div class="carousel-caption">344444444444444444444444444</div>
						</div>
						<div class="item">
							<img style="margin-left: 5%;"
								src="../image/01bb0355683a270000012b20a424c6.jpg@900w_1l_2o_100sh.jpg"
								width="90%" alt="...">
							<div class="carousel-caption">5666666666666666666666666666</div>
						</div>


					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
				<table border="1">
					<tr>
						<td id="zuo">
							<div id="tuone">
								<a href="#profile"
				aria-controls="profile" role="tab" data-toggle="tab"><img  src="../image/timg.jpg" width=100% height=100%>
								</a>
							</div>
							<div id="tutwo">
							<a href="#messages"aria-controls="messages" role="tab" data-toggle="tab">
								<img  src="../image/timg (1).jpg" width=100% height=100%> </a>
							</div>
							<div id="tuthree">
								<img src="../image/timg (2).jpg" width=100% height=100%>
							</div>
							
						</td>
						<td id="you">
							<button style="margin-top: -700px;" type="button"
								class="btn btn-success  btn-lg">登录</button>
							<button style="margin-top: -700px;" type="button"
								class="btn btn-warning  btn-lg">注册</button>
						</td>
					</tr>
				</table>
			</div>
			<div role="tabpanel" class="tab-pane" id="profile">
				<!-- 融资页面 -->
				123464564646464646

			</div>
			<div role="tabpanel" class="tab-pane" id="messages">
				<div id="three-top">
					<img src="../image/QQ20170831215435.png" />
				</div>
			</div>
			<div role="tabpanel" class="tab-pane" id="settings">
				<div class="panel-group" id="accordion" role="tablist"
					aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a role="button" data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne" aria-expanded="true"
									aria-controls="collapseOne"> Collapsible Group Item #1 </a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">1111111111</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse"
									data-parent="#accordion" href="#collapseTwo"
									aria-expanded="false" aria-controls="collapseTwo">
									Collapsible Group Item #2 </a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body">22222222222222</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse"
									data-parent="#accordion" href="#collapseThree"
									aria-expanded="false" aria-controls="collapseThree">
									Collapsible Group Item #3 </a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body">3333333333333</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
<script type="text/javascript">
	$(function(){
		$("#shouye").click(function(){
			location.replace(location.href);
		})
	})
</script>
</html>