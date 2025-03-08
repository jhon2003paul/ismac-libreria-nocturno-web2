<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Eliminar Libro</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <!-- SweetAlert2 CSS & JS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>

    <div class="container mt-5">
        <h1>Libros</h1>
        <form id="deleteForm" action="del" method="get">
            <input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}">
            <strong>¿Desea eliminar el dato?</strong>
            <div class="form-group">
                <label class="switch">
                    <input type="checkbox" id="confirmDelete">
                    <span class="slider round"></span>
                </label>
                <span id="switchLabel">No</span>
            </div>
            <button type="submit" class="btn btn-danger" id="deleteButton" disabled>Eliminar</button>
            <button type="button" class="btn btn-secondary" onclick="window.location.href='/ismac-libreria-online-web/libros/findAll'; return false;">Cancelar</button>		
        </form>
    </div>

    <script>
        $(document).ready(function() {
            $('#confirmDelete').change(function() {
                if ($(this).is(':checked')) {
                    $('#deleteButton').prop('disabled', false);
                    $('#switchLabel').text('Sí');
                } else {
                    $('#deleteButton').prop('disabled', true);
                    $('#switchLabel').text('No');
                }
            });

            $('#deleteForm').on('submit', function(e) {
                e.preventDefault(); // Evitar el envío del formulario por defecto
                if ($('#confirmDelete').is(':checked')) {
                    // Mostrar alerta de confirmación con SweetAlert2
                    Swal.fire({
                        title: '¿Está seguro?',
                        text: "¡No podrás revertir esto!",
                        icon: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#d33',
                        cancelButtonColor: '#3085d6',
                        confirmButtonText: 'Sí, eliminarlo!',
                        cancelButtonText: 'Cancelar'
                    }).then((result) => {
                        if (result.isConfirmed) {
                            this.submit(); // Enviar el formulario si el usuario confirma
                        }
                    });
                }
            });
        });
    </script>

    <style>
        .switch {
            position: relative;
            display: inline-block;
            width: 60px;
            height: 34px;
        }

        .switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            transition: .4s;
            border-radius: 34px;
        }

        .slider:before {
            position: absolute;
            content: "";
            height: 26px;
            width: 26px;
            left: 4px;
            bottom: 4px;
            background-color: white;
            transition: .4s;
            border-radius: 50%;
        }

        input:checked + .slider {
            background-color: #2196F3;
        }

        input:checked + .slider:before {
            transform: translateX(26px);
        }
    </style>

</body>
</html>