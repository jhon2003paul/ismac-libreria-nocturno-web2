<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Autores - Biblioteca</title>
    
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

    <section>
        <div class="container mt-4">
            <h1 class="text-center">Autores</h1>
        </div>

        <div class="container text-center mb-3">
            <button class="btn btn-primary" id="btnAgregar">Agregar</button>
        </div>
        
        <div class="container table-responsive">
            <table id="tablaAutores" class="table table-striped table-sm" data-search="true" data-pagination="true">
                <thead>
                    <tr>
                        <th data-sortable="true">ID</th>
                        <th data-sortable="true">Nombre</th>
                        <th data-sortable="true">Apellido</th>
                        <th data-sortable="true">País</th>
                        <th data-sortable="true">Dirección</th>
                        <th data-sortable="true">Teléfono</th>
                        <th data-sortable="true">Correo</th>
                        <th>Acciones</th>
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
                                <button class="btn btn-success btn-sm" onclick="window.location.href='${pageContext.request.contextPath}/autores/findOne?opcion=1&idAutor=${item.idAutor}'; return false;">Actualizar</button>
                                <button class="btn btn-danger btn-sm" onclick="window.location.href='${pageContext.request.contextPath}/autores/findOne?opcion=2&idAutor=${item.idAutor}'; return false;">Borrar</button>
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
 

    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

    <script>
        var $tablaAutores = $('#tablaAutores');

        $(function() { 
            $tablaAutores.bootstrapTable({
                sortReset: true
            });
        });

        $('#btnAgregar').on('click', function() {
            window.location.href = '${pageContext.request.contextPath}/autores/findOne?opcion=1';
        });
    </script>

</body>
</html>
