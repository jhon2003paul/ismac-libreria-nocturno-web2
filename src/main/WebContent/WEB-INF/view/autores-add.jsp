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
	
	<nav></nav>
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
	<footer></footer>
	
	
	
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