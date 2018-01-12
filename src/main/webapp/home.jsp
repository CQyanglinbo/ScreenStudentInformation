<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd 

">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js 

"></script>
<style type="text/css">
	header{
		width: 100%;
		height:60px;
		background-color:#4D98C1;
		line-height: 60px;
		color:white;
		font-size: 24px
	}
	header a{
		text-decoration: none;
		font-size: 15px;
		color: white;
		margin-right:20px;
		float:right;
	}
	.div_left{
		float: left;
		width: 10%;
		height: 550px;
		background-color: #EFF0EF;
	}
	.div_left div{
		text-align: center;
		margin-top: 20px;
	}
	.div_left div a{
		text-decoration: none;
		color: black;
	}
	.div_left .div_bottom{
		margin-top:300px;
		text-align: center;
	}
	.circle{
		margin: 0 auto;
		width:70px;
		height: 70px;
		border-radius: 35px;
		background-color: #feffff;
	}
	table{
		width: 800px;
		text-align:center;
	}
	tr{
		height: 40px;
	}
	.right{
		margin-top:20px;
		margin-left:200px;
		
	}
	.choose{
		height:30px;
		line-height:30px;
	}
	.choose a{
		color:blue;
	}
	#tr1{
		background-color: #C3DDE6;
	}
</style>
</head>
<body>
	<header>
		&nbsp;&nbsp;&nbsp;学生信息筛选系统
		<a href="#" class="a">退出</a>
		<a href="#" class="a">帮助</a>
	</header>
	<div class="div_left">
		<div>
			<a href="">用户查询</a><hr>
			<a href="#" target="myframe">用户新增</a><hr>
		</div>
		<div class="div_bottom">
			<div class="circle"></div>	
			当前登录用户
		</div>
	</div>   	
	<div class="right">
		<div class="choose">
			方向：&nbsp;&nbsp;
			<a class="hold">全部</a>&nbsp;
			<a class="direction">Java开发</a>&nbsp;
			<a class="direction">大数据</a>&nbsp;
			<a class="direction">软件测试</a>&nbsp;
			<a class="direction">web前端</a>
		</div>
		<div class="choose">
			性别：&nbsp;&nbsp;
			<a class="hold">全部</a>&nbsp;
			<a class="gender">男</a>&nbsp;
			<a class="gender">女</a>
		</div>
		<br>
		<div>
			<table border="1" cellspacing="0" id="table">
				<tr id="tr1">
					<th>学号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>专业</th>
					<th>方向</th>
					<th>技术</th>
					<th>能力</th>
				</tr>
				<tbody class="tbody">
				<c:forEach items="${ list }" var="temp">
					<tr>
						<td>${temp.studentNo }</td>
						<td>${temp.studentName }</td>
						<td>${temp.gender }</td>
						<td>${temp.profession }</td>
						<td>${temp.direction }</td>
						<td>${temp.skill }</td>
						<td>${temp.ability }</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<br>
			<a href="add.jsp">新增学生</a>
		</div>
	</div>
</body>
<script type="text/javascript">
		$(function() {
			$(".hold").click(
					function(){
						window.location.href="findAll";
					})
			$(".direction").click(
					function() {
						var direction = $(this).html();
						var content = {
							direction : direction
						};
						$(".tbody").html("");
						var opt = {
							url : "findBydirection",
							type : "post",
							dataType : "json",
							data : content,
							success : function(data) {
								for (var i = 0; i < data.list.length; i++) {
									$("#table").append(
											"<tbody class='tbody'><tr><td>"
													+ data.list[i].studentNo
													+ "</td><td>"
													+ data.list[i].studentName
													+ "</td><td>"
													+ data.list[i].gender
													+ "</td><td>"
													+ data.list[i].profession
													+ "</td><td>"
													+ data.list[i].direction
													+ "</td><td>"
													+ data.list[i].skill
													+ "</td><td>"
													+ data.list[i].ability
													+ "</td></tr></tbody>");
								}
							}
						}
						$.ajax(opt);
					})
			$(".gender").click(
					function() {
						var gender = $(this).html();
						var content = {
							gender : gender
						};
						$(".tbody").html("");
						var opt = {
							url : "findByGender",
							type : "post",
							dataType : "json",
							data : content,
							success : function(data) {
								for (var i = 0; i < data.list.length; i++) {
									$("#table").append(
											"<tbody class='tbody'><tr><td>"
													+ data.list[i].studentNo
													+ "</td><td>"
													+ data.list[i].studentName
													+ "</td><td>"
													+ data.list[i].gender
													+ "</td><td>"
													+ data.list[i].profession
													+ "</td><td>"
													+ data.list[i].direction
													+ "</td><td>"
													+ data.list[i].skill
													+ "</td><td>"
													+ data.list[i].ability
													+ "</td></tr></tbody>");
								}
							}
						}
						$.ajax(opt);
					})
			
		})
	</script>
</html>
