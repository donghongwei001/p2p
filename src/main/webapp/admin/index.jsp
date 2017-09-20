<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="Bookmark" href="../admin/favicon.ico">
<link rel="Shortcut Icon" href="../admin/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css"
	href="../admin/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="../admin/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="../admin/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="../admin/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="../admin/static/h-ui.admin/css/style.css" />
</head>
<body>
	<!-- ------------------头部-------------------------头部-----------------------头部----------------------- -->
	<header class="navbar-wrapper">
		<div class="navbar navbar-fixed-top">
			<div class="container-fluid cl">
				<a class="logo navbar-logo f-l mr-10 hidden-xs"
					href="#"><h4>第七小组p2p后台管理</h4></h1></a> <a
					class="logo navbar-logo-m f-l mr-10 visible-xs"
					href="/aboutHui.shtml">H-ui</a> <span
					class="logo navbar-slogan f-l mr-10 hidden-xs">v3.1</span><a href="#" title="消息"><span
								class="badge badge-danger">未审核项目${count}</span><i class="Hui-iconfont"
								style="font-size: 18px">&#xe68a;</i></a> <a
					aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs"
					href="javascript:;">&#xe667;</a>
				<!-- <nav class="nav navbar-nav">
					<ul class="cl">
						<li class="dropDown dropDown_hover"><a href="javascript:;"
							class="dropDown_A"><i class="Hui-iconfont">&#xe600;</i> 新增 <i
								class="Hui-iconfont">&#xe6d5;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li><a href="javascript:;"
									onclick="article_add('添加资讯','article-add.html')"><i
										class="Hui-iconfont">&#xe616;</i> 资讯</a></li>
								<li><a href="javascript:;"
									onclick="picture_add('添加资讯','picture-add.html')"><i
										class="Hui-iconfont">&#xe613;</i> 图片</a></li>
								<li><a href="javascript:;"
									onclick="product_add('添加资讯','product-add.html')"><i
										class="Hui-iconfont">&#xe620;</i> 产品</a></li>
								<li><a href="javascript:;"
									onclick="member_add('添加用户','member-add.html','','510')"><i
										class="Hui-iconfont">&#xe60d;</i> 用户</a></li>
							</ul></li>
					</ul>
				</nav> -->
				
				
				
				<nav id="Hui-userbar"
					class="nav navbar-nav navbar-userbar hidden-xs">
					<ul class="cl">
					<li><a id="show" style="color:white;margin-top;15px;"></a></li>
						<li>${rolename}</li>
						
						<li class="dropDown dropDown_hover"><a href="#"
							class="dropDown_A">${user.empname}<i class="Hui-iconfont">&#xe6d5;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li><a href="javascript:;" onClick="myselfinfo()">个人信息</a></li>
								<li><a href="/p2p/login.jsp">切换账户</a></li>
								<li><a href="/p2p/login.jsp">退出</a></li>
							</ul></li>
						<li id="Hui-msg"><a href="#" title="消息"><span
								class="badge badge-danger">该下架项目${xiajia}</span><i class="Hui-iconfont"
								style="font-size: 18px">&#xe68a;</i></a></li>
						<li id="Hui-skin" class="dropDown right dropDown_hover"><a
							href="javascript:;" class="dropDown_A" title="换肤"><i
								class="Hui-iconfont" style="font-size: 18px">&#xe62a;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li><a href="javascript:;" data-val="default"
									title="默认（黑色）">默认（黑色）</a></li>
								<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
								<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
								<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
								<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
								<li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
							</ul></li>
						
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<!-- --------------头部结束------------头部结束-------------头部结束--------------头部结束--------------头部结束------------ -->

	<!-- --------------树形图--------------树形图--------------树形图--------------树形图--------------树形图-------------- -->
	<aside class="Hui-aside">
		<div class="menu_dropdown bk_2">
			<!-- -------------权限管理------------- -->
			<shiro:hasPermission name="rolepower">
				<dl id="menu-admin">
				
					<dt>
						<i class="Hui-iconfont">&#xe62d;</i>权限管理<i
							class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
					</dt>
					
					<dd>
						<ul><shiro:hasPermission name="rolemarger">
							<li><a data-href="../jsp/role.jsp" data-title="角色管理"
								href="javascript:void(0)">角色管理</a></li></shiro:hasPermission>
							<shiro:hasPermission name="powermarger">
							<li><a data-href="../jsp/power.jsp" data-title="权限管理"
								href="javascript:void(0)">权限管理</a></li></shiro:hasPermission>
						</ul>
					</dd>
				</dl>
			</shiro:hasPermission>
			<!-- -------------员工管理------------- -->
			<shiro:hasPermission name="empmarger">
			<dl id="menu-article">
				<dt>
					<i class="Hui-iconfont">&#xe616;</i> 员工管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>

					<ul><shiro:hasPermission name="empuser">
						<li><a data-href="../jsp/empuser.jsp" data-title="员工账号管理"
							href="javascript:void(0)">员工账号管理</a></li></shiro:hasPermission>
							<shiro:hasPermission name="empinfor">
						<li><a data-href="../jsp/empinfo.jsp" data-title="员工角色管理"
							href="javascript:void(0)">员工角色管理</a></li></shiro:hasPermission>
					</ul>
				</dd>
			</dl>
			</shiro:hasPermission>
			<!-- -------------用户管理------------- -->
			<shiro:hasPermission name="usermarger">
			<dl id="menu-picture">
				<dt>
					<i class="Hui-iconfont">&#xe613;</i>用户管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>

					<ul><shiro:hasPermission name="usernamemarger">
						<li><a data-href="../jsp/yonghu.jsp" data-title="用户账号管理"
							href="javascript:void(0)">用户账号管理</a></li></shiro:hasPermission>
						<shiro:hasPermission name="userinfor">

						<li><a data-href="../jsp/yonghuxinxi.jsp" data-title="用户信息管理"
							href="javascript:void(0)">用户信息管理</a></li></shiro:hasPermission>

					</ul>
				</dd>
			</dl>
			</shiro:hasPermission>
			<!-- -------------审核管理------------- -->
			<shiro:hasPermission name="checkmarger">
			<dl id="menu-comments">
				<dt>
					<i class="Hui-iconfont">&#xe622;</i> 审核管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul><shiro:hasPermission name="begincheck">
						<li><a data-href="http://localhost:9088/p2p/jsp/one.jsp"
							data-title="项目初审" href="javascript:;">项目初审</a></li></shiro:hasPermission>
						<shiro:hasPermission name="lastcheck"><li><a data-href="http://localhost:9088/p2p/jsp/first.jsp" data-title="项目终审"
							href="javascript:void(0)">项目终审</a></li></shiro:hasPermission>
					</ul>
				</dd>
			</dl>
			</shiro:hasPermission>
			<!-- -------------项目管理------------- -->
			<shiro:hasPermission name="projectmarger">
			<dl id="menu-product">
				<dt>
					<i class="Hui-iconfont">&#xe620;</i> 项目管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul><shiro:hasPermission name="nofirstcheck">
						<li><a data-href="http://localhost:9088/p2p/jsp/notfirst.jsp" data-title="项目初审未通过"
							href="javascript:void(0)">项目初审未通过</a></li></shiro:hasPermission>
						<shiro:hasPermission name="nolastcheck"><li><a data-href="http://localhost:9088/p2p/jsp/nottwo.jsp" data-title="项目终审未通过"
							href="javascript:void(0)">项目终审未通过</a></li></shiro:hasPermission>
						<shiro:hasPermission name="openproject"><li><a data-href="http://localhost:9088/p2p/jsp/Fabu.jsp" data-title="发布项目"
							href="javascript:void(0)">发布项目</a></li></shiro:hasPermission>

					</ul>
				</dd>
			</dl>
			</shiro:hasPermission>
			<!-- -------------投资管理------------- -->
			<shiro:hasPermission name="touzimarger">
			<dl id="menu-member">
				<dt>
					<i class="Hui-iconfont">&#xe60d;</i> 投资管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a data-href="http://localhost:9088/p2p/jsp/touzi.jsp" data-title="投资管理"
							href="javascript:void(0)">投资管理</a></li>
					</ul>
				</dd>
			</dl>
			</shiro:hasPermission>
			<!-- -------------还款管理------------- -->
			<shiro:hasPermission name="huankuanmarger">
			<dl id="menu-tongji">
				<dt>
					<i class="Hui-iconfont">&#xe61a;</i> 还款管理<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>

					<ul><shiro:hasPermission name="intime">
						<li><a data-href="../jsp/project.jsp" data-title="到期还款"

							href="javascript:void(0)">到期还款</a></li></shiro:hasPermission>
						<shiro:hasPermission name="outtime">
						<li><a data-href="../role/Hmoney.do" data-title="逾期还款"
							href="javascript:void(0)">逾期还款</a></li></shiro:hasPermission>



					</ul>
				</dd>
			</dl>
			</shiro:hasPermission>
			<!-- -------------统计查询------------- -->
			<shiro:hasPermission name="tongjisearch">
			<dl id="menu-system">
				<dt>
					<i class="Hui-iconfont">&#xe62e;</i> 统计查询<i
						class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>

					<ul><shiro:hasPermission name="peojecttongji">
						<li><a data-href="../jsp/SzhJsp/Xmtj.jsp" data-title="项目统计"
							href="javascript:void(0)">项目统计</a></li></shiro:hasPermission>
						<shiro:hasPermission name="zijintongji">
						<li><a data-href="../jsp/SzhJsp/Zjtj.jsp" data-title="资金统计"
							href="javascript:void(0)">资金统计</a></li></shiro:hasPermission>
						<shiro:hasPermission name="zhichushouru">
						<li><a data-href="../jsp/zhichushouru.jsp" data-title="支出收入详情"
							href="javascript:void(0)">支出收入详情</a></li></shiro:hasPermission>

					</ul>
				</dd>
			</dl>
			</shiro:hasPermission>
		</div>
	</aside>
	<!-- ----------------树形图结束---------------树形图结束---------------树形图结束---------------树形图结束--------------- -->


	<div class="dislpayArrow hidden-xs">
		<a class="pngfix" href="javascript:void(0);"
			onClick="displaynavbar(this)"></a>
	</div>
	<section class="Hui-article-box">
		<div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
			<div class="Hui-tabNav-wp">
				<ul id="min_title_list" class="acrossTab cl">
					<li class="active"><span title="我的桌面" data-href="aaa.html">我的桌面</span>
						<em></em></li>
				</ul>
			</div>
			<div class="Hui-tabNav-more btn-group">
				<a id="js-tabNav-prev" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a
					id="js-tabNav-next" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a>
			</div>
		</div>
		<div id="iframe_box" class="Hui-article">
			<div class="show_iframe">
				<div style="display: none" class="loading"></div>
				<iframe scrolling="yes" frameborder="0" src="aaa.html"></iframe>
			</div>
		</div>
	</section>

	<div class="contextMenu" id="Huiadminmenu">
		<ul>
			<li id="closethis">关闭当前</li>
			<li id="closeall">关闭全部</li>
		</ul>
	</div>
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script>
	<!--/_footer 作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="lib/jquery.contextmenu/jquery.contextmenu.r2.js"></script>
	<script type="text/javascript">
		$(function() {
			/*$("#min_title_list li").contextMenu('Huiadminmenu', {
				bindings: {
					'closethis': function(t) {
						console.log(t);
						if(t.find("i")){
							t.find("i").trigger("click");
						}		
					},
					'closeall': function(t) {
						alert('Trigger was '+t.id+'\nAction was Email');
					},
				}
			});*/
		});
		/*个人信息*/
		function myselfinfo() {
			layer.open({
				type : 1,
				area : [ '300px', '200px' ],
				fix : false, //不固定
				maxmin : true,
				shade : 0.4,
				title : '查看信息',
				content : '<div>管理员信息</div>'
			});
		}

		/*资讯-添加*/
		function article_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*图片-添加*/
		function picture_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*产品-添加*/
		function product_add(title, url) {
			var index = layer.open({
				type : 2,
				title : title,
				content : url
			});
			layer.full(index);
		}
		/*用户-添加*/
		function getLangDate(){
			var dateObj = new Date(); //表示当前系统时间的Date对象 
			var year = dateObj.getFullYear(); //当前系统时间的完整年份值
			var month = dateObj.getMonth()+1; //当前系统时间的月份值 
			var date = dateObj.getDate(); //当前系统时间的月份中的日
			var day = dateObj.getDay(); //当前系统时间中的星期值
			var weeks = ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"];
			var week = weeks[day]; //根据星期值，从数组中获取对应的星期字符串 
			var hour = dateObj.getHours(); //当前系统时间的小时值 
			var minute = dateObj.getMinutes(); //当前系统时间的分钟值
			var second = dateObj.getSeconds(); //当前系统时间的秒钟值
			//如果月、日、小时、分、秒的值小于10，在前面补0
			if(month<10){
			month = "0"+month;
			}
			if(date<10){
			date = "0"+date;
			}
			if(hour<10){
			hour = "0"+hour;
			}
			if(minute<10){
			minute = "0"+minute;
			}
			if(second<10){
			second = "0"+second;
			}
			var newDate = year+"年"+month+"月"+date+"日 "+week+" "+hour+":"+minute+":"+second;
			document.getElementById("show").innerHTML = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;系统公告：[ "+newDate+" ]";
			setTimeout("getLangDate()",1000);//每隔1秒重新调用一次该函数 
		}
		getLangDate();
	</script>


</body>
</html>