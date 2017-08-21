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
				
				<br>
				
 				<div id="accordion" role="tablist">
					<c:forEach var="item" items="${realTimeChart}" varStatus="status">
					<div class="card">
						<div class="card-header" role="tab" id="headingOne">
					    	<h5 class="mb-0">
					      		<a data-toggle="collapse" href="#collapse${item.rank}" aria-expanded="true" aria-controls="collapseOne">
					        		${item.rank}위&nbsp;&nbsp;&nbsp;${item.title}&nbsp;&nbsp;&nbsp;${item.artist}
					      		</a>
					    	</h5>
						</div>
						<div id="collapse${item.rank}" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
							<div class="card-body">
						    	<center><iframe id="player_div" frameborder="0" allowfullscreen="1" title="YouTube video player" 
											width="400" height="300" src="${item.url}"></iframe>
								</center>
					    	</div>
						</div>
					</div>
					</c:forEach>
					
				</div>
				
				
				
				<table class="table table-bordered">
					<tr>
						<th style="text-align: center;" colspan="4">실시간 Top100</th>				
					</tr>
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
				
				<table class="table table-bordered">
					<tr>
						<th style="text-align: center;" colspan="4">급상승 Top100</th>				
					</tr>
					<tr>
						<th style="text-align: center;">Rank</th>
						<th style="text-align: center;">Title</th>
						<th style="text-align: center;">Artist</th>
						<th style="text-align: center;">Url</th>
					</tr>
					
					<c:forEach var="item" items="${riseChart}" varStatus="status">
						<tr style="text-align: center;">
							<td>${item.rank}</td>
							<td>${item.title}</td>
							<td>${item.artist}</td>
							<td><a href="${item.url}">Click</a></td>
						</tr>
					</c:forEach>
				</table>
				
				<table class="table table-bordered">
					<tr>
						<th style="text-align: center;" colspan="4">일간 Top100</th>				
					</tr>
					<tr>
						<th style="text-align: center;">Rank</th>
						<th style="text-align: center;">Title</th>
						<th style="text-align: center;">Artist</th>
						<th style="text-align: center;">Url</th>
					</tr>
					
					<c:forEach var="item" items="${dailyChart}" varStatus="status">
						<tr style="text-align: center;">
							<td>${item.rank}</td>
							<td>${item.title}</td>
							<td>${item.artist}</td>
							<td><a href="${item.url}">Click</a></td>
						</tr>
					</c:forEach>
				</table>
				
				<table class="table table-bordered">
					<tr>
						<th style="text-align: center;" colspan="4">주간 Top100</th>				
					</tr>
					<tr>
						<th style="text-align: center;">Rank</th>
						<th style="text-align: center;">Title</th>
						<th style="text-align: center;">Artist</th>
						<th style="text-align: center;">Url</th>
					</tr>
					
					<c:forEach var="item" items="${weeklyChart}" varStatus="status">
						<tr style="text-align: center;">
							<td>${item.rank}</td>
							<td>${item.title}</td>
							<td>${item.artist}</td>
							<td><a href="${item.url}">Click</a></td>
						</tr>
					</c:forEach>
				</table>
				
				<table class="table table-bordered">
					<tr>
						<th style="text-align: center;" colspan="4">월간 Top100</th>				
					</tr>
					<tr>
						<th style="text-align: center;">Rank</th>
						<th style="text-align: center;">Title</th>
						<th style="text-align: center;">Artist</th>
						<th style="text-align: center;">Url</th>
					</tr>
					
					<c:forEach var="item" items="${monthlyChart}" varStatus="status">
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
	<script type="text/javascript" src="../../resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../../resources/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="../../resources/js/fotorama-4.6.4/fotorama.js"></script>
	<script type="text/javascript" src=../../resources/js/html5gallery/jquery.js"></script>
	<script type="text/javascript" src="../../resources/js/html5gallery/html5gallery.js"></script>
	
</html>