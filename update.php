<?php

include("conexion.php");
$con=conectar();


$cod_estudiante=$_POST['cod_admin'];
$dni=$_POST['usuario_admin'];
$nombres=$_POST['contra_admin'];
$apellidos=$_POST['fecha_regist'];
$estado=$_POST['estado_admin'];

$sql="UPDATE administrador SET  usuario_admin='$dni',contra_admin='$nombres',fecha_regist='$apellidos',estado_admin='$estado' WHERE cod_admin='$cod_estudiante'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: usuario_dashboard.php");
    }
?>