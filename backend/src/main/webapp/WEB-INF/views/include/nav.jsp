<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header id="index_header" class="jumbotron bg-secondary mb-1">
	<h4>π Happy House</h4>
</header>
<!-- nav start -->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark rounded">
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" href="/">Home</a></li>
		<li class="nav-item"><a class="nav-link" href="${root}/guestbook/list?pg=1&key=&word=">Notice</a></li>
		<li class="nav-item"><a class="nav-link" href="${root}/search">Search</a></li>
		<c:if test="${empty userinfo}">
			<li class="nav-item"><a class="nav-link"
				href="${root}/user/login">Login</a></li>
		</c:if>
		<c:if test="${!empty userinfo && userinfo.userId ne 'admin'}">
			<li class="nav-item" style="margin-left: 500px"><a class="nav-link">${userinfo.userName}
					(${userinfo.userId})λ μλνμΈμ.</a>
			<li class="nav-item"><a
				class="nav-link" style="color: red" href="${root}/user/logout">λ‘κ·Έμμ</a>
			</li>
		</c:if>
		<c:if test="${userinfo.userId eq 'admin'}">
			<li class="nav-item" style="margin-left: 450px"><a class="nav-link">${userinfo.userName}
					(${userinfo.userId})λ μλνμΈμ.</a>
			<li class="nav-item"><a class="nav-link" style="color: blue"
				href="${root}/user/list">νμλͺ©λ‘</a></li>
			<li class="nav-item"><a
				class="nav-link" style="color: red" href="${root}/user/logout">λ‘κ·Έμμ</a>
			</li>
		</c:if> 
	</ul>
</nav>