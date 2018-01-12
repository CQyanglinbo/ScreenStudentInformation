<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#div {
	width: 500px;
	height: 500px;
	margin-left: 500px;
}
</style>
</head>
<body>
	<div id="div">
		请输入：
		<form action="add" method="post">
			学号:<input type="text" name="studentNo" /><br><br> 
			姓名:<input type="text" name="studentName" /><br><br>
			性别:<input type="text" name="gender" /><br><br>
			专业:<input type="text" name="profession" /><br><br>
			方向:<input type="text" name="direction" /><br><br>
			技术:<input type="text" name="skill" /><br><br> 
			能力:<input type="text" name="ability" /><br><br>
			<button type="submit">提交</button>
		</form>
	</div>
</body>
</html>