<?php
//solicitar las vcariables
include 'includes/conecta.php';

//consulta

$consulta = "SELECT * FROM contactenos";
$guardar = $conecta->query($consulta);

?>


<!-- ////////////////////////////////// -->
<?php
//solicitar las vcariables
include 'includes/conecta.php';

//consulta

$consulta1 = "SELECT * FROM informacion";
$guardar1 = $conecta->query($consulta1);

?>


<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="css/tienda.css">
    <link rel="stylesheet" href="comprar.js">
    <title>CURTIEMBRE SUDAMERICANA</title>
    <script src="javascrip/comprar.js"></script>



    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <script src="https://kit.fontawesome.com/2356e8f8d0.js" crossorigin="anonymous"></script>
</head>

<body>
    <a href=""><img class="main-contactanos-wsp" src="/pagprinc/btn-contactanos.png" alt=""></a>

    <header class="site-header sticky-top py-1">
        <nav class="navbar navbar-expand-lg ">
            <div class="container-fluid">

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>



                <!-- MENU PRINCIPAL -->
                <div class="menu-principal" id="navbarNavDropdown">
                    <ul class="navbar-nav">


                        <li class="nav-item"><a class="nav-link" href="index.php">Inicio</a></li>
                        <li class="nav-item"><a class="nav-link" href="como_comprar.php">Preguntas Frecuentes</a></li>
                        <li class="nav-item"><a class="nav-link" href="tienda.php">Tienda</a></li>
                        <li class="nav-item"><a class="nav-link" href="somos.php">Quienes Somos</a></li>
                        <li class="nav-item"><a class="nav-link" href="login.php">Acceso</a></li>
                    </ul>


        </nav>

        <!-- <a class="main-titulo-nav py-2" href="#" aria-label="Product"><img src="/pagprinc/logopag.png" height="25px"
      alt="" class="imagen-logo"> CURTIEMBRE SUDAMERICANA
  </a> -->




        <!--     <nav class="navbar navbar-expand-lg ">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
            <a class="nav-link" href="#">Features</a>
            <a class="nav-link" href="#">Pricing</a>
            <a class="nav-link disabled">Disabled</a>
          </div>
        </div>
      </div>
    </nav> -->


    </header>

    <!-- MENU PRINCIPAL2 -->

    <div class="menu-2">

        <div class="submenu">
            <ul class="list">
                <li class="li-5"><a href="#" class="nav-link2">Pedidos</a></li>
                <li class="li-5"><a href="#" class="nav-link2">Delivery</a></li>
                <li class="li-5"><a href="#" class="nav-link2">Nuestras ofertas</a></li>
            </ul>

            <div class="carrito">
                <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
            </div>


            <div class="btn-general">
                <input type="text" placeholder="Buscar" class="input-1">

                <div class="btn">
                    <i class="fa fa-search"></i>

                </div>

            </div>

        </div>

        <br><br><br><br><br>

        <div></div>
        <!-- /CUERPO/ -->

        <div class="container">

            <div class="titulo-1">
                <h1 class="titulo-principal">Conoce nuestras tiendas en Perú</h1>
                <h2>RECUERDANOS VISITARNOS CON MASCARILLA</h2>
            </div>

            <br>
            <br>
            <br>

            <div class="provincia">

                <div class="local1">
                    <a href=""><img src="img/tienda-1.PNG" alt="" class="img-1"></a>
                    <br>
                    <br>
                    <p><b>CURTIEMNBRE SUDAMERICANA S.A.C</b></p>
                    <p>LIMA-PERÚ</p>
                    <p>Av. Solidaridad 987, Cercado</p>
                    <p><b>Horario de atencion</b></p>
                    <p>Lunes a viernes: 8:30 a 18:00</p>
                    <p><a href="#" class="primero">+51 951 292864</a></p>
                </div>

                <div class="local2">
                    <a href=""><img src="img/tienda-2.PNG" alt="" class="img-1"></a>
                    <br>
                    <br>
                    <p><b>CURTIEMNBRE SUDAMERICANA S.A.C</b></p>
                    <p>LIMA-PERÚ</p>
                    <p>Jr. Los Pinos 436, San Juan</p>
                    <p><b>Horario de atencion</b></p>
                    <p>Lunes a viernes: 8:30 a 18:00</p>
                    <p><a href="#" class="primero">+51 951 292864</a></p>
                </div>


                <div class="local3">
                    <a href=""><img src="img/tienda-3.png" alt="" class="img-1"></a>
                    <br>
                    <br>
                    <p><b>CURTIEMNBRE SUDAMERICANA S.A.C</b></p>
                    <p>LIMA-PERÚ</p>
                    <p>Calle Antequera 135, San Isidro</p>
                    <p><b>Horario de atencion</b></p>
                    <p>Lunes a viernes: 8:30 a 18:00</p>
                    <p><a href="#" class="primero">+51 951 292864</a></p>
                </div>


        </div>

            <br>
            <br>
            <br>
            <br>
            <br>
            <br>

            <div class="sesion-2">
                <h2 class="sesion-h2"><b>Te asesoramos</b></h2>
                <h3>¿Tienes alguna duda?</h3>
                <p><b>Contáctanos y te ayudaremos a encontrar el cuero perfecto para tu proyecto.</b></p>
                <a href="#" class="numero"><i class="fa-brands fa-whatsapp icono"></i>+51 947 204 863</a>



            </div>


            <br>
            <br>
            <br>
            <br>


        </div>


        <!--  -->


        <footer class="bloque footer">
            <div class="centrar">
                <br>
                <div class="opcion-footer">


                    <div class="logo-footer">
                        <img src="img/LOGO.png" alt="logotico" class="sub-logo">
                    </div>

                    <ul class="lista">
                        <br>
                        <h4 class="contacto">CONTÁCTENOS</h4>
                        <br>

                        <?php while ($row = $guardar->fetch_assoc()) {?>

                        <a href="#">
                            <li class="item" name="wp"> <i
                                    class="fa-brands fa-whatsapp icono"></i><?php echo $row['wassap']; ?></li>
                        </a>
                        <a href="#">
                            <li class="item" name="correo"> <i
                                    class="fa-solid fa-at icnono"></i><?php echo $row['correo']; ?></li>
                        </a>
                        <a href="#">
                            <li class="item" name="instagram"> <i
                                    class="fa-brands fa-instagram icono"></i><?php echo $row['instagram']; ?></li>
                        </a>
                        <a href="#">
                            <li class="item" name="tel_fijo"> <i
                                    class="fa-solid fa-phone-flip icono"></i><?php echo $row['telefono']; ?></li>
                        </a>
                        <a href="#">
                            <li class="item" name="direccion"> <i
                                    class="fa-solid fa-people-roof icono"></i><?php echo $row['direccion']; ?></li>
                        </a>

                    </ul>
                    <?php }?>

                    <br>

                    <ul class="lista1">
                        <br>
                        <h4 class="contacto1">INFORMACIÓN</h4>
                        <br>
                        <?php while ($row = $guardar1->fetch_assoc()) {?>
                        <a href="#">
                            <li class="item1" name=""><i
                                    class="fa-solid fa-circle-question"></i><?php echo $row['preguntas_fre']; ?></li>
                        </a>
                        <a href="#">
                            <li class="item1"><i class="fa-solid fa-head-side-cough"></i><?php echo $row['terminos']; ?>
                            </li>
                        </a>
                        <a href="#">
                            <li class="item1"><i
                                    class="fa-solid fa-arrow-rotate-left"></i><?php echo $row['cambios_devol']; ?></li>
                        </a>
                        <a href="#">
                            <li class="item1"><i class="fa-solid fa-truck"></i><?php echo $row['despachos']; ?></li>
                        </a>

                    </ul>
                    <?php }?>

                    <br>
                    </div>
                </div>
            </div>

                <br>
                <br>
                <br>

        </footer>


        <div class="centrar">
            <p class="pie">
                Todos los derechos reservados (c) . Creado por Enoc Rubio
            </p>
        </div>

        <br><b><br><br>


            <div class="fixed">
                <p class="parrafo-fixed">Pedimos paciencia con los tiempos de respuesta,
                    gran parte de nuestro personal aún está en cuarentena y dificulta el funcionamiento normal de la
                    empresa.</p>
            </div>



</html>