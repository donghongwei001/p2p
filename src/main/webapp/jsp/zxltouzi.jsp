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
		#top{width:76%;height:auto;align:center;margin-left:11%;float:left;}
		#top-img{float:left;}
		#top-menu{float:left;margin-top:3.5%;margin-left:40px;}
		#top-menu a{text-decoration:none;color:black;font-size:18px;}
		#top-menu a:hover{color:#00BFFF;}
		#asd{font-size:18px;}
		#asd:hover{color:#00BFFF;}
		#top-login{float:right;margin-top:3.5%;margin-left:50px;font-size:18px;}
		#img{width:100%;height:auto;/* background-image:url(../image/img6.png) none; */}
		#content{width:100%;float:left;margin-top:20px;/* background-color:#F5F5F5; */}
		#content-left{width:70%;height:auto;float:left;margin-left:15%;background-color:#FFFFFF;}
		#con-div{float:left;margin-top:30px;width:100%;height:auto;margin-bottom:30px;}
		#con-table{width:99%;height:auto;border:1px solid #FF8C00;}
		#table-top{font-size:20px;text-align:center;margin-top:50px;width:16%;}
		#table-but{font-size:16px;text-align:center;color:#808080;}
		#down{width:100%;border-top:1px solid #DCDCDC;float:left;}
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
				<img src="../image/top.PNG" />
			</div>			
			<div id="top-menu">
				<a href="/p2p/user/listpro.do">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="/p2p/user/listtouzi.do">我要投资</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
				<span>账户首页<span>>></span>我的投资</span>
			</div>
		</div>
			
		<div id="content">
			<div id="content-left">	
				<c:forEach items="${listtouzi}" var="user">
					<div id="con-div">
						<table id="con-table">
							<tr><td colspan="5">&nbsp;</td></tr>
							<tr><td colspan="5">&nbsp;</td></tr>				
							<tr>
								<td id="table-top" style="color:#FF8C00;">${user.projectname}</td>
								<td id="table-top">${user.personalname}</td>
								<td id="table-top">${user.money}<span style="font-size:16px;">元</span></td>
								<td id="table-top" style="color:red;">${user.ratemoney}<span style="font-size:16px;color:#000000;">%</span></td>
								<td id="table-top">${user.lifeloan}<span style="font-size:16px;">个月</span></td>
								<td rowspan="2" id="table-top">
									<br/>
								<a href="/p2p/zkj/allproject.do?id=${user.projectid}">		<button class="btn btn-primary" style="font-size:18px;width:120px;">投标</button></a>
								</td>
							</tr>
							<tr><td colspan="5">&nbsp;</td></tr>
							<tr>
								<td id="table-but">项目名称</td>
								<td id="table-but">借款人</td>
								<td id="table-but">借款金额</td>
								<td id="table-but">利率</td>
								<td id="table-but">借款期限</td>
							</tr>
							<tr><td colspan="5">&nbsp;</td></tr>
							<tr><td colspan="5">&nbsp;</td></tr>
						</table>	
					</div>	
				</c:forEach>
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