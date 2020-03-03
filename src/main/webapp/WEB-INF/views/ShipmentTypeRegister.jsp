<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RegisterPge</title>
</head>
<body>
	<%@include file="UserMenu.jsp"%>

	<div class="container">
		<div class="card">
			<div
				class="card-header bg-primary text-center text-white text-uppercase">
				<h3>Welcome to Shipment Type Register Page</h3>
			</div>
			<!-- 	<form action="save" method="post"> -->
			<!-- 		<pre> -->
			<!-- ShipMent Mode: -->
			<!-- <select name="shipMode"> -->
			<!-- <option>--Select--</option> -->
			<!-- <option>Air</option> -->
			<!-- <option>Truck</option> -->
			<!-- <option>Ship</option> -->
			<!-- <option>Train</option> -->
			<!-- </select> -->
			<!-- Shipment Code: -->
			<!-- <input type="text" name="shipCode"> -->
			<!-- Enable Shipment: -->
			<!-- <select name="enbShip"> -->
			<!-- <option>--Select--</option> -->
			<!-- <option>Yes</option> -->
			<!-- <option>No</option> -->
			<!-- </select> -->
			<!-- Shipment Grade: -->
			<!-- <input type="radio" name="shipGrad" value="A">A -->
			<!-- <input type="radio" name="shipGrad" value="B">B -->
			<!-- <input type="radio" name="shipGrad" value="C">C -->
			<!-- Description: -->
			<!-- <textarea name="shipDesc"></textarea> -->
			<!-- <input type="submit" value="CREATE SHIPMENT"> -->
			<!-- </pre> -->
			<!-- 	</form> -->
			<%-- 	${message} --%>
			<div class="card-body">
				<form:form action="save" method="POST" modelAttribute="shipmentType">
					<div class="row">
						<div class="col-4">
							<label for="shipMode">Shipment Mode</label>
						</div>
						<div class="col-4">
							<form:select path="shipMode" class="form-control">
								<form:option value=" ">--Select--</form:option>
								<form:option value="Air">AIr</form:option>
								<form:option value="Truck">Truck</form:option>
								<form:option value="Ship">Ship</form:option>
								<form:option value="Train">Train</form:option>
							</form:select>
						</div>
						<div class="col-4">
							<!-- error msg -->
						</div>
					</div>
					<div class="row">
						<div class="col-4">
							<label for="shipCode">Shipment Code</label>
						</div>
						<div class="col-4">
							<form:input path="shipCode" class="form-control" />
						</div>
						<div class="col-4">
							<!-- error msg -->
						</div>
					</div>
					<div class="row">
						<div class="col-4">
							<label for="enbShip">Enable Shipment</label>
						</div>
						<div class="col-4">
							<form:select path="enbShip" class="form-control">
								<form:option value="">--Select--</form:option>
								<form:option value="Yes">Yes</form:option>
								<form:option value="No">No</form:option>
							</form:select>
						</div>
						<div class="col-4">
							<!-- error message -->
						</div>
					</div>
					<div class="row">
						<div class="col-4">
							<label for="shipGrad">Shipment Grade</label>
						</div>
						<div class="col-4">
							<form:radiobutton path="shipGrad" value="A" />
							A
							<form:radiobutton path="shipGrad" value="B" />
							B
							<form:radiobutton path="shipGrad" value="C" />
							C
						</div>
						<div class="col-4"></div>
					</div>
					<div class="row">
						<div class="col-4">
							<label for="shipDesc">Description</label>
						</div>
						<div class="col-4">
							<form:textarea path="shipDesc" class="form-control" />
						</div>
						<div class="col-4"></div>
					</div>
					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">

							<input type="submit" value="Create" class="btn btn-success" /> <input
								type="reset" value="Clear" class="btn btn-danger" />

						</div>
					</div>

				</form:form>
			</div>
			<c:if test="${!empty message }">
				<div class="card-footer bg-info text-white text-center">
					<b>${message}</b>
				</div>
			</c:if>

		</div>
		<!-- card end -->
	</div>
	<!-- container end -->
</body>
</html>