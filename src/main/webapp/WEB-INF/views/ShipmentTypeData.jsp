<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>
	<div class="container">

		<div class="card">
			<div class="card-header bg-primary text-white text-center">

				<h3>Welcome to shipment type data page</h3>
			</div>
			<div class="card-body">

				<a href="excel"><img src="../Resources/Images/excel.jpg"
					width="80" height="30" /></a> <a href="pdf"><img
					src="../Resources/Images/pdf.png" width="80" height="30" /></a>
				<c:choose>
					<c:when test="${!empty list }">
						<table class="table table-hover">
							<tr class="bg-success text-white">
							
								<th>ID</th>
								<th>MODE</th>
								<th>CODE</th>
								<th>ENABLE</th>
								<th>Grade</th>
								<th>NOTE</th>
								<th colspan="3">OPERATION</th>
							</tr>
							<c:forEach items="${list}" var="ob">

								<tr>
									<td>${ob.shipId}</td>
									<td>${ob.shipMode}</td>
									<td>${ob.shipCode}</td>
									<td>${ob.enbShip}</td>
									<td>${ob.shipGrad}</td>
									<td>${ob.shipDesc}</td>
									<td><a href="delete?sid=${ob.shipId }"
										class="btn btn-danger">
											<!-- <img  src="../Resources/Images/delete.png" width="30" height="30"/> -->
									DELETE</a></td>
									<td><a href="edit?sid=${ob.shipId }" class="btn btn-info">EDIT
											<!-- <img  src="../Resources/Images/edit.png" width="30" height="30"/> -->
									</a></td>
									<td><a href="view?sid=${ob.shipId }"
										class="btn btn-warning">VIEW
											<!-- <img  src="../Resources/Images/view.png" width="30" height="30"/> -->
									</a></td>
								</tr>
							</c:forEach>
						</table>
					</c:when>
					<c:otherwise>
						<h4>NO DATA FOUND!!</h4>
					</c:otherwise>
				</c:choose>
			</div>
			<%-- <c:if test="${!empty message }">
				<c:choose>
					<c:when test="${opr eq 'DEL'}">
						<div class="card-footer bg-danger text-white text-center">
							<b>${message }</b>
						</div>
					</c:when>
					<c:otherwise>
						<div class="card-footer bg-info text-white text-center">
							<b>${message }</b>
						</div>

					</c:otherwise>
				</c:choose>
			</c:if> --%>

		</div>
		<!-- card end -->


	</div>
	<!-- container end -->

</body>
</html>