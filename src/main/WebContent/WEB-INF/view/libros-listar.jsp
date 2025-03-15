<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@	taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head lang="es">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<title>Venta - Biblioteca</title>
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	
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
         <div class="container" style="text-align:center;">
    <button class="btn btn-primary" onclick="window.location.href='/ismac-libreria-online-web/libros/findOne?opcion=1'; return false;">
        <i class="fa fa-plus"></i> Agregar
    </button>
</div>

         </div>
           
         
         <div class="table-responsive" style="padding-left:10px; padding-right:10px;" >
         
       <table id="tabla1" name="tabla1" data-search="true" data-pagination="true" class="table table-striped table-sm">
         <thead>
	   <tr>
		<th>idLibro</th>
		<th data-sortable="true">titulo</th>
		<th data-sortable="true">editorial</th>
		<th data-sortable="true">numPaginas</th>
		<th data-sortable="true">edicion</th>
		<th data-sortable="true">idioma</th>
		<th data-sortable="true">fechaPublicacion</th>
		<th data-sortable="true">descripcion</th>
		<th data-sortable="true">tipoPasta</th>
		<th data-sortable="true">iSBN</th>
		<th data-sortable="true">numEjemplares</th>
		<th data-sortable="true">portada</th>
		<th data-sortable="true">presentacion</th>
		<th data-sortable="true">precio</th>
		<th data-sortable="true">categoria</th>
		<th data-sortable="true">autor</th>
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
		<td>${fn:substring(item.fechaPublicacion,0,10)}</td>
		<td>${item.descripcion}</td>
		<td>${item.tipoPasta}</td>
		<td>${item.iSBN}</td>
		<td>${item.numEjemplares}</td>
		<td>
		
		<img alt="foto.jpg" width="100" height="100" src="/ismac-libreria-online-web/resources/img/${item.portada}"> 
		
		</td>
		<td>${item.presentacion}</td>
		<td>${item.precio}</td>
		<td>${item.categoria.categoria}</td>
		<td>${item.autor.nombre} ${item.autor.apellido}</td>
		
		<td>
			      <button class="btn btn-success" onclick="window.location.href='/ismac-libreria-online-web/libros/findOne?opcion=1&idLibro=${item.idLibro}'; return false;">
                       <i class="fas fa-pen-to-square"></i> Actualizar
                   </button>
			  
			   <i class="fras fa-sync"></i>
			    <button class="btn btn-danger" onclick="window.location.href='/ismac-libreria-online-web/libros/findOne?opcion=2&idLibro=${item.idLibro}';return false;">
                <i class="fas fa-trash-alt"></i> Borrar
                </button>

					
		 </td>
	     </tr>
         </c:forEach>


    </tbody>
    </table>
         
         
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
     
          var $tabla1= $('#tabla1');
          
          $(function(){
        	  $tabla1.bootstrapTable({
        		  sortReset: true
        	  })	       	 
        	  
          });
     
     
     </script>


</body>
</html>