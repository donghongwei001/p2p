<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="ss"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
		
		#dd{
			border:1px solid orange;
			width:800px;
			heihgt:auto;
			clear:both;
		}
		#dd div{
			width:100px;
			float:left;
			display:block-inline;
			height:150px;
			
		}
		#op div{
			width:100px;
			height:50px;
			float:left;
			border:1px solid red;
			margin:12px;
			text-align:center;
			
		}
		#op span{
			line-height:48px;
			font-weight:bold;
			font-size:22px;
		}
	</style>
	
	
	
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
				<a href="/p2p/user/personal.do">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;			
			</div>
			<div id="top-login">										
				欢迎<a href="/p2p/user/personal.do">${abcd}</a>!加入宜人贷&nbsp;&nbsp;&nbsp;&nbsp;
				<a>帮助</a><span>|</span><a href="/p2p/jsp/Home.jsp">退出</a>
			</div>
		</div>
		
		
		<div id="content">
			<div id="op">
				<div><span>项目类别</span></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				
			</div>
			<c:forEach items="${allpeoject }" var="li">
				<div id="dd">
					<div>
					<span>${li.PROJECTNMAE }</span>	
					</div>
					<div>
						<c:if test="${li.PROJECTTYPE ==1}">建筑类</c:if> 
		<c:if test="${li.PROJECTTYPE==2 }">科学类</c:if>
		<c:if test="${li.PROJECTTYPE ==3}">医药类</c:if>
		<c:if test="${li.PROJECTTYPE ==4}">金融类</c:if>
		<c:if test="${li.PROJECTTYPE==5 }">食品类</c:if>
		<c:if test="${li.PROJECTTYPE==6 }">军火类</c:if>
					</div>
					<div>
						${li.LOCATION }
					</div>
					<div><ss:formatDate value="${li.TIME }" pattern="yyyy年MM月dd日"/>
						
					</div>
					<div>
						${li.MONEY }
					</div>
					<div>
						${li.LIFELOAN }
					</div>
					<div>
						${li.RATEMONEY }
					</div>
				</div>
				</c:forEach>	
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