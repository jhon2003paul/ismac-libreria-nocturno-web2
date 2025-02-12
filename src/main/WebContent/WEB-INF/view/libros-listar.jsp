<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Libros</h1>
<button onclick="window.location.href='/ismac-libreria-online-web/libros/findOne?opcion=1'; return false;">Agregar</button>
<!-- /**
	 * @param idLibro
	 * @param titulo
	 * @param editorial
	 * @param numPaginas
	 * @param edicion
	 * @param idioma
	 * @param fechaPublicacion
	 * @param descripcion
	 * @param tipoPasta
	 * @param iSBN
	 * @param numEjemplares
	 * @param portada
	 * @param presentacion
	 * @param precio
	 * @param categoria
	 * @param autor
	 */ -->

<table>
<thead>
	<tr>
		<th>idLibro</th>
		<th>titulo</th>
		<th>editorial</th>
		<th>numPaginas</th>
		<th>edicion</th>
		<th>idioma</th>
		<th>fechaPublicacion</th>
		<th>descripcion</th>
		<th>tipoPasta</th>
		<th>iSBN</th>
		<th>numEjemplares</th>
		<th>portada</th>
		<th>presentacion</th>
		<th>precio</th>
		<th>categoria</th>
		<th>autor</th>
		<th>Acciones</th>
	</tr>
</thead>
<tbody>
<c:forEach var="item" items="${libros}" >
	<tr> 
		<td>${item.idLibro}</td>
		<td>${item.titulo}</td>
		<td>${item.editorial}</td>
		<td>${item.numPaginas}</td>
		<td>${item.edicion}</td>
		<td>${item.idioma}</td>
		<td>${item.fechaPublicacion}</td>
		<td>${item.descripcion}</td>
		<td>${item.tipoPasta}</td>
		<td>${item.isbn}</td>
		<td>${item.numEjemplares}</td>
		<td>
		
		<img alt="foto.jpg" width="100" height="100" src="/ismac-libreria-matutino-web/resources/img/${item.portada}"> 
		
		</td>
		<td>${item.presentacion}</td>
		<td>${item.precio}</td>
		<td>${item.categoria.categoria}</td>
		<td>${item.autor.nombre} ${item.autor.apellido}</td>
		
		<td>
			<button type="button" onclick="window.location.href='/ismac-libreria-online-web/libros/findOne?opcion=1&idLibro=${item.idLibro}';return false;">Actualiar</button>
			<button type="button" onclick="window.location.href='/ismac-libreria-online-web/libros/findOne?opcion=2&idLibro=${item.idLibro}';return false;">Borrar</button>
					
		</td>
	</tr>
</c:forEach>


</tbody>
</table>


</body>
</html>