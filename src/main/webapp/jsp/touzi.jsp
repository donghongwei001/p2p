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
		#down{width:100%;border-top:1px solid #DCDCDC;float:left;margin-top:20px;}
		#down-one{margin-left:35.5%;margin-top:20px;}
		#down-two{margin-left:37.3%;}
		#down-three{margin-left:41%;margin-bottom:20px;}
		#input-btu{margin-left:250px;}
		#address{width:100%;height:30px;float:left;background-color:#87BCEE;}
		#address-text{width:76%;font-size:17px;float:left;margin-left:12%;margin-top:0px;}
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
				<a href="/p2p/user/listpro.do">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#">我要投资</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span id="asd">我要借款&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<a href="/p2p/user/zxlpersonal.do">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;			
			</div>
			<div id="top-login">										
				欢迎<a href="/p2p/user/zxlpersonal.do">${abcd}</a>!加入宜人贷&nbsp;&nbsp;&nbsp;&nbsp;
				<a>帮助</a><span>|</span><a href="/p2p/jsp/Home.jsp">退出</a>
			</div>
		</div>
		<div id="address">
			<div id="address-text">
				<span>首页<span>>></span>我要投资</span>
			</div>
		</div>
			
		<div id="content">
			<div id="content-left">	
				<c:forEach items="${listpro}" var="user">		
					<div id="left-con">				
						<div id="left-conleft">
							<div id="left-contop">
								<span>${user.projectname}</span>
								<span style="font-size:18px;color:#1E90FF;">(${user.personalname}，${user.name}，${user.location})</span>
							</div>
							<div id="left-conbut">
								<div id="left-conmoney">
									<span id="left-span">借款金额</span>&nbsp;<span id="left-conspan">${user.money}</span>&nbsp;<span id="left-span">元</span>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</div>
								<div id="left-conqx">
									<span id="left-span">借款期限</span>&nbsp;<span id="left-conspan">${user.lifeloan}</span>&nbsp;<span id="left-span">年</span>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</div>
								<div id="left-conll">
									<span id="left-span">利率</span>&nbsp;<span id="left-conspan">${user.ratemoney}</span>&nbsp;<span id="left-span">%</span>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</div>
							</div>
						</div>
						<div id="left-right">
							<div id="left-button">
								<button class="btn btn-primary" style="font-size:18px;">投标</button>
							</div>
						</div>										
					</div>	
						
				</c:forEach>
				<div id="left-conbutton">
					<button class="btn btn-default">查看更多</button>
				</div>	
			</div>
			<div id="content-right">
				<div id="right-but">
					<div id="right-tzbut">
						<button class="btn btn-warning" style="font-size:18px;width:135px;height:50px;">我要投资</button>
					</div>
					<div id="right-jkbut">
						<button class="btn btn-success" style="font-size:18px;width:135px;height:50px;">我要借款</button>
					</div>
				</div>
				<div id="right-span">
					
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
<script>
	$("#asd").click(function(){
		alert("123");
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