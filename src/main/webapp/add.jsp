<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.div{
	width:800px;
	height: 550px;
	margin:10px auto;
	background-color: #EDEDED;
	border-radius: 1.5em;
	border-width: 0px;
 	opacity: 0.8;
}
.div1{
	width:200px;
	height: 50px;
	padding-top: 10px;
	margin:auto;
}
.div2{
	width: 800px;
	height: 400px;
}
.p{
	margin: auto;
	height:40px;
	text-align: center;
	line-height: 40px;
	margin-top: 20px;
}
input{
	width: 400px;
	height:30px;
}
button{
	width: 70px;
}
</style>
</head>
<body>
	<div class="div">
		<div class="div1"><h2>新增学生信息</h2></div>
		<div class="div2">
			<form action="add" method="post">
				<p class="p">学号:<input type="text" name="studentNo" required /></p> 
				<p class="p">姓名:<input type="text" name="studentName" required /></p>
				<p class="p">性别:<input type="text" name="gender" required /></p>
				<p class="p">专业:<input type="text" name="profession" required /></p>
				<p class="p">方向:<input type="text" name="direction" required /></p>
				<p class="p">技术:<input type="text" name="skill" required /></p> 
				<p class="p">能力:<input type="text" name="ability" required /></p>
				<p class="p">
					<button type="submit">提交</button>
					<button type="reset">重置</button>
				</p>
			</form>
		</div>
	</div>
</body>
</html>