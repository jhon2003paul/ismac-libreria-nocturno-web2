<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ventas - Biblioteca</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
</head>
<body>
 <nav class="nav" style="background-color: black; padding: 10px;">
	<a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/" style="color: white;">Inicio</a>
	<a class="nav-link active" href="${pageContext.request.contextPath}/clientes/findAll" style="color: white;">Clientes</a>
	<a class="nav-link active" href="${pageContext.request.contextPath}/autores/findAll" style="color: white;">Autores</a>
	<a class="nav-link active" href="${pageContext.request.contextPath}/categorias/findAll" style="color: white;">Categorías</a>
	<a class="nav-link active" href="${pageContext.request.contextPath}/libros/findAll" style="color: white;">Libros</a>
	
</nav>
<section>
<div class="container" style="padding-top: 5px;">
<h1>Libros</h1>
</div>
<div class="container">
 
<form class="needs-validation" action="add" method="post" novalidate>
 
<input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}">
<div class="form-group">
<label class="form-label" for="titulo">Título</label>
<input class="form-control" type="text" id="titulo" name="titulo" value="${libro.titulo}" required>
	<div class="invalid-feedback">
      Looks good!
    </div>
</div>
 
<div class="form-group">
<label class="form-label" for="editorial">Editorial</label>
<input class="form-control" type="text" id="editorial" name="editorial" value="${libro.editorial}" required>
</div>
 
<div class="form-group">
<label class="form-label" for="numPaginas">N° Páginas</label>
<input class="form-control" type="number" id="numPaginas" name="numPaginas" value="${libro.numPaginas}" required>
</div>
 
<div class="form-group">
<label class="form-label" for="edicion">Edición</label>
<input class="form-control" type="text" id="edicion" name="edicion" value="${libro.edicion}" required>
</div>
 
<div class="form-group">
<label class="form-label" for="idioma">Idioma</label>
<input class="form-control" type="text" id="idioma" name="idioma" value="${libro.idioma}" required>
</div>
 
<div class="form-group">
<label class="form-label" for="fechaPublicacion">Fecha Publicación</label>
<input class="form-control" type="date" id="fechaPublicacion" name="fechaPublicacion" value="${fn:substring(libro.fechaPublicacion,0,10)}" required>
</div>
 
<div class="form-group">
<label class="form-label" for="descripcion">Descripción</label>
<input class="form-control" type="text" id="descripcion" name="descripcion" value="${libro.descripcion}" required>
</div>
 
<div class="form-group">
<label class="form-label" for="tipoPasta">Tipo Pasta</label>
<input class="form-control" type="text" id="tipoPasta" name="tipoPasta" value="${libro.tipoPasta}" required>
</div>
 
<div class="form-group">
<label class="form-label" for="iSBN">ISBN</label>
<input class="form-control" type="text" id="iSBN" name="iSBN" value="${libro.iSBN}" required>
</div>
 
<div class="form-group">
<label class="form-label" for="numEjemplares">N° Ejemplares</label>
<input class="form-control" type="number" id="numEjemplares" name="numEjemplares" value="${libro.numEjemplares}" required>
</div>
 
<div class="form-group">
<label class="form-label" for="portada">Portada</label>
<input class="form-control" type="text" id="portada" name="portada" value="${libro.portada}" required>
</div>
 
<div class="form-group">
<label class="form-label" for="presentacion">Presentación</label>
<input class="form-control" type="text" id="presentacion" name="presentacion" value="${libro.presentacion}" required>
</div>
 
<div class="form-group">
<label class="form-label" for="precio">Precio</label>
<input class="form-control" type="number" id="precio" name="precio" value="${libro.precio}" required>
</div>
 
<div class="form-group">
	<label class="form-label" for="idCategoria">Categoría</label>		
	<select class="form-select" id="idCategoria" name="idCategoria" required>
		<c:forEach var="item" items="${categorias}">			
			<option value="${item.idCategoria}" ${item.idCategoria == libro.categoria.idCategoria ? 'selected' : ''}>${item.categoria}</option>											
		</c:forEach>
	</select>
</div>
		
<div class="form-group">
	<label class="form-label" for="idAutor">Autor</label>		
	<select class="form-select" id="idAutor" name="idAutor" required>
		<c:forEach var="item" items="${autores}">			
		<option value="${item.idAutor}" ${item.idAutor == libro.autor.idAutor ? 'selected' : ''}>${item.nombre} ${item.apellido}</option>
		</c:forEach>
	</select>
</div>
 
<div class="row">
	<div class="col-12 col-sm-6 mb-2 mb-sm-0">
		<button class="btn btn-primary w-100" type="submit">Guardar</button>
	</div>
	<div class="col-12 col-sm-6">
		<button class="btn btn-secondary w-100 cancelar-btn" type="button">Cancelar</button>
	</div>
</div>
</form>
 
</div>
</section>
<footer style="background-color: #222; color: #fff; padding: 40px 20px; font-family: Arial, sans-serif;">
    <div style="display: flex; flex-wrap: wrap; justify-content: space-between; max-width: 1200px; margin: auto;">
        <!-- Información principal -->
        <div style="flex: 1; min-width: 250px; text-align: center;">
            <h2 style="margin-bottom: 10px;">Librería ABC</h2>
            <p>Tu destino para los mejores libros</p>
        </div>
 
        <!-- Enlaces rápidos -->
        <div style="flex: 1; min-width: 250px; text-align: center;">
            <h3>Información</h3>
            <ul style="list-style: none; padding: 0;">
                <li><a href="#sobre-nosotros" style="color: #fff; text-decoration: none;">Sobre nosotros</a></li>
                <li><a href="#politicas-envio" style="color: #fff; text-decoration: none;">Políticas de envío</a></li>
                <li><a href="#terminos-condiciones" style="color: #fff; text-decoration: none;">Términos y condiciones</a></li>
                <li><a href="#politica-privacidad" style="color: #fff; text-decoration: none;">Política de privacidad</a></li>
            </ul>
        </div>
 
        <!-- Contacto -->
        <div style="flex: 1; min-width: 250px; text-align: center;">
            <h3>Contacto</h3>
            <p>📞 0993535600</p>
            <p>✉️ <a href="mailto:contacto@libreriaabc.com" style="color: #fff;">jhon22xavier@gmail.com</a></p>
            <p>📍 Tumbaco La Esperanza</p>
        </div>
    </div>
 
    <!-- Redes Sociales y suscripción -->
    <div style="text-align: center; margin-top: 20px;">
        <h3>Síguenos</h3>
        <div>
            <a href="#" style="margin: 0 10px; color: #fff;">🔵 Facebook</a>
            <a href="#" style="margin: 0 10px; color: #fff;">📸 Instagram</a>
            <a href="#" style="margin: 0 10px; color: #fff;">🐦 Twitter</a>
        </div>
 
        <h3 style="margin-top: 20px;">Suscríbete</h3>
        <form action="#" method="post">
            <input type="email" placeholder="Tu correo" required style="padding: 10px; width: 200px; border: none;">
            <button type="submit" style="padding: 10px; background-color: #ff9800; color: #fff; border: none; cursor: pointer;">Suscribirse</button>
        </form>
    </div>
 
    <!-- Derechos reservados -->
    <div style="text-align: center; margin-top: 20px; font-size: 12px;">
        <p>© 2024 Librería ABC. Todos los derechos reservados.</p>
    </div>
</footer>
 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    // Evento para el botón de "Cancelar"
    $(".cancelar-btn").on("click", function() {
        window.location.href = '${pageContext.request.contextPath}/libros/findAll';
    });
});
 
//Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
  'use strict'
 
  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')
 
  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }
 
      form.classList.add('was-validated')
    }, false)
  })
})()
 
</script>
	 	
</body>
</html>
