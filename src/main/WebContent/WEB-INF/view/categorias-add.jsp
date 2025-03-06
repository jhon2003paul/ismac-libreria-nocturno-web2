<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Formulario de Categorías</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-dark bg-primary">
        <div class="container">
            <a class="navbar-brand" href="#">Gestión de Categorías</a>
            <a href="${pageContext.request.contextPath}/categorias/findAll" class="btn btn-light">Volver</a>
        </div>
    </nav>

    <section class="container mt-4">
        <h2 class="text-center">Formulario de Categoría</h2>

        <div class="card shadow p-4">
            <form action="add" method="POST">
                <input type="hidden" id="idCategoria" name="idCategoria" value="${categoria.idCategoria}" />

                <div class="mb-3">
                    <label for="categoria" class="form-label">Categoría</label>
                    <input type="text" class="form-control" id="categoria" name="categoria" value="${categoria.categoria}" required />
                </div>

                <div class="mb-3">
                    <label for="descripcion" class="form-label">Descripción</label>
                    <input type="text" class="form-control" id="descripcion" name="descripcion" value="${categoria.descripcion}" required />
                </div>

                <div class="text-end">
                    <button type="submit" class="btn btn-primary">Guardar</button>
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
