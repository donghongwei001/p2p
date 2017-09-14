<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>personal</title>
	<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="../easyui/js/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    
	<style type="text/css">
		body{/* background-color:#F5F5F5; */}
		a{text-decoration:none;}
		#body{width:100%;height:auto;}
		#top{width:76%;height:auto;align:center;margin-left:11%;float:left;}
		#top-img{float:left;}
		#top-menu{float:left;margin-top:3.5%;margin-left:40px;}
		#top-menu a{text-decoration:none;color:black;font-size:18px;}
		#top-menu a:hover{color:#00BFFF;}
		#top-login{float:right;margin-top:3%;margin-left:50px;font-size:18px;}		
		#address{width:100%;height:30px;float:left;background-color:#87BCEE;}
		#address-text{width:76%;font-size:17px;float:left;margin-left:12%;margin-top:0px;}		
		#asd{font-size:18px;}
		#asd:hover{color:#00BFFF;}
		#con{width:100%;height:801px;float:left;background-color:#F5F5F5;}
		#content{width:76%;float:left;margin-left:12%;margin-top:30px;}
		#content-left{width:20%;height:800px;float:left;}
		#left2:hover{background-color:#F5F5F5;}
		#left3:hover{background-color:#F5F5F5;}
		#left4:hover{background-color:#F5F5F5;}
		#left5:hover{background-color:#F5F5F5;}
		#left6:hover{background-color:#F5F5F5;}
		#left1{text-align:center;font-size:18px;width:100%;height:50px;line-height:50px;background-color:#F5F5F5;}
		#left2{text-align:center;font-size:18px;width:100%;height:50px;margin-top:5px;line-height:50px;background-color:#DCDCDC;}
		#left3{text-align:center;font-size:18px;width:100%;height:50px;margin-top:5px;line-height:50px;background-color:#DCDCDC;}
		#left4{text-align:center;font-size:18px;width:100%;height:50px;margin-top:5px;line-height:50px;background-color:#DCDCDC;}
		#left5{text-align:center;font-size:18px;width:100%;height:50px;margin-top:5px;line-height:50px;background-color:#DCDCDC;}
		#left6{text-align:center;font-size:18px;width:100%;height:50px;margin-top:5px;line-height:50px;background-color:#DCDCDC;}
		#content-right{width:78%;height:800px;float:left;margin-left:15px;background-color:#FFFFFF;}
		#left-div{width:76%;height:180px;border-bottom:1px dashed #DCDCDC;float:left;margin:50px 50px 50px 90px;}
		#div-img{float:left;}
		#div-name{float:left;margin-left:20px;margin-right:20px;font-size:18px;font-color:#1E90FF;}	
		#th{float:left;width:10px;height:130px;border-right:1px dashed #DCDCDC;}
		#div-yuer{float:left;margin-left:30px;}
		#div-yuer span{font-size:18px;}
		#div-money{float:left;margin-top:60px;}
		#span-money{font-size:20px;color:red;}
		#right-but{width:76%;height:60px;float:left;margin-left:90px;}
		#recharge{float:left;margin-left:20%;}
		#cash{float:left;margin-left:20%;}
		#down{width:100%;border-top:1px solid #DCDCDC;float:left;}
		#down-one{margin-left:35.5%;margin-top:20px;}
		#down-two{margin-left:37.3%;}
		#down-three{margin-left:41%;margin-bottom:20px;}
		#input-btu{margin-left:250px;}
		
		#modalcz{margin-top:10%;}
	</style>
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="../easyui/js/jquery.min.js"></script>
<script>
	window.jQuery
			|| document.write(
					'<script src="js/vendor/jquery.min.js"><\/script>')
</script>
<script src="../bootstrap/js/bootstrap.min.js"></script>


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
				<a href="/p2p/user/zxlpersonal.do">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;
			</div>
			<div id="top-login">
				欢迎<a href="/p2p/user/zxlpersonal.do">${abcd}</a>!加入宜人贷&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#"><span>帮助</span></a><span>|</span><a
					href="/p2p/jsp/Home.jsp"><span>退出</span></a>
			</div>
		</div>
		<div id="address">
			<div id="address-text">
				<span>账户首页<span>>></span>我的资产
				</span>
			</div>
		</div>
		<div id="con">
			<div id="content">
				<div id="content-left">
					<div id="left1">
						<a href="/p2p/user/zxlpersonal.do">我的资产</a>
					</div>
					<div id="left2">
						<a href="/p2p/user/myproject.do">我的项目</a>
					</div>
					<div id="left3">
						<a href="/p2p/user/mytouzi.do">我的投资</a>
					</div>
					<div id="left4">
						<a href="/p2p/user/myhuankuan.do">我的还款</a>
					</div>
					<div id="left5">
						<a href="/p2p/user/mypersonal.do">个人信息</a>
					</div>
					<div id="left6">
						<a href="/p2p/jsp/myupdatepwd.jsp">修改密码</a>
					</div>
				</div>
				<div id="content-right">
					<div id="left-div">
						<div id="div-img">
							<img src="../image/tx.jpg" width="130px" height="130px">
						</div>
						<div id="div-name">
							<span>${abcd}</span>
						</div>
						<div id="th"></div>
						<div id="div-yuer">
							<span>账户余额：</span>
						</div>
						<c:forEach items="${listmoney }" var="user">
							<div id="div-money">
								<span id="span-money">${user.money}</span>&nbsp;&nbsp;&nbsp;<span>元</span>
							</div>
						</c:forEach>
					</div>
					<div id="right-but">
						<div id="recharge">
							<button type="button" class="btn btn-primary btn-lg"
								data-toggle="modal" data-target="#myModal">我要充值</button>
						</div>
						<div id="cash">
							<button type="button" id="tixian" style="font-size: 18px"
								class="btn btn-info">我要提现</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--充值模态框  -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" data-backdrop="static"
			data-keyboard="false">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">我的充值</h4>
					</div>
					<div class="modal-body">
						<div class="input-group">
							<span class="input-group-addon">请输入充值金额：</span> <input
								type="text" class="form-control" id="jine"
								onkeyup="this.value=this.value.replace(/[^0-9-]+/,'');"
								aria-label="Amount (to the nearest dollar)"> <span
								class="input-group-addon">元</span>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" id="quxiao" class="btn btn-default" data-dismiss="modal">取消</button>
						<button type="button" id="chongzhi" class="btn btn-primary">确认充值</button>
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
</body>
</html>

<script>
	$(function() {
		$("#chongzhi").click(function(){
			var money=$("#jine").val();
			if (money!="") {
				$.ajax({
					type : "post",
					// dataType:"json",
					url : "/p2p/user/chongzhi.do",
					// data:JSON.stringify(row),
					data:{jine:$("#jine").val()},
					//contentType:"application/json;charset=utf-8",
					success : function(dataa) {
						alert("充值成功！");
						window.location.reload();
					}
				});
			
			} else {
				alert("请输入充值金额！")
			}
		}) 
		$("#quxiao").click(function(){
			$("#jine").val("");
		})
		$("#tixian").click(function(){
			if (window.confirm('你确定提现吗？')) {
				$.ajax({
					type : "post",
					// dataType:"json",
					url : "/p2p/user/tixian.do",
					// data:JSON.stringify(row),
					//data:{jine:$("#jine").val()},
					//contentType:"application/json;charset=utf-8",
					success : function(dataa) {
						alert("提现成功！");
						window.location.reload();
					}
				});
			}
		})
	})

	$("#asd").click(function() {
		$.ajax({
			type : "post",
			// dataType:"json",
			url : "/p2p/add/name.do",
			// data:JSON.stringify(row),
			//data : str1,
			contentType : "application/json;charset=utf-8",
			success : function(dataa) {
				if (dataa == null || dataa == "") {
					window.location.href = "../jsp/jiekuan.jsp";
				} else {
					window.location.href = "../jsp/xiangmushenqing.jsp";
				}
			}
		});
	});
</script>