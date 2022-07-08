<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/dashboard.css">

</head>

<body>

    <div class="container-fluid">
        <div class="row justify-content-center align-content-center">
            <div class="col-8 barra">
                <h4 class="text-light">Logo</h4>
            </div>
            <div class="col-4 text-right barra">
                <ul class="navbar-nav mr-auto">
                    <li>
                        <a href="#" class="px-3 text-light perfil dropdown-toggle" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
                                class="fas fa-user-circle user"></i></a>

                        <div class="dropdown-menu" aria-labelledby="navbar-dropdown">
                            <a class="dropdown-item menuperfil cerrar" href="login.php"><i
                                    class="fas fa-sign-out-alt m-1"></i>Salir
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="barra-lateral col-12 col-sm-auto">
                <nav class="menu d-flex d-sm-block justify-content-center flex-wrap">
                    <a href="usuario_dashboard.php"><i class="fas fa-home"></i><span>Usuarios</span></a>
                    <a href="#"><i class="fas fa-home"></i><span>Clientes</span></a>
                    <a href="#"><i class="fas fa-home"></i><span>Productos</span></a>
                    <a href="#"><i class="fas fa-home"></i><span>Pedidos</span></a>
                </nav>
            </div>
            <main class="main col">
                <div class="row justify-content-center align-content-center text-center">
                    <div class="columna col-lg-6">

                    <h1>REGISTRO DE USUARIOS</h1>

                    <!-- /*CODIGO CRUD ADMINISTRADOR*/ -->
                        <?php 
                        include("conexion.php");
                        $con=conectar();

                        $sql="SELECT *  FROM administrador";
                        $query=mysqli_query($con,$sql);
                        ?>
                        <!DOCTYPE html>
                        <html lang="en">

                        <head>
                            <title> PAGINA ALUMNO</title>
                            <meta charset="UTF-8">
                            <meta name="viewport" content="width=device-width, initial-scale=1">
                            <link href="css/style.css" rel="stylesheet">
                            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
                                rel="stylesheet"
                                integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
                                crossorigin="anonymous">

                        </head>

                        <body>
                            <div class="container mt-5">
                                <div class="row">

                                    <div class="col-md-3">
                                        <h1>Ingrese datos</h1>
                                        <form action="insertar.php" method="POST">

                                            <input type="text" class="form-control mb-3" name="cod_admin"
                                                placeholder="Codigo admin">
                                            <input type="text" class="form-control mb-3" name="usuario_admin"
                                                placeholder="Usuario">
                                            <input type="text" class="form-control mb-3" name="contra_admin"
                                                placeholder="Contraseña">
                                            <input type="date" class="form-control mb-3" name="fecha_regist">


                                            <select class="form-control mb-3" name="estado_admin"
                                                placeholder="Estado admin">
                                                <option>Seleccione una opción</option>
                                                <option value="Activo">Activo</option>
                                                <option value="Inactivo">Inactivo</option>
                                            
                                            </select>


                                            <input type="submit" class="btn btn-primary">
                                            
                                        </form>
                                    </div>
                                    <br><br><br><br><br><br>


                                    <div class="col-md-8">
                                        <table class="table">
                                            <thead class="table-success table-striped">
                                                <tr>
                                                    <th>Codigo</th>
                                                    <th>Usuario</th>
                                                    <th>Contraseña</th>
                                                    <th>Fecha registro</th>
                                                    <th>Estado</th>
                                                    <th></th>
                                                    <th></th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <?php
                                                while($row=mysqli_fetch_array($query)){
                                                ?>
                                                <tr>
                                                    <th><?php  echo $row['cod_admin']?></th>
                                                    <th><?php  echo $row['usuario_admin']?></th>
                                                    <th><?php  echo $row['contra_admin']?></th>
                                                    <th><?php  echo $row['fecha_regist']?></th>
                                                    <th><?php  echo $row['estado_admin']?></th>
                                                    <th><a href="actualizar.php?id=<?php echo $row['cod_admin'] ?>"
                                                            class="btn btn-info">Editar</a></th>
                                                    <th><a href="delete.php?id=<?php echo $row['cod_admin'] ?>"
                                                            class="btn btn-danger">Eliminar</a></th>
                                                </tr>
                                                <?php 
                                            }
                                        ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </body>

                        </html>
                    </div>

                </div>

            </main>
        </div>
    </div>





    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/646c794df3.js"></script>
</body>

</html>