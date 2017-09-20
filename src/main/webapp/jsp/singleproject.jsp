<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false"%>
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

<style type="text/css">
body { /* background-color:#F5F5F5; */
	
}

#body {
	width: 100%;
	height: auto;
}

#top {
	width: 76%;
	height: auto;
	align: center;
	margin-left: 12%;
	float: left;
}

#top-img {
	float: left;
}

#top-menu {
	float: left;
	margin-top: 3.5%;
	margin-left: 40px;
}

#top-menu a {
	text-decoration: none;
	color: black;
	font-size: 18px;
}

#top-menu a:hover {
	color: #00BFFF;
}

#asd {
	font-size: 18px;
}

#top-login {
	float: right;
	margin-top: 3.5%;
	margin-left: 50px;
	font-size: 18px;
}

#img {
	width: 100%;
	height: auto; /* background-image:url(../image/img6.png) none; */
}

#content {
	width: 76%;
	float: left;
	margin-left: 12%;
	margin-top: 20px;
}

#content-left {
	width: 70%;
	height: auto;
	float: left; /* background-color:#FFA07A; */
}

#left-img {
	float: left;
}

#content-right {
	float: left;
	height: auto;
	width: 28%;
	margin-left: 20px; /* background-color:#FF7F50; */
}

#r1-img {
	float: left;
}

#r1-img {
	float: left;
}

#down {
	width: 100%;
	border-top: 1px solid #DCDCDC;
	float: left;
	margin-top: 20px;
}

#down-one {
	margin-left: 35.5%;
	margin-top: 20px;
}

#down-two {
	margin-left: 37.3%;
}

#down-three {
	margin-left: 41%;
	margin-bottom: 20px;
}

#input-btu {
	margin-left: 250px;
}

#king span {
	font-size: 20px;
	line-height: 30px;
}

#ddm {
	font-size: 38px;
	display: inline-block;
	text-align: center;
	float: left;
}

#dda {
	padding-left: 60px;
	font-size: 38px;
	display: inline-block;
	text-align: center;
	float: left;
}

#ddb {
	padding-left: 60px;
	font-size: 38px;
	display: inline-block;
	text-align: center;
	float: left;
}

#mmo {
	float: left;
	padding-left: 60px;
	font-size: 20px;
	text-align: center;
}

#mmo span {
	font-size: 30px;
	line-height: 30px;
	color: #FF4500;
}

#mmo input {
	width: 230px;
	height: 45px;
}

#kki {
	float: left;
}

#ind {
	width: 232px;
}

#sub {
	margin-top: 10px;
}

#ddc {
	padding-left: 40px;
	font-size: 38px;
	display: inline-block;
	text-align: center;
	float: left;
	font-size: 38px;
}

#king {
	overflow: auto;
}

.yong {
	background-color: #f3fafe;
	text-align: center;
	font-weight: bold;
	width: 140px;
	line-height: 30px;
	padding-left: 30px;
}

.sex {
	text-align: center;
	padding-left: 30px;
	width: 140px;
	line-height: 30px;
}

#cui, #jie, #qi {
	font-weight: bold;
	font-size: 20px;
	text-align: center;
}

#tablediv {
	float: left;
}

#ttablediv {
	float: left;
}

.yyyy {
	width: 33.3%;
	text-align: center;
}
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
				<a href="/p2p/user/personal.do">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;
			</div>
			<div id="top-login">
				欢迎<a href="/p2p/user/personal.do">${abcd}</a>!加入宜人贷&nbsp;&nbsp;&nbsp;&nbsp;
				<a>帮助</a><span>|</span><a href="/p2p/jsp/Home.jsp">退出</a>
			</div>
		</div>


		<div id="content">
			<div id="king">
				<div id="kki">

					<c:forEach items="${listp }" var="li">

						<span> 类型：<c:if test="${li.projecttype ==1}">建筑类</c:if> <c:if
								test="${li.projecttype==2 }">科学类</c:if> <c:if
								test="${li.projecttype ==3}">医药类</c:if> <c:if
								test="${li.projecttype ==4}">金融类</c:if> <c:if
								test="${li.projecttype==5 }">食品类</c:if> <c:if
								test="${li.projecttype==6 }">军火类</c:if> &nbsp; &nbsp; &nbsp;
							&nbsp;项目名称：<b>${li.projectname }</b></span><span id="usermoney">${usermoney }</span>
						<br />

						<div id="ddm">
							<span>借款期限</span><br /><div id="ddlife">${li.lifeloan}</div>个月
						</div>
						<div id="dda">
							<span>收益率</span><br /> <div id="rrmoney">${li.ratemoney }</div> &#37;
						</div>
						<div id="ddb">
							<span>借款金额</span><br />${li.money }<br />元
						</div>
						<div id="ddc">
							<span>最少借款金额</span><br />100<br />元
						</div>
						<br />
				</div>
				<div id="mmo">
					<form action="/p2p/zkj/money.do?subjectid=${li.id }" method="post"
						onsubmit="return check(this)">
						<div>
							剩余可投资金额：<span id="asspan">${surplusmoney }</span>元
						</div>
						<br />
						<div class="input-group" id="ind">
							<span class="input-group-addon" id="basic-addon1">￥</span> <input
								type="text" class="form-control" name="money"
								placeholder="请输入投资金额" id="npu"
								onkeyup="this.value=this.value.replace(/[^0-9-]+/,'');"
								aria-describedby="basic-addon1"> <br />
						</div>
						<i id="did"></i><br /> <input id="sub" type="submit"
							class="btn btn-danger" value="立即投标">

					</form>

				</div>
				<span></span>
				<div></div>
				</c:forEach>
			</div>
			<hr>
			<div>

				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#home"
						aria-controls="home" role="tab" data-toggle="tab"><b>借款人详情</b></a></li>
					<li role="presentation"><a href="#profile"
						aria-controls="profile" role="tab" data-toggle="tab"><b>投标记录</b></a></li>

				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="home">
						<c:forEach items="${listpersonal }" var="li">
							<div id="ttablediv">
								<table>
									<tr>
										<td id="cui" colspan="3">借款人详情</td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td class="yong">用户呢称</td>
										<td class="sex">${username }</td>
										<td rowspan="8"><img src="../bootstrap/images/tong.png" /></td>
									</tr>
									<tr>
										<td class="yong">性别</td>
										<td class="sex">${li.SEX }</td>
										<td></td>
									</tr>
									<tr>
										<td class="yong">学历</td>
										<td class="sex">${li.EDUCATIONAL }</td>
										<td></td>
									</tr>
									<tr>
										<td class="yong">工作年限</td>
										<td class="sex">${li.WORKLIFE }年</td>
										<td></td>
									</tr>
									<tr>
										<td class="yong">是否已婚</td>
										<td class="sex">${li.MARRIAGE }</td>
										<td></td>
									</tr>
									<tr>
										<td class="yong">是否有房</td>
										<td class="sex">${li.HAVEROOM }</td>
										<td></td>
									</tr>
									<tr>
										<td class="yong">是否房贷</td>
										<td class="sex">${li.HOUSELOAN }</td>
										<td></td>
									</tr>
									<tr>
										<td class="yong">现居地</td>
										<td class="sex">${li.ADDRESS }</td>
										<td></td>
									</tr>
								</table>
							</div>
						</c:forEach>
						<div id="tablediv">
							<c:forEach items="${investinformation }" var="li">
								<table>
									<tr>
										<td id="jie" colspan="3">借款标信息</td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td class="yong">借款期限</td>
										<td class="sex">${li.LIFELOAN }</td>
										<td rowspan="7"><img src="../bootstrap/images/tong.png" /></td>
									</tr>
									<tr>
										<td class="yong">借款金额</td>
										<td class="sex">${li.MONEY }</td>
										<td></td>
									</tr>
									<tr>
										<td class="yong">收益率</td>
										<td class="sex">${li.RATEMONEY }</td>
										<td></td>
									</tr>
									<tr>
										<td class="yong">借款用途项目</td>
										<td class="sex">${li.PROJECTNAME }</td>
										<td></td>
									</tr>
									<tr>
										<td class="yong">项目地点</td>
										<td class="sex">${li.LOCATION }</td>
										<td></td>
									</tr>
									<tr>
										<td class="yong">还款方式</td>
										<td class="sex">${li.HAVEROOM }</td>
										<td></td>
									</tr>
									<tr>
										<td class="yong">投标截止时间</td>
										<td class="sex">${li.HOUSELOAN }</td>
										<td></td>
									</tr>
									<tr>
										<td class="yong"></td>
										<td class="sex">${li.ADDRESS }</td>
										<td></td>
									</tr>
								</table>

							</c:forEach>
						</div>


						<table>
							<tr>
								<td colspan="3" id="qi">其他审核资料</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td class="yong">身份证信息</td>
								<td class="sex">已验证</td>
								<td rowspan="6"><img src="../bootstrap/images/xiaodian.png" /></td>
							</tr>
							<tr>
								<td class="yong">银行卡信息</td>
								<td class="sex">已验证</td>
								<td></td>
							</tr>
							<tr>
								<td class="yong">信用报告</td>
								<td class="sex">已验证</td>
								<td></td>
							</tr>
							<tr>
								<td class="yong">收入证明</td>
								<td class="sex">已验证</td>
								<td></td>
							</tr>
							<tr>
								<td class="yong">工作证</td>
								<td class="sex">已验证</td>
								<td></td>
							</tr>
							<tr>
								<td class="yong">联系人信息</td>
								<td class="sex">已验证</td>
								<td></td>
							</tr>

						</table>

					</div>
					<div role="tabpanel" class="tab-pane" id="profile">
						<div>
							<table class="table table-hover">
								<tr>
									<td class="yyyy"><b>呢称</b></td>
									<td class="yyyy"><b>投标金额</b></td>
									<td class="yyyy"><b>投标日期</b></td>
								</tr>
								<c:forEach items="${selectinvestinformation}" var="li">
									<tr>
										<td class="yyyy">${li.USERNAME }</td>
										<td class="yyyy">${li.MONEY }元</td>
										<td class="yyyy"><fmt:formatDate value="${li.TIME }"
												pattern="yyyy年MM月dd日  " /></td>
									</tr>

								</c:forEach>
							</table>

						</div>



					</div>

				</div>

			</div>


			<div id="down">
				<div id="down-one">
					<span>联系我们</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>关于我们</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span>入驻我们</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>联系电话：1234567</span>
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
	function check(){
		var mm=parseFloat($("#npu").val());
	
		if(mm==""||mm==null){
			alert("请输入金额");
			return false;
		}else{
			var sp=$("#did");
			var asspan=parseFloat($("#asspan").html());
			var reg=/^[0-9]*$/;
			sp.empty();
				if(mm<100){
					sp.html("请输入大于100的整数");
					sp.css("color","red");
					sp.css("text-align","center");
					return false;
				}else{
					if(!reg.test(mm)){
						sp.html("请输入正整数");
						sp.css("color","purple");
						return false;
					}else{
							if(mm>asspan){
								
								sp.html("金额不能大于当前项目剩余的最大金额");
								sp.css("color","purple");
							return false;
						}else{
							var usermoney=parseFloat($("#usermoney").html());
							if(mm>usermoney){
								sp.html("您当前余额不足请及时充值");
								sp.css("color","red");
								return false;
							}
						}
					}
				}
	};
	}
	$("#npu").blur(function(){
		var asspan=parseFloat($("#asspan").html());
		var ddlife=parseFloat($("#ddlife").html());
		if(asspan>=100){
		var mm=parseFloat($("#npu").val());
		var sp=$("#did");
		var rrmoney=parseFloat($("#rrmoney").html());
		var reg=/^[0-9]*$/;
		sp.empty();
		if(mm==""||mm==null){
			sp.html("金额不能为空");
			sp.css("color","red");
			return false;
		}else{
			if(mm<100){
				
				sp.html("请输入大于100的整数");
				sp.css("color","red");
				sp.css("text-align","center");
				return false;
			}else{
				if(!reg.test(mm)){
					sp.html("请输入正整数");
					sp.css("color","purple");
					return false;
				}else{
						if(mm>asspan){
							sp.html("金额不能大于当前项目剩余的最大金额");
							sp.css("color","purple");
							return false;
					}else{
						var datac={};
						datac["rate"]=rrmoney;
						datac["life"]=ddlife;
						datac["mmoney"]=mm;
						
						$.ajax({
							type:"post",
							url:"/p2p/zkj/totalinterest.do",
							contentType:"application/json;charset=utf-8",
							data:JSON.stringify(datac), 
							success:function(da){
								alert(da);
								sp.html("预计所有收益为："+da.toFixed(2)+"元");
							}
						});

					}
				}
		}
		}
		}else{
			$("#npu").val("项目已完成")	;
			$("#npu").css("color","purple");
			$("#npu").css("font-size","20px");
			$("#npu").attr("disabled",true);
			$("#sub").css("display","none");
			return false;
		}
});
	$("#npu").change(function(){
		var asspan=parseFloat($("#asspan").html());
		var ddlife=parseFloat($("#ddlife").html());
		if(asspan>=100){
		var mm=parseFloat($("#npu").val());
		var sp=$("#did");
		var rrmoney=parseFloat($("#rrmoney").html());
		var reg=/^[0-9]*$/;
		sp.empty();
		if(mm==""||mm==null){
			sp.html("金额不能为空");
			sp.css("color","red");
			return false;
		}else{
			if(mm<100){
				
				sp.html("请输入大于100的整数");
				sp.css("color","red");
				sp.css("text-align","center");
				return false;
			}else{
				if(!reg.test(mm)){
					sp.html("请输入正整数");
					sp.css("color","purple");
					return false;
				}else{
						if(mm>asspan){
							sp.html("金额不能大于当前项目剩余的最大金额");
							sp.css("color","purple");
							return false;
					}else{
						var usermoney=parseFloat($("#usermoney").html());
						if(mm>usermoney){
							sp.html("您当前余额不足请及时充值");
							sp.css("color","red");
							return false;
						}else{
							var datab={};
							datab["rate"]=rrmoney;
							datab["life"]=ddlife;
							datab["mmoney"]=mm;
							alert(data.rate);
							alert(data.life);
							alert(data.mmoney);
							$.ajax({
								type:"post",
								url:"/p2p/zkj/totalinterest.do",
								contentType:"application/json;charset=utf-8",
								data:JSON.stringify(datab),
								success:function(da){
									sp.html("预计所有收益为："+da+"元");
								}
							});
							
							
							
						}
						

					}
				}
		}
		}
		}else{
			$("#npu").val("项目已完成")	;
			$("#npu").css("color","purple");
			$("#npu").css("font-size","20px");
			$("#npu").attr("disabled",true);
			$("#sub").css("display","none");
			return false;
		}
	});
$("#asd").click(function(){
		
		$.ajax({
			 type:"post",
			// dataType:"json",
			 url:"/p2p/add/name.do",
			// data:JSON.stringify(row),
			//data:str1,
			 contentType:"application/json;charset=utf-8",
			 success:function(dataa){
				 if(dataa==null||dataa==""){
					 window.location.href="../jsp/jiekuan.jsp";
				 }else{
					
					 window.location.href="../jsp/xiangmushenqing.jsp";
				 }
			 }
		 });

	});
	$(function(){
		var asspan=parseFloat($("#asspan").html());
		if(asspan<100){
			$("#npu").val("项目已完成")	;
			$("#npu").css("color","purple");
			$("#npu").css("font-size","20px");
			$("#npu").attr("disabled",true);
			$("#sub").css("display","none");
			return false;
		}
	});
</script>

