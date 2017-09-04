<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="well well-sm" align="center">
<!--   <img alt="" src="../../static/images/main.png"> -->
</div>

  
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<h2>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active">
				<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
			</li>
			
			<c:forEach var="item" items="${menu}" varStatus="status">
			<li class="nav-item">
				<a class="nav-link" href="/">${item.menuName}</a>
			</li>
			</c:forEach>
		</ul>
		
	</div>
	</h2>
</nav>
