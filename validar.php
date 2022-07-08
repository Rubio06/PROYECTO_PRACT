<?php

$usuario=$_POST['usuario_admin'];
$contraseña=$_POST['contra_admin'];
session_start();
$_SESSION['usuario_admin']=$usuario;

$conexion=mysqli_connect("localhost","root","","cueros");

$consulta = "SELECT * FROM administrador WHERE usuario_admin='$usuario' and contra_admin='$contraseña'";
$resultado=mysqli_query($conexion,$consulta);


$filas=mysqli_num_rows($resultado);

if($filas){

    header("location:dashboard.php");
    
}else{
    ?>
    <?php
    include("login.php");
    ?>
    <h1 class="bad">ERROR EN LA AUTENTIFICACION</h1>
    <?php
}


mysqli_free_result($resultado);
mysqli_close($conexion);

 
?>