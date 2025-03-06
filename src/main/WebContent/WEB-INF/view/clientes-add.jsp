<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head lang="es">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Venta - Biblioteca</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
    
</head>
<body>
	
	<nav></nav>
	<section>
	<div class="container" style="padding-top: 5px">
	      <h1>Clientes</h1>
	</div>
	
	<div class="container">
	<form class="needs-validation" novalidate action="add" method="POST">
		
		<input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}" />
		
		<div class="form-group">
		<label class="form-label" for="cedula">Cédula</label>
		<input class="form-control" type="text" id="cedula" name="cedula" value="${cliente.cedula}" required />
		 <div class="invalid-feedback">
          *
        </div>
		 </div>
		
		<div class="form-group">
		<label class="form-label" for="cedula">Nombre</label>
		<input class="form-control" type="text" id="nombre" name="nombre" value="${cliente.nombre}" required />
		</div>
		
		<div class="form-group">
		<label class="form-label" for="apellido">Apellido</label>
		<input class="form-control" type="text" id="apellido" name="apellido" value="${cliente.apellido}" required />
		</div>
		
		<div class="form-group">
		<label class="form-label" for="direccion">Dirección</label>
		<input class="form-control" type="text" id="direccion" name="direccion" value="${cliente.direccion}" required/>
		</div>
		
		
		<div class="form-group">
		<label class="form-label" for="telefono">Télefono</label>
		<input class="form-control" type="text" id="telefono" name="telefono" value="${cliente.telefono}" required/>
		</div>
		
		
		<div class="form-group">
		<label class="form-label" for="correo">Correo</label>
		<input class="form-control" type="email" id="correo" name="correo" value="${cliente.correo}" required />
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
    	 
    	 window.location.href='${pageContext.request.contextPath}/clientes/findAll'; 
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