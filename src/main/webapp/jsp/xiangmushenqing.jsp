<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

    <!-- Bootstrap core CSS -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
  
    <script>window.jQuery || document.write('<script src="js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <script src="../easyui/js/jquery.min.js"></script>
    
 	<script src="../bootstrap/js/shengshijilian/distpicker.data.js"></script>
	  <script src="../bootstrap/js/shengshijilian/distpicker.js"></script>
	  <script src="../bootstrap/js/shengshijilian/main.js"></script>
</head>
<body>
	<form class="form-horizontal" name="myform" action="/p2p/add/project.do" method="post">
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">项目名称</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="inputEmail3" name="projectname">
			</div>
		 </div>
		 <div class="form-group">
			<label for="input3" class="col-sm-2 control-label">项目类型</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="input3" name="projecttype" placeholder="厦门花木类型">
			</div>
		 </div>
		 <div class="form-group">
			<label for="inputE" class="col-sm-2 control-label">项目地点</label>
			<div class="col-sm-5">
				 <div id="distpicker2">
					  <select name="location1"  ></select>
					  <select name="location2"></select>
					  <select name="location3"></select>
				</div>
				
			</div>
		 </div>
		 <div class="form-group">
			<label for="inputEm" class="col-sm-2 control-label">申请金额</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="inputEm" name="money" placeholder="8000">
			</div>
		 </div>
		 <div class="form-group">
			<label for="input2" class="col-sm-2 control-label">借款期限</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="input2" name="lifeloan" >
			</div>
		 </div>
		 <div class="form-group">
			<label for="input2" class="col-sm-2 control-label">利率</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="input2" name="ratemoney"  >
			</div>
		 </div>
		 <div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">附件</label>
			<div class="col-sm-10">
				<textarea name="sponsor_info" id="" cols="90" rows="8" class="form_textarea" name="appendix"></textarea>
				<input  type="submit"/ >
			</div>
		 </div>
		
		 
	</form>
</body>
</html>


<script>
$("#distpicker2").distpicker({
	  province: "---- 所在省 ----",
	  city: "---- 所在市 ----",
	  district: "---- 所在区 ----"
	});
</script>

