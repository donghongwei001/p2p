<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		div a{text-decoration:none;}
		#body{width:100%;height:auto;}
		#top{width:76%;height:auto;align:center;margin-left:12%;float:left;}
		#top-img{float:left;}
		#top-menu{float:left;margin-top:3.5%;margin-left:40px;}
		#top-menu a{text-decoration:none;color:black;font-size:18px;}
		#top-menu a:hover{color:#00BFFF;}
		#top-login{float:right;margin-top:3%;margin-left:50px;font-size:18px;}		
		#address{width:100%;height:30px;float:left;background-color:#87BCEE;}
		#address-text{width:76%;font-size:17px;float:left;margin-left:12%;margin-top:0px;}		
		#con{width:100%;height:801px;float:left;background-color:#F5F5F5;}
		#content{width:76%;float:left;margin-left:12%;margin-top:30px;}
		#content-left{width:20%;height:800px;float:left;}
		#left1:hover{background-color:#F5F5F5;}
		#left2:hover{background-color:#F5F5F5;}
		#left3:hover{background-color:#F5F5F5;}
		#left5:hover{background-color:#F5F5F5;}
		#left6:hover{background-color:#F5F5F5;}
		#left1{text-align:center;font-size:18px;width:100%;height:50px;line-height:50px;background-color:#DCDCDC;}
		#left2{text-align:center;font-size:18px;width:100%;height:50px;margin-top:5px;line-height:50px;background-color:#DCDCDC;}
		#left3{text-align:center;font-size:18px;width:100%;height:50px;margin-top:5px;line-height:50px;background-color:#DCDCDC;}
		#left4{text-align:center;font-size:18px;width:100%;height:50px;margin-top:5px;line-height:50px;background-color:#F5F5F5;}
		#left5{text-align:center;font-size:18px;width:100%;height:50px;margin-top:5px;line-height:50px;background-color:#DCDCDC;}
		#left6{text-align:center;font-size:18px;width:100%;height:50px;margin-top:5px;line-height:50px;background-color:#DCDCDC;}
		#content-right{width:76%;height:800px;float:left;margin-left:15px;background-color:#FFFFFF;}
		#right-div{width:86%;height:auto;float:left;margin:50px 50px 50px 40px;}
		#div-img{float:left;}
		#div-name{float:left;margin-left:20px;margin-right:20px;}	
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
		#btn {
			
			margin-left:400px;
			
		}
		
		#HuanK_button {
			width:76%;
			height:auto;
			border:1px solid gray;
		}
		#HuanK_information{
			width:76%;
			height:100px;
			line-height:100px;
			text-align:center;
			border:1px solid gray;
			
		}
		#HuanK_btn{
			float:right;
		}
		#HuanK{
			margin-top:20px;
			margin-left:95px;
		}
		#ios{
			width:76%;
			height:100px;
			text-align:center;
			border:1px solid gray;
		}
		/* #headingOne{
			height:50px;
			text-align:center;
			
		}
		#headingOne a{
			line-height:50px;
		}
		
		#panelOne{
			width:76%;
			margin-top:60px;
			margin-left:95px;
		} */
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
				<a href="#">我要借款</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="/p2p/jsp/zxlpersonal.jsp">个人中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;						
			</div>
			<div id="top-login">										
				<span>尊敬的<a href="/p2p/jsp/zxlpersonal.jsp">${abcd}</a>,您好！ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<a href="#"><span>帮助</span></a><span>|</span><a href="/p2p/jsp/Home.jsp"><span>退出</span></a>
			</div>
		</div>
		<div id="address">
			<div id="address-text">
				<span>账户首页<span>>></span>我的资产</span>
			</div>
		</div>
		<div id="con">		
			<div id="content">
				<div id="content-left">
					<div id="left1"><a href="/p2p/user/zxlpersonal.do">我的资产</a></div>
					<div id="left2"><a href="/p2p/user/myproject.do">我的项目</a></div>
					<div id="left3"><a href="/p2p/user/mytouzi.do">我的投资</a></div>
					<div id="left4"><a href="/p2p/user/myhuankuan.do">我的还款</a></div>
					<div id="left5"><a href="/p2p/user/mypersonal.do">个人信息</a></div>
					<div id="left6"><a href="/p2p/jsp/myupdatepwd.jsp">修改密码</a></div>
				</div>
			
				<div id="content-right">
					<div id="HuanK">
						<div id="HuanK_button" class="bg-info">
							<ul id="myTab" class="nav nav-tabs">
								<li class="active">
									<a href="#HuanK_information" data-toggle="tab">
										<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>按月还款 
									</a>
								</li>
								<li id="HuanK_btn">
										<a href="#ios" data-toggle="tab"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>一次还清 </a> 
								</li>	
							</ul>
							
							<!-- <button type="button"  class="btn btn-default">
							  
							</button>
							<button type="button" id="HuanK_btn" class="btn btn-default">
							  
							</button> -->
						</div>
						<div id="myTabContent" class="tab-content">
							<div id="HuanK_information" class="tab-pane fade in active">
								
								<span>本期应还款:元</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>还款截止日期:</span>
								&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-info"> 立即还款 </button>
								
							</div>
							
							<div class="tab-pane fade" id="ios">
								<p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和 Apple 
									TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS 是苹果的移动版本。</p>
							</div>
						</div>
					</div>
					
					
					<!--<ul id="myTab" class="nav nav-tabs">
						<li class="active">
							<a href="#home" data-toggle="tab">
								 菜鸟教程
							</a>
						</li>
						<li>
								<a href="#ios" data-toggle="tab"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>按月还款</a> 
						</li>	
						
					</ul>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="home">
							<p>菜鸟教程是一个提供最新的web技术站点，本站免费提供了建站相关的技术文档，帮助广大web技术爱好者快速入门并建立自己的网站。菜鸟先飞早入行——学的不仅是技术，更是梦想。</p>
						</div>
						<div class="tab-pane fade" id="ios">
							<p>iOS 是一个由苹果公司开发和发布的手机操作系统。最初是于 2007 年首次发布 iPhone、iPod Touch 和 Apple 
								TV。iOS 派生自 OS X，它们共享 Darwin 基础。OS X 操作系统是用在苹果电脑上，iOS 是苹果的移动版本。</p>
						</div>
						<div class="tab-pane fade" id="jmeter">
							<p>jMeter 是一款开源的测试软件。它是 100% 纯 Java 应用程序，用于负载和性能测试。</p>
						</div>
						<div class="tab-pane fade" id="ejb">
							<p>Enterprise Java Beans（EJB）是一个创建高度可扩展性和强大企业级应用程序的开发架构，部署在兼容应用程序服务器（比如 JBOSS、Web Logic 等）的 J2EE 上。
							</p>
						</div>
					</div> -->
					
					
					 <!--  <div class="panel panel-default" id="panelOne">
					    <div class="bg-info" role="tab" id="headingOne">
					      <h4 class="panel-title">
					        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					          	还款详情
					        </a>
					      </h4>
					    </div>
					    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
					      <div class="panel-body">
					        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
					      </div>
					    </div>
					  </div> -->
								
							
					<div id="right-div">						
						<table class="table table-hover">
								<tr class="active">
									<th><h5>还款日期</h5></th>
									<th><h5>项目名称</h5></th>
									<th><h5>还款资金</h5></th>
									<th><h5>平台费用</h5></th>
									<th><h5>实收金额</h5></th>
									<th><h5>逾期天数</h5></th>
									<th><h5>还款状态</h5></th>
									<th><h5>操作</h5></th>
								</tr>
							
								<tr>
									<td>0</td>
									<td></td>
									<td></td>
									<td></td>
									<td>0</td>
									<td>0</td>
									<td></td>
								    <td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">还款</button></td>
								</tr>
						</table>
					</div>
					
					   <!-- Button trigger modal -->


						<!-- Modal -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
						      </div>
						      <div class="modal-body">
						        	<form id="myForm" method="post">
										<table width="100%" class="formtable">
											<c:forEach items="${huankuan}" var="h">
											<tr>
												<th height="40" >应还款：</th><td>${h.hkmoney}元</td>
											</tr>
											</c:forEach>
											<tr class="">
												<th height="40">还款金额：</th><td><input type="text"/></td>
											</tr>
											
										</table>
												
										<button id="btn" type="button" class="btn btn-default" data-dismiss="modal">关闭</button><button type="button" class="btn btn-primary">提交</button>
												
									</form>
						      </div>
						      
						    </div>
						  </div>
						</div>
					
					<!-- <div id="handlerDialog">
						<form id="myForm" method="post">
							<table width="100%" class="formtable">
								<tr>
									<th height="40" >应还款：</th><td></td>
								</tr>
								<tr>
									<th height="40">密码：</th><td><input id="emppwd" name="emppwd" class="easyui-validatebox" data-options="required:true"></td>
								</tr>
								
								<tr>
									<th height="40"></th><td><input type="button" id="rolename"></td>
								</tr>
							</table>
						</form>
					</div>		 -->			
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