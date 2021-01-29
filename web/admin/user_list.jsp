<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>客户列表</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container">

	<%@include file="header.jsp"%>

	<div class="text-right">
		<form action="${pageContext.request.contextPath}/admin/userList" method="post">
<%--			<input class="col-sm-2" name="name" type="text" />--%>
<%--			<button class="btn btn-warning" type="submit" id="sousuo2" size="15px">搜索</button>--%>
			<button id='btn_s' class="btn btn-warning" type="submit" name="serach"
					style="float:right;border-radius:5px">搜 索
			</button>
			<input class="col-sm-2" name="name" type="text" style="width: 180px;height:36px;float:right;border-radius:5px"/>

		</form>
<%--		<a class="btn btn-warning" href="userAdd">添加客户</a>--%>
	</div>
	<br>
	<br>
	<div><a class="btn btn-warning" href="userAdd" style="float:right;border-radius:5px">添加客户</a></div>
<br>
	<br>
	
	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%">ID</th>
		<th width="10%">用户名</th>
		<th width="10%">电话</th>
		<th width="10%">地址</th>
		<th width="10%">操作</th>
	</tr>
	
	<c:forEach var="user" items="${userList}">
         <tr>
         	<td><p>${user.id}</p></td>
         	<td><p>${user.username}</p></td>
         	<td><p>${user.phone}</p></td>
         	<td><p>${user.address}</p></td>
			<td>
				<a class="btn btn-info" href="userRe?id=${user.id}">重置密码</a>
				<a class="btn btn-primary" href="userEdit?id=${user.id}">修改</a>
				<a class="btn btn-danger" href="userDelete?id=${user.id}">删除</a>
			</td>
       	</tr>
     </c:forEach>
     
</table>

<br>${pageTool}<br>
</div>
</body>
</html>