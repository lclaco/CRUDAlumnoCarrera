<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Alumnos</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		
	</head>
	<%@ include file="/WEB-INF/jsp/includes/header.jsp" %>
	<body>
		<div class="container">
		<h1>Alumnos</h1>
		
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nombre</th>
					<th>Fecha Nacimiento</th>
					<th>Carrera</th>
					<th>Acciones</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="alumno" items="${alumnos}">
				<tr>
					<td><c:out value="${alumno.id}" /></td>
					<td><c:out value="${alumno.nombre}" /></td>
					<td><c:out value="${alumno.fechaNacimiento}" /></td>
					<td><c:out value="${alumno.carrera.nombre}" /></td>
					<td>
						<a href="${pageContext.request.contextPath}/AlumnoController?accion=editar&amp;id=${alumno.id}">Editar</a> <%-- contextPath en este caso es /cft-web --%>
						<a href="${pageContext.request.contextPath}/AlumnoController?accion=eliminar&amp;id=${alumno.id}">Eliminar</a> <%-- contextPath en este caso es /cft-web --%>
					</td>
				</tr>
			</c:forEach>			
			</tbody>
		</table>
		</div>
		<%@ include file="/WEB-INF/jsp/includes/footer.jsp" %>	
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
	</body>
	</body>
</html>