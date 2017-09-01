<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="../easyui/js/jquery.min.js"></script>
</head>
<body>
	<table>
		<tr><td></td>
			<td>用户</td>
			<td>项目名称</td>
			<td>项目类型</td>
			<td>项目地点</td>
			<td>申请时间</td>
			<td>金额</td>
			<td>借款期限</td>
			<td>利率</td>
			<td>附件</td>
			<td>审核状态</td>
		</tr>
		<c:forEach items="${ly }" var="l">
			<tr>
				<td> <input type="radio" name="nn"></td>
				<td>${l.userid }</td>
				<td>${l.projectname }</td>
				<td>${l.projecttype }</td>
				<td>${l.location }</td>
				<td>${l.time }</td>
				<td>${l.money }</td>
				<td>${l.lifeloan }</td>
				<td>${l.ratemoney }</td>
				<td>${l.appendix }</td>
				<td>${l.aduitstate }</td>
				<td><input type="radio" value="1" name="xm_states" />同意
				<input type="radio" value="0" name="xm_states" />拒绝</td>
				<td><input type="text" id="person"></td>
				<td><textarea name="note" cols=15 rows=1 id="reason"></textarea></td>
				
				<td><button type="button" value="submit" class="btn default btn-xs" id="addfirst">审核</button></td>
			</tr>
		</c:forEach>
	</table>
	
	<script type="text/javascript">
	$(function(){
		$("#addfirst").click(function(){
			alert("111111");
			var data={};
			//data["id"]=${l.userid };
			data["status"]=$("input[name='xm_states']:checked").val();
			data["time"]=new Date();
			data["person"]=$("#person").val();
			date["reason"]=$("#reason").val();
			$.ajax({
				type : "post",
				url : "/p2p/first/shenhe.do",
				contentType :"application/json;charset=UTF-8",
				data:JSON.stringify(data),
				success : function(data1){
					alert("success");
				}
			});
		})
	})
		
	</script>
</body>
</html>