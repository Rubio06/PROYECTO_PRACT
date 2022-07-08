<?php
include("conexion.php");
$con=conectar();

$cod_estudiante=$_POST['cod_admin'];
$dni=$_POST['usuario_admin'];
$nombres=$_POST['contra_admin'];
$apellidos=$_POST['fecha_regist'];
$estado=$_POST['estado_admin'];

$sql="INSERT INTO administrador VALUES('$cod_estudiante','$dni','$nombres','$apellidos','$estado')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location: usuario_dashboard.php");
    
}else {
}
?>