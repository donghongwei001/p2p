<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>personal</title>
    <script src="../easyui/js/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery.min.js"><\/script>')</script>
    <link rel="stylesheet" type="text/css" href="../easyui/css/icon.css" />
<link rel="stylesheet" type="text/css" href="../easyui/css/easyui.css" />
<script src="../easyui/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="../easyui/js/easyui-lang-zh_CN.js"></script>
	<style type="text/css">
		body{/* background-color:#F5F5F5; */}
		div a{text-decoration:none;}
		#body{width:100%;height:auto;}
		#top{width:76%;height:auto;align:center;margin-left:11%;float:left;}
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
				<img src="../image/top.PNG" />
			</div>			
			<div id="top-menu">
				<a href="/p2p/user/listpro.do">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

				<a href="/p2p/user/listtouzi.do">我要投资</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a id="asd">我要借款&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
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
					<div id="left4"><a href="/p2p/jsp/myhuankuan.jsp">我的还款</a></div>
					<div id="left5"><a href="/p2p/user/mypersonal.do">个人信息</a></div>
					<div id="left6"><a href="/p2p/jsp/myupdatepwd.jsp">修改密码</a></div>
				</div>
			
				<div id="content-right">
																			
					<div id="right-div">						

						
						<div id="toolbar">
						<a id="addbtn" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'">确认还款 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
			</div>
						<table id="tb">
						

						</table>
					</div>
					
				   <!-- Button trigger modal -->



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
<script type="text/javascript">
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
				
				 if(dataa==null||dataa==""){
					 window.location.href="../jsp/jiekuan.jsp";
				 }else{
					
					 window.location.href="../jsp/xiangmushenqing.jsp";
				 }
			 }
		 });
	});
	$(function(){
		$('#tb').datagrid({
			url : '/p2p/user/myhuankuan.do',
			striped : true,
			rownumbers : true,
			fitColumns : true,
			singleSelect : false, //是否只能选择一行
			pageSize : 10,//每页显示的记录条数，默认为10 
			pageList : [ 5, 10, 15 ],//可以设置每页记录条数的列表 
			beforePageText : '第',//页数文本框前显示的汉字 
			afterPageText : '页    共 {pages} 页',
			pagination : true, //分页工具栏
			pagePosition : "bottom",
			toolbar : "#toolbar",
			queryParams : {
				
			},

			/* onClickRow:function(rowIndex,rowData){
				 var rowInfo = $("#tb").datagrid('getChecked');
				 
				 if (rowInfo) {
					alert("已经选中的行");
				}
			}, */
			//fit : true,  
			onLoadSuccess : function(list) {

			},
			columns : [ [{
				field : 'xuanze',
				title : 'Code',
				width : 200,
				align : 'center',
				checkbox : true
			},{
				field : 'ID',
				title : '项目id',
				width : 150,
				align : 'center'
			}, {
				field : 'PROJECTNAME',
				title : '项目名称',
				width : 150,
				align : 'center'
			},  {
				field : 'time1',
				title : '还款日期',
				width : 150,
				align : 'center'
			},{
				field : 'MONTHMONEY',
				title : '还款本金',
				width : 150,
				align : 'center'
			},{
				field : 'MONTHINTEREST',
				title : '还款利率',
				width : 150,
				align : 'center'
			},{
				field : 'MONTHPRINCIPAL',
				title : '还款本息',
				width : 150,
				align : 'center'
			},{
				field : 'MONTHSTATUS',
				title : '还款状态',
				width : 150,
				align : 'center',
				formatter : function(value,row,index){
					   
					if(value=='8'){return '未还款'}  
						 else {return '已还款'}                        
						 }
			}] ]
		});
		$("#addbtn").click(function(){
			var row = $('#tb').datagrid("getSelections");
			if (row.length==1) {
				var index=row[0].ID;
				var qian=row[0].MONTHPRINCIPAL;
				var date=row[0].time1;
				var statu=row[0].MONTHSTATUS;
				if (statu=="8") {
					
				
				alert(index);
				if (window.confirm('你确定还款吗？')) {
				$.ajax({ //发送了一个新的请求，与按钮这个请求完全不是一马事
					type : "post", //请求方式
					url : "/p2p/user/huankuan.do", //请求地址
					data:{id:index,money:qian,time:date},
					success : function(data) { //请求成功后调用的回调函数，参数1【data】 请求返回的数据，这个数据类型是dataType制定
							alert(data);
						if (data=="0") {
							alert("今日不用还款哦！")
						}else if (data=="1") {
							alert("您的金额不足，请充值!")
						}else {
							alert("还款成功！")
						}
						window.location.reload();
		        			
					}
				
				});
				}
				}else {
					alert("该条账单不可以还款")
				}
			} else {
				alert("请选择一条账单再进行还款！");
			} 
		})
	})
</script>