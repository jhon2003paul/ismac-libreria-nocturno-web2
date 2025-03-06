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
<nav></nav>
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
			<button class="btn btn-sucess" onclick="window.location.href='/ismac-libreria-online-web/libros/findOne?opcion=1&idLibro=${item.idLibro}';return false;">Actualiar</button>
			<i class="fras fa-sync"></i>
			<button class="btn btn-danger"  onclick="window.location.href='/ismac-libreria-online-web/libros/findOne?opcion=2&idLibro=${item.idLibro}';return false;">Borrar</button>
					
		</td>
	</tr>
</c:forEach>


</tbody>
</table>
         
         
         </div>

   

</section>


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