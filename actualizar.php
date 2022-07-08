<?php 
    include("conexion.php");
    $con=conectar();

$id=$_GET['id'];

$sql="SELECT * FROM administrador WHERE cod_admin='$id'";
$query=mysqli_query($con,$sql);

$row=mysqli_fetch_array($query);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <title>Actualizar</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        
    </head>
    <body>
                <div class="container mt-5">
                    <form action="update.php" method="POST">
                    
                                <input type="hidden" name="cod_admin" value="<?php echo $row['cod_admin']  ?>">
                                
                                <input type="text" class="form-control mb-3" name="usuario_admin" placeholder="Usuario" value="<?php echo $row['usuario_admin']  ?>">
                                <input type="text" class="form-control mb-3" name="contra_admin" placeholder="Contraseña" value="<?php echo $row['contra_admin']  ?>">

                                <input type="date" class="form-control mb-3" name="fecha_regist" value="<?php echo $row['fecha_regist']  ?>">
                                
                                <select class="form-control mb-3" name="estado_admin" placeholder="Estado" value="<?php echo $row['estado_admin']  ?>">
                                    <option>Seleccione una opción</option>
                                    <option value="Activo">Activo</option>
                                    <option value="Inactivo">Inactivo</option>
                                            
                                </select>

                            <input type="submit" class="btn btn-primary btn-block" value="Actualizar">
                    </form>
                    
                </div>
    </body>
</html>