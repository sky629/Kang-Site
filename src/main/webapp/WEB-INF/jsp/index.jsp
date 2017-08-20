<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Kang Site</title>
<link href="../../static/css/bootstrap.css" rel="stylesheet">
<link href="../../static/css/manager/body.css" rel="stylesheet">
<link href="../../resources/js/fotorama-4.6.4/fotorama.css" rel="stylesheet">

</head>
	<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row-fluid">
	<!-- <jsp:include page="../common/submenu.jsp"></jsp:include> -->
			<div class="span9" >
				<legend>Kang Site</legend>
				
				<center>
				<div style="margin:auto;">
					<div class="fotorama" data-width="700" data-ratio="700/467" data-max-width="100%">
				  		<img src="../../static/images/iu.jpg" class="img-fluid" alt="Responsive image">
				  		<img src="../../static/images/iu.jpg" class="img-fluid" alt="Responsive image">
				  		<img src="../../static/images/iu.jpg" class="img-fluid" alt="Responsive image">
					</div>
				</div>
				</center>
				
				<br>

				<table class="table table-bordered">
					<tr>
						<th style="text-align: center;">Rank</th>
						<th style="text-align: center;">Title</th>
						<th style="text-align: center;">Artist</th>
						<th style="text-align: center;">Url</th>
					</tr>
					
					<c:forEach var="item" items="${realTimeChart}" varStatus="status">
						<tr style="text-align: center;">
							<td>${item.rank}</td>
							<td>${item.title}</td>
							<td>${item.artist}</td>
							<td><a href="${item.url}">Click</a></td>
						</tr>
					</c:forEach>
				</table>
				
			</div>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	</body>
		
	<script type="text/javascript" src="../../resources/js/bootstrap.js"></script>
	<script type="text/javascript" src="../../resources/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="../../resources/js/fotorama-4.6.4/fotorama.js"></script>
</html>