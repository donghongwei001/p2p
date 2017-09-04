<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../easyui/css/icon.css" />
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css" />
<link href="../bootstrap-table/bootstrap-table.css" rel="stylesheet">
<script src="../easyui/js/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="js/vendor/jquery.min.js"><\/script>')
</script>

<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../bootstrap-table/bootstrap-table.js"></script>
<script src="../bootstrap-table/bootstrap-table-zh-CN.js"></script>
<script src="../easyui/js/jquery.easyui.min.js"></script>

<script type="text/javascript" src="../easyui/js/easyui-lang-zh_CN.js"></script>
<script src="../bootstrap/js/shengshijilian/distpicker.data.js"></script>

<style type="text/css">
.panel-header, .panel-body, .tab-pane {
	border-width: 0px;
}

.datagrid, .combo-p {
	border: solid 1px #D4D4D4;
}

.datagrid * {
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
}

body {
	padding: 70px;
	background: #FCFCFC;
}

#profile {
	height: auto;
	width: 100%;
	height: 100%;
}

#top-img {
	margin-left: 100px;
	float: left;
}

#daohang {
	font-size: 20px;
}

#BODY {
	margin-left: 400px;
}

#tubiao {
	margin-left: 220px;
}

#daow {
	width: 120px;
	text-align: center;
}

#table {
	margin-left: 25%;
}

#zuo {
	width: 800px;
	height: 1000px;
}

#you {
	height: 1000px;
	width: 180px;
}

#three-top {
	margin-left: -5%;
}

#tuone {
	width: 200px;
	height: 200px;
	float: left;
	margin-top: -46%;
	margin-left: 4%;
}

#tuthree {
	width: 200px;
	height: 200px;
	float: left;
	margin-top: -46%;
	margin-left: 34%;
}

#tutwo {
	width: 200px;
	height: 200px;
	float: left;
	margin-top: -46%;
	margin-left: 64%;
}

#tuone img:hover, #tutwo img:hover, #tuthree img:hover {
	width: 250px;
	height: 250px;
	padding: 0;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	<div style="margin-top: 1%; margin-left: 70%;" class="container">您好！欢迎来到宜人贷！
	</div>
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
			<li id="daow" role="presentation" class="active"><a id="shouye"
				href="#home" aria-controls="home" role="tab" data-toggle="tab"><span
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
			<li id="daow" role="presentation"><a href="#protect"
				aria-controls="protect" role="tab" data-toggle="tab"><span
					id="daohang">安全保障</span></a></li>
			<li id="daow" role="presentation"><a href="#xinshou"
				aria-controls="xinshou" role="tab" data-toggle="tab"><span
					id="daohang">新手引导</span></a></li>

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
				<table id="table" border="1">
					<tr>
						<td id="zuo">
							<div id="tuone">
								<a href="#messages" aria-controls="messages" role="tab"
									data-toggle="tab"><img src="../image/timg.jpg" width=100%
									height=100%> </a>
							</div>
							<div id="tutwo">
								<a href="#profile" aria-controls="profile" role="tab"
									data-toggle="tab"> <img src="../image/timg (1).jpg"
									width=100% height=100%>
								</a>
							</div>
							<div id="tuthree">
								<a href="#protect" aria-controls="protect" role="tab"
									data-toggle="tab"><img src="../image/timg (2).jpg"
									width=100% height=100%></a>
							</div>
							<table id="tbody" style="margin-top: -10%;"
								class="table table-hover">
								<tr>
									<th>项目名称</th>
									<th>需要金额</th>
									<th>还款年限</th>
									<th>项目类型</th>
									<th>姓名</th>
									<th>性别</th>
									<th>地址</th>
									<th>查看</th>


								</tr>
							</table> <a href="#profile" aria-controls="profile" role="tab"
							data-toggle="tab"><input type="button"
								style="width: 100%; height: 50px;" value="查看更多" /></a>
						</td>
						<td id="you">
							<button style="margin-top: -800px; margin-left: 20px;"
								type="button" class="btn btn-success  btn-lg">登录</button>
							<button style="margin-top: -800px;" type="button"
								class="btn btn-warning  btn-lg">注册</button>
							<table id="zong" style="margin-top:-300px;font-size:20px;" class="table table-hover">
								
							</table>
							<marquee direction=right>1111111111111</marquee>
						</td>
					</tr>
				</table>

			</div>

			<!-- //----------------------------------------------------------------- ------------------------------------>


			<!-- 融资页面 -->
			<div role="tabpanel" class="tab-pane" id="profile">

				<table id="table" border="1">
					<tr>
						<td id="zuo">
							<table id="touzi"></table>


						</td>

						<td id="you"></td>
					</tr>

				</table>

			</div>



			<div role="tabpanel" class="tab-pane" id="messages">

				<div id="three-top">
					<img src="../image/QQ20170831215435.png" />
				</div>
				<input id="motai" type="button"
					style="width: 50%; height: 50px; margin-left: 27%;" value="申请项目" />
				<div>
					<img src="../image/20170902111522.png" />

				</div>
				<div id="model"></div>


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
				<nav class="navbar navbar-default navbar-fixed-bottom">
				<div class="container"></div>
				</nav>

			</div>
			<div role="tabpanel" class="tab-pane" id="protect">

				<div id="three-top">
					<img src="../image/QQ20170902195358.png" />
				</div>
				<div>
					<img src="../image/QQ20170902195418.png" />
				</div>

			</div>
			<div role="tabpanel" class="tab-pane" id="xinshou">
				<img src="../image/QQ20170904163928.png" />
			</div>

		</div>
		<img src="../image/QQ20170902193200.png" width=100% height=100%>
</body>
<script type="text/javascript">
	$(function() {

		$("#shouye").click(function() {
			location.replace(location.href);
		})
		$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
					type : "post", //请求方式
					url : "/p2p/dyt/sel.do", //请求地址
					//data:{username:$("#sel").val()},//{nameha:$("#username").val(),passha:$("#password").val()},
					dataType : "json",
					success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定

						var jsonObj = eval(data);
						$
								.each(
										jsonObj,
										function(i, a) {
											var tTr = "<tr><td>"
													+ a.PROJECTNAME
													+ "</td><td>"
													+ a.MONEY
													+ "</td><td>"
													+ a.LIFELOAN
													+ "</td><td>"
													+ a.NAME
													+ "</td><td>"
													+ a.PERSONALNAME
													+ "</td><td>"
													+ a.SEX
													+ "</td><td>"
													+ a.ADDRESS
													+ "</td><td><a href='/p2p/dyt/demo.do?id="
													+ a.PROJECTID
													+ "'><button type='button' class='btn btn-default'>查看</button></a></td></tr>";
											$("#tbody").append(tTr);
										});

					}
				})
		$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
					type : "post", //请求方式
					url : "/p2p/dyt/zong.do", //请求地址
					//data:{username:$("#sel").val()},//{nameha:$("#username").val(),passha:$("#password").val()},
					dataType : "json",
					success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定

						var jsonObj = eval(data);
						$.each(jsonObj,function(i, a) {
											var tTr = "<tr><td align='center'>7天数据播报</td></tr><tr><td align='center'>"
													+ a.id1
													+ "人 获得借款</td></tr><tr><td align='center'>"
													+ a.id2
													+ "人 收到利息</td></tr>";
											$("#zong").append(tTr);
										});

					}
				})
		$("#motai").click(function() {
			$('#model').dialog("open");
		})
		$('#model').dialog({
			title : '我的模态框', //模态框标题
			width : 800, //宽度
			height : 600, //高度		
			close : true, //是否可以关闭
			top : 100, //上移100
			cache : false, //
			modal : true,//模态框 
			href : "xiangmushenqing.jsp",
			onOpen : function() {
				//product.init();
			},
			buttons : [ { //自带的按钮
				text : '保存',
				iconCls : 'icon-save',
				handler : function() {

				}
			}, {
				text : '关闭',
				handler : function() {
					alert("你确定取消吗？");
					$('#model').dialog("close")
				}
			} ]
		})

		$('#model').dialog("close");

		/* $('#touzi').datagrid(
				{
					url : '/p2p/dyt/selfabu.do',
					striped : true,
					rownumbers : true,
					fitColumns : true,
					singleSelect : false, //是否只能选择一行
					pageNumber:1,
					pageSize:10,
					pageList:[2,5,10,15,20],
					pagination : true, //分页工具栏
					pagePosition : "top",
					//toolbar : "#toolbar",
					onClickRow:function(rowIndex,rowData){
						var rowInfo = $("#tb").datagrid('getChecked');
						 
		   				 if (rowInfo) {
		        			alert("已经选中的行");
		    			}
					},
					//fit : true,  
					onLoadSuccess:function(list){
						alert("hguih");
					}, 
					 columns : [ [
							{
								field : 'xuanze',
								title : 'Code',
								width : 50,
								align : 'center',
								formatter : function(value,row,index){
									return '双击可查看详情'
								}
							},
							{
								field : 'PROJECTID',
								title : '用户名',
								width : 50,
								align : 'center'
							},
							{
								field : 'PROJECTNAME',
								title : '项目名称',
								width : 50,
								align : 'center'
							},
							{
								field : 'MINMONEY',
								title : '项目类型',
								width : 50,
								align : 'center'
							},
							{
								field : 'RATEMONEY',
								title : '项目地点',
								width : 50,
								align : 'center'
							},
							{
								field : 'LIFELOAN',
								title : '申请时间',
								width : 50,
								align : 'center'
							} ] ]
				}); */
		window.operateEvents = {
			'click .RoleOfA' : function(e, value, row, index) {
				window.location = "http://localhost:9088/p2p/dyt/demo.do?id="+row.PROJECTID;
			}
		};
		$('#touzi').bootstrapTable({
			url : "/p2p/dyt/selfabu.do", //请求后台的URL（*）
			dataType : "json",
			method : 'post', //请求方式（*）
			toolbar : '#toolbar', //工具按钮用哪个容器
			striped : true, //是否显示行间隔色
			//cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
			pagination : true, //是否显示分页（*）
			sortable : true, //是否启用排序
			sortOrder : "desc", //排序方式
			//queryParams: oTableInit.queryParams,//传递参数（*）
			sidePagination : "client", //分页方式：client客户端分页，server服务端分页（*）
			pageNumber : 1, //初始化加载第一页，默认第一页
			pageSize : 10, //每页的记录行数（*）
			pageList : [ 8, 25, 50, 100 ], //可供选择的每页的行数（*）
			//search : true, //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
			strictSearch : true,
			//showColumns : true, //是否显示所有的列
			//showRefresh : true, //是否显示刷新按钮
			minimumCountColumns : 2, //最少允许的列数
			clickToSelect : true, //是否启用点击选中行
			height : 800, //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
			uniqueId : "PROJECTID", //每一行的唯一标识，一般为主键列
			//showToggle : true, //是否显示详细视图和列表视图的切换按钮
			cardView : false, //是否显示详细视图
			detailView : false, //是否显示父子表
			columns : [ {
				field : 'PROJECTNAME',
				title : '项目名称',
				align : 'center'
			}, {
				field : 'MINMONEY',
				title : '最小金额',
				align : 'center'
			}, {
				field : 'RATEMONEY',
				title : '利率',
				align : 'center'
			}, {
				field : 'LIFELOAN',
				title : '使用年限',
				align : 'center'
			}, {
				field : 'PROJECTID',
				title : '项目id',
				hidden : true
			}, {
				field : 'operate',
				title : '操作',
				align : 'center',
				events : operateEvents,
				formatter : operateFormatter

			} ]
		});
		$('#touzi').bootstrapTable('hideColumn', 'PROJECTID');
		function operateFormatter(value, row, index) {
			return [
					'<button type="button" class="RoleOfA btn btn-default  btn-sm" style="margin-right:15px;">查看</button>', ]
					.join('');
		}

	})
</script>
</html>