<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar Autor</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Alertify CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/alertifyjs/build/css/alertify.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/alertifyjs/build/css/themes/bootstrap.min.css"/>
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header bg-danger text-white">
                <h3>Eliminar Autor</h3>
            </div>
            <div class="card-body">
                <p class="fw-bold">¿Desea eliminar este autor?</p>
                
                <form id="deleteForm" action="del" method="get">
                    <input type="hidden" id="idAutor" name="idAutor" value="${autor.idAutor}" />
                    <button type="button" id="btnEliminar" class="btn btn-danger">Eliminar</button>
                    <a href="/ismac-libreria-online-web/autores/findAll" class="btn btn-secondary">Cancelar</a>
                </form>
            </div>
        </div>
    </div>
    
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Alertify JS -->
    <script src="https://cdn.jsdelivr.net/npm/alertifyjs/build/alertify.min.js"></script>
    
    <script>
        $(document).ready(function() {
            $('#btnEliminar').click(function(e) {
                e.preventDefault();
                alertify.confirm('Confirmación', '¿Está seguro de eliminar este cliente?',
                    function(){ 
                        $('#deleteForm').submit();
                    },
                    function(){ 
                        alertify.error('Operación cancelada');
                    });
            });
        });
    </script>
</body>
</html>
