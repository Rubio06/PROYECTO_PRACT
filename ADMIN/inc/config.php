<?php
//contraseña
$passs = "";
//nombre de base de datos 
$bd = "inventario_sistem";
//nombre de usuario 
$user = "root";
//nombre de la empresa a la que le daras el servicio
$empresa = "Tecnology Edison";

//Configuración general
$config = array(
	"titulo" => "SystemTaipe-Edison", // c3software?
	"subtitulo" => "Inicio",
	"url" => "http://{$_SERVER['HTTP_HOST']}/panel/", //Con / al final
	//"url" => "http://localhost/simpleCMS/",
	"charset" => "utf-8",

	"friendlyurls" => false,

	//Datos para la configuracion del envio de correo
	"emailadmin" => "",
	"emailenvios" => "",
	"nombreenvios" => "SystemTaipe-Edison", //SistemTaipe-Edison c3software?
	"servidor" => "localhost",
	"basedatos" => "$bd",
	"usuario" => "$user",
	"pass" => "$passs",

	"googleanalytics" => false, //Codigo UA- usado en las analiticas de Google
	"googlesiteverification" => false,
	"mssiteverification" => false
); ?>

<?php
$dbhost = "localhost";
$dbname = "$bd";
$dbuser = "$user";
$dbpass = "$passs";
$db = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

$mysqli_conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname); //connect to MySql
if ($mysqli_conn->connect_error) { //Output any connection error
	die('Error : (' . $mysqli_conn->connect_errno . ') ' . $mysqli_conn->connect_error);
}
?>