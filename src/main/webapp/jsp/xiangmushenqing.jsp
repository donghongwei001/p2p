<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

    <!-- Bootstrap core CSS -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
     <script src="../easyui/js/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
 
</head>
<body>
	<form class="form-horizontal" name="myform">
		<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">项目名称</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="inputEmail3" name="projectname">
			</div>
		 </div>
		 <div class="form-group">
			<label for="input3" class="col-sm-2 control-label">项目类型</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="input3" name="projecttype" placeholder="疾病救助/扶贫/救灾/教育/助学/环保/动物保护">
			</div>
		 </div>
		 <div class="form-group">
			<label for="inputE" class="col-sm-2 control-label">项目地点</label>
			<div class="col-sm-5">
				<select onchange="bian()"  name="sheng">
					<option selected=>请选择</option>
					<option value="河南省">河南省</option>
					<option value="陕西省">陕西省</option>
					<option value="山西省">山西省</option>
				</select>
				<select name="city1">
					<option>请选择</option>
				</select>
				
			</div>
		 </div>
		 <div class="form-group">
			<label for="inputEm" class="col-sm-2 control-label">申请金额</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="inputEm"  placeholder="8000">
			</div>
		 </div>
		 <div class="form-group">
			<label for="input2" class="col-sm-2 control-label">借款期限</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="input2"  placeholder="孤儿/贫困人口/弱势群体/残障/自闭症">
			</div>
		 </div>
		 <div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">附件</label>
			<div class="col-sm-10">
				<textarea name="sponsor_info" id="" cols="90" rows="8" class="form_textarea"></textarea>
				<input  type="submit"/ >
			</div>
		 </div>
		
		 
	</form>
</body>
</html>