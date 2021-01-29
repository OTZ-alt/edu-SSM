<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<style>
	ul#myul > li{
		border-left: 1px solid #fff;
		width:91px;
		text-align:center;
	}
	ul#myul > li  > a {
		color:#fff;
	}
	ul#myul > li  > a:hover {
		background-color:#666;
	}
</style>
</head>
<body>

	<nav class="navbar" role="navigation" style="width: 1200px;margin: 0 auto;background: #ff7300;">
		<div class="container-fluid">
			<div class="navbar-header">
				<span class="navbar-brand" href="javascript:" style="font-weight:bold;font-size:21px;">商城后台管理</span>
			</div>
			<div>
				<ul class="nav navbar-nav" id="myul">
					<li <c:if test="${flag==1}">class="active"</c:if>><a href="typeList">类目管理</a></li>
					<li <c:if test="${flag==2}">class="active"</c:if>><a href="skuList">属性管理</a></li>
					<li <c:if test="${flag==3}">class="active"</c:if>><a href="goodList">商品管理</a></li>
					<li <c:if test="${flag==4}">class="active"</c:if>><a href="orderList">订单管理</a></li>
					<li <c:if test="${flag==5}">class="active"</c:if>><a href="userList">用户管理</a></li>
					<li <c:if test="${flag==6}">class="active"</c:if>><a href="adminList">管理员</a></li>
					<li><a href="logout">退出</a></li>
				</ul>
			</div>
<%--			<div class="text-right">--%>
<%--				<form action="${pageContext.request.contextPath}/admin/goodList" method="post">--%>
<%--&lt;%&ndash;					<input class="col-sm-2" name="name" type="text" />&ndash;%&gt;--%>
<%--&lt;%&ndash;					<button class="btn btn-warning" type="submit" id="sousuo" size="15px">搜索<tton>&ndash;%&gt;--%>

<%--						<button id='btn_s' class="btn btn-sm" type="submit" name="serach"style=";font-size:18px;width: 90px;height:40px;float:right;border-radius:0px">搜 索</button>--%>
<%--						<input class="col-sm-2" name="name" type="text" style="width: 180px;height:40px;float:right" />--%>
<%--				</form>--%>
<%--			</div>--%>
<%--		</div>--%>
	</nav>

</body>
</html>