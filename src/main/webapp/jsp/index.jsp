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
		#content-left{width:70%;height:auto;float:left;/* background-color:#FFA07A; */}
		#left-img{float:left;}
		#content-right{float:left;height:auto;width:28%;margin-left:20px;/* background-color:#FF7F50; */}
		#r1-img{float:left;}
		#r1-img{float:left;}
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
				<a href="http://localhost:9088/p2p/user/listpro.do">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#">我要投资</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span id="asd">我要借款&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<a href="/p2p/user/personal.do">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;			
			</div>
			<div id="top-login">										
				欢迎<a href="http://localhost:9088/p2p/jsp/personal.jsp">${abcd}</a>!加入宜人贷&nbsp;&nbsp;&nbsp;&nbsp;
				<a>帮助</a><span>|</span><a href="http://localhost:9088/p2p/Home.jsp">退出</a>
			</div>
		</div>
		<div id="img">
			<img src="../image/img6.png" width="100%" />
			<div id="img-login">
		</div>
			
		<div id="content">
			<div id="content-left">
				<div id="left-img">
					<img src="../image/chu1.png">
				</div>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>项目编号</th>
							<th>项目名称</th>
							<th>内容</th>
							<th>借款人</th>
							<th>所需金额</th>
							<th>借款期限</th>
							<th>利率</th>
							<th>借款类型</th>
							<th>项目地点</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listpro}" var="user">
							<tr>
								<td>${user.projectid}</td>
								<td>${user.projectname}</td>
								<td>${user.content}</td>
								<td>${user.personalname}</td>
								<td>${user.money}</td>
								<td>${user.lifeloan}</td>
								<td>${user.ratemoney}</td>
								<td>${user.name}</td>
								<td>${user.location}</td>
								<td>
									<a href="/p2p/add/allproject.do?id=${user.projectid}">
									 <input type="button" style="font-size:16px;margin-left:20%;" class="btn btn-success" id="but" value="查看"/> </a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div id="content-right">
				<div id="r1-img">
					<img src="../image/r1.png">
				</div>
				<div id="r2-img">
					<img src="../image/r2.png">
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
	</div>
</body>
</html>
<script>
	$("#asd").click(function(){
		$.ajax({
			 type:"post",
			// dataType:"json",
			 url:"/p2p/add/name.do",
			// data:JSON.stringify(row),
			//data:str1,
			 contentType:"application/json;charset=utf-8",
			 success:function(dataa){
				 alert(dataa);
				 if(dataa==null||dataa==""){
					 window.location.href="../jsp/jiekuan.jsp";
				 }else{
					 alert("ssss");
					 window.location.href="../jsp/xiangmushenqing.jsp";
				 }
			 }
		 });
	});
	
</script>