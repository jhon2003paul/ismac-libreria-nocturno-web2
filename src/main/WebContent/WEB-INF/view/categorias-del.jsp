<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Eliminar Categoría</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-dark bg-danger">
        <div class="container">
            <a class="navbar-brand" href="#">Eliminar Categoría</a>
            <a href="${pageContext.request.contextPath}/categorias/findAll" class="btn btn-light">Volver</a>
        </div>
    </nav>

    <section class="container mt-5">
        <div class="card shadow p-4 text-center">
            <h3 class="text-danger">¿Está seguro de eliminar esta categoría?</h3>
            <p class="fw-bold">Esta acción no se puede deshacer.</p>

            <form action="del" method="get">
                <input type="hidden" id="idCategoria" name="idCategoria" value="${categoria.idCategoria}" />

                <div class="mt-4">
                    <button type="submit" class="btn btn-danger">Eliminar</button>
                    <a href="${pageContext.request.contextPath}/categorias/findAll" class="btn btn-secondary">Cancelar</a>
                </div>
            </form>
        </div>
    </section>

    <footer class="text-center mt-4">
        <p>&copy; 2025 Biblioteca</p>
    </footer>

    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
