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

    <!-- Navbar -->
    <nav class="navbar navbar-dark bg-primary">
        <div class="container">
            <a class="navbar-brand" href="#">Gestión de Autores</a>
            <a href="${pageContext.request.contextPath}/" class="btn btn-light">Inicio</a>
        </div>
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

    <footer class="text-center mt-4">
        <p>&copy; 2025 Biblioteca</p>
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
