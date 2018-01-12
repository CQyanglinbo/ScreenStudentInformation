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
		a {
			color: blue;
		}
		.outside{
			margin-left:500px;
		}
</style>
</head>
<body>
	<div class="outside">
		<div>
			方向：&nbsp;&nbsp;
			<a class="hold">全部</a>&nbsp;
			<a class="direction">Java开发</a>&nbsp;
			<a class="direction">大数据</a>&nbsp;
			<a class="direction">软件测试</a>&nbsp;
			<a class="direction">web前端</a>
		</div>
		<div>
			性别：&nbsp;&nbsp;
			<a class="hold">全部</a>&nbsp;
			<a class="gender">男</a>&nbsp;
			<a class="gender">女</a>
		</div>
		<div>
			<table border="1" id="table">
				<tr>
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
