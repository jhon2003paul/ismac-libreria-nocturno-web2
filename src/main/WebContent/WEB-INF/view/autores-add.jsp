<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head lang="es">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gestión de Autores - Biblioteca</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
    
</head>
<body>
	   <nav class="nav" style="background-color: black; padding: 10px;">
	<a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/" style="color: white;">Inicio</a>
	<a class="nav-link active" href="${pageContext.request.contextPath}/clientes/findAll" style="color: white;">Clientes</a>
	<a class="nav-link active" href="${pageContext.request.contextPath}/autores/findAll" style="color: white;">Autores</a>
	<a class="nav-link active" href="${pageContext.request.contextPath}/categorias/findAll" style="color: white;">Categorías</a>
	<a class="nav-link active" href="${pageContext.request.contextPath}/libros/findAll" style="color: white;">Libros</a>
	
</nav>
            
        </div>
    </nav>
	<section>
	<div class="container" style="padding-top: 5px">
	      <h1>Autores</h1>
	</div>
	
	<div class="container">
	<form class="needs-validation" novalidate action="add" method="POST">
		
		<input type="hidden" id="idAutor" name="idAutor" value="${autor.idAutor}" />
		
				
		<div class="form-group">
		<label class="form-label" for="cedula">Nombre</label>
		<input class="form-control" type="text" id="nombre" name="nombre" value="${autor.nombre}" required />
		</div>
		
		<div class="form-group">
		<label class="form-label" for="apellido">Apellido</label>
		<input class="form-control" type="text" id="apellido" name="apellido" value="${autor.apellido}" required />
		</div>
		
		<div class="form-group">
		<label class="form-label" for="apellido">Cedula</label>
		<input class="form-control" type="text" id="apellido" name="apellido" value="${autor.apellido}" required />
		</div>
		
		<div class="form-group">
		<label class="form-label" for="direccion">Dirección</label>
		<input class="form-control" type="text" id="direccion" name="direccion" value="${autor.direccion}" required/>
		</div>
		
		
		<div class="form-group">
		<label class="form-label" for="telefono">Télefono</label>
		<input class="form-control" type="text" id="telefono" name="telefono" value="${autor.telefono}" required/>
		</div>
		
		
		<div class="form-group">
		<label class="form-label" for="correo">Correo</label>
		<input class="form-control" type="email" id="correo" name="correo" value="${autor.correo}" required />
		</div>
		
		<div class="container" style="text-align: right; padding-top: 5px">
		<button class="btn btn-primary" type="submit">Guardar</button>
		<button class="btn btn-primary btn-cancelar" >Cancelar</button>
				
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
     
     $('.btn-cancelar').on('click', function(){
    	 
    	 window.location.href='${pageContext.request.contextPath}/autores/findAll'; 
     });
     
     
  // Example starter JavaScript for disabling form submissions if there are invalid fields
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