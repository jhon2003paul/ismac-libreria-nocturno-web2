<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>Clientes</h1>
	
	<form action="add" method="POST">
		
		<input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}" />
		Cedula
		<input type="text" id="cedula" name="cedula" value="${cliente.cedula}" />
		<br>
		Nombre
		<input type="text" id="nombre" name="nombre" value="${cliente.nombre}" />
		<br>
		Apellido
		<input type="text" id="apellido" name="apellido" value="${cliente.apellido}" />
		<br>
		Direccion
		<input type="text" id="direccion" name="direccion" value="${cliente.direccion}" />
		<br>
		Telefono
		<input type="text" id="telefono" name="telefono" value="${cliente.telefono}" />
		<br>
		Correo
		<input type="email" id="correo" name="correo" value="${cliente.correo}" />
		<br>
		
		<button type="submit">Guardar</button>
		<button onclick="window.location.href='/ismac-libreria-online-web/clientes/findAll'; return false;">Cancelar</button>
	
	</form>
	

</body>
</html>