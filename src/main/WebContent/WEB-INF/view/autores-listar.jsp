<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h1>Autores</h1>
	
	<button onclick="window.location.href='/ismac-libreria-online-web/clientes/findOne?opcion=1'; return false;">Agregar</button>
	
	<table>
		<thead>
			<tr>
				<th>idAutor</th>
				
				<th>nombre</th>
				<th>apellido</th>
				<th>pais</th>
				<th>direccion</th>
				<th>telefono</th>
				<th>correo</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${autores}">
				<tr>
					<td>${item.idAutor}</td>
					
					<td>${item.nombre}</td>
					<td>${item.apellido}</td>
					<td>${item.pais}</td>
					<td>${item.direccion}</td>
					<td>${item.telefono}</td>
					<td>${item.correo}</td>
					<td>
						<button onclick="window.location.href='/ismac-libreria-online-web/clientes/findOne?opcion=1&idCliente=${item.idAutor}'; return false;">Actualizar</button>
						<button onclick="window.location.href='/ismac-libreria-online-web/clientes/findOne?opcion=2&idCliente=${item.idAutor}'; return false;">Borrar</button>
					</td>
				</tr>
			</c:forEach>			
		</tbody>
	</table>

</body>
</html>