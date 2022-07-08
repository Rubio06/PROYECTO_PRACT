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
    <link rel="stylesheet" href="/product.css">
    <title>CURTIEMBRE SUDAMERICANA</title>
    <link rel="icon" href="pagprinc/logopag.png">

    <link href="assets/css/bootsstrap.css" rel="stylesheet">
    <link href="assets/css/mi-carousel.css" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <script src="https://kit.fontawesome.com/2356e8f8d0.js" crossorigin="anonymous"></script>
    <script></script>
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
                        <li class="nav-item"><a class="nav-link" href="como_comprar.php">Preguntas frecuentes</a></li>
                        <li class="nav-item"><a class="nav-link" href="tienda.php">Tienda</a>
                        <li class="nav-item"><a class="nav-link" href="somos.php">Quienes Somos</a></li>
                        <li class="nav-item"><a class="nav-link" href="/ADMIN/login.php">Acceso</a></li>
                    </ul>
                </div>
        </nav>

        <!-- <a class="main-titulo-nav py-2" href="#" aria-label="Product"><img src="/pagprinc/logopag.png" height="25px"
      alt="" class="imagen-logo"> CURTIEMBRE SUDAMERICANA
  </a> -->




        <!-- <nav class="navbar navbar-expand-lg ">
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
    </nav>

     -->



    </header>




    <!-- MENU PRINCIPAL2 -->

    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">

        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3"
                aria-label="Slide 4"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4"
                aria-label="Slide 5"></button>
        </div>

        <div class="carousel-inner">
            </nav>
            <div class="carousel-item active">
                <img src="img/inicial-1.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h4 class="sub-menup">Precios de calidad y a bajo precio</h4>
                    <p class="p-menu">Representado por productos de calidad a nivel nacional.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="img/inicio-2.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h4 class="sub-menup">Equipo capacitado elaborando productos de calidad</h4>
                    <p class="p-menu">Materiales y diseños a precios accesibles.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="img/cuero-1.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h4 class="sub-menup">Pedidos de pequeño y gran volumen</h4>
                    <p class="p-menu">Llegada de productos a la hora acordada .</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="img/image-4.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h4 class="sub-menup">Distintos tipos de cueros disponibles al publico</h4>
                    <p class="p-menu">Some representative placeholder content for the third slide.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="img/image-5.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h4 class="sub-menup">Adecuado ambiente de trabajo para tratar las materias primas</h4>
                    <p class="p-menu">Utilizamos los materiales adecuados para elaborar el producto.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>


        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <br>
    <!-- BLOQUE2 -->


    <div class="container">

        <div class="boton-1">
            <input type="submit" name="" value="Ver productos >" id="" class="boton-contat">
        </div>

        <br><br><br><br><br><br><br>

        <h3 class="tiulo-pagina"> PENSAMOS EN TU ECONOMIA</h3>
        <h3 class="tiulo1-pagina"> Encuentra aqui nuestros productos</h3>


        <br>
        <div class="productos">

            <div class="product-1">
                <a href="#"><img src="img/img-producto5.png" alt="" class="img-opciones1"></a>
                <h4 class="sub-titulo">Cátalogo General</h4>
            </div>

            <div class="product-1">
                <a href="#"><img src="img/imagen-producto1.png" alt="" class="img-opciones1"></a>
                <h4 class="sub-titulo">Clásico</h4>
            </div>

            <div class="product-1">

                <a href="#"><img src="img/imagen-producto2.png" alt="" class="img-opciones1"></a>
                <h4 class="sub-titulo">Últimas tendencias</h4>
            </div>

            <div class="product-1">
                <a href="#"><img src="img/img-producto4.png" alt="" class="img-opciones1"></a>
                <h4 class="sub-titulo">Tapicería</h4>
            </div>

            <div class="product-1">
                <a href="#"><img src="img/imagen-producto3.png" alt="" class="img-opciones1"></a>
                <h4 class="sub-titulo">Badanas y Básicos</h4>
            </div>
        </div>

        <br><br>

        <h3 class="titulo-pagina1"> CONCEPTOS BÁSICOS</h3>
        <h3 class="titulo2-pagina"> Información básica para comprar cuero</h3>


        <!-- BLOQUE3 -->
        <br>

        <div class="Bloque-3">
            <div class="container-3">
                <br>
                <br>
                <h4 class="titulo-3">¿Cuál es el formato de venta?</h4>
                <br><br>
                <p class="text-3">
                    Formato Lado: cuero flor
                </p>

                <p class="text-3">Formato Manta: cuero solo para tapicería</p>

                <p class="text-3">Formato Carnaza: cuero reno o carnaza</p>

                <div class="contain-image">
                    <img src="img/imagen-6.PNG" alt="imagen" class="imagen">
                </div>
            </div>

            <br>
            <br>


            <div class="Bloque-4">
                <div class="container-4">
                    <br>
                    <br>
                    <h4 class="titulo-4">¿Por qué el valor de mi pedido puede variar?</h4>
                    <br>
                    <p class="text-4">
                        Nosotros vendemos por pie cuadrado, el valor de tu compra resultará de la multiplicación entre
                        la cantidad de pies cuadrados que tenga la pieza solicitada y el valor del pie de ese artículo.
                    </p>

                    <div class="contain-image-2">
                        <img src="img/imagen-8.PNG" alt="imagen" class="imagen-1">
                    </div>
                </div>

            </div>

            <br><br><br>


            <footer class="bloque footer">
                <div class="centrar">
                    <br>
                    <div class="opcion-footer">


                        <div class="logo-footer">
                            <img src="img/LOGO.png" alt="logotico" class="sub-logo">
                        </div>

                        <ul class="lista">
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
                            <h4 class="contacto1">INFORMACIÓN</h4>
                            <br>
                            <?php while ($row = $guardar1->fetch_assoc()) {?>
                            <a href="#">
                                <li class="item1" name=""><i
                                        class="fa-solid fa-circle-question"></i><?php echo $row['preguntas_fre']; ?></li>
                            </a>
                            <a href="#">
                                <li class="item1"><i
                                        class="fa-solid fa-head-side-cough"></i><?php echo $row['terminos']; ?> </li>
                            </a>
                            <a href="#">
                                <li class="item1"><i
                                        class="fa-solid fa-arrow-rotate-left"></i><?php echo $row['cambios_devol']; ?>
                                </li>
                            </a>
                            <a href="#">
                                <li class="item1"><i class="fa-solid fa-truck"></i><?php echo $row['despachos']; ?></li>
                            </a>

                        </ul>
                        <?php }?>

                        <br>

                    </div>

                    <br>
                    <br>
                    <br>


                    <div class="centrar">
                        <p class="pie">
                            Todos los derechos reservados (c) . Creado por Enoc Rubio
                        </p>
                    </div>
            </footer>

            <!-- Option 1: Bootstrap Bundle with Popper -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"></script>

            <!-- Option 2: Separate Popper and Bootstrap JS -->
            <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->




            <br>
            <br>
            <div class="fixed">
                <p class="parrafo-fixed">Pedimos paciencia con los tiempos de respuesta,
                    gran parte de nuestro personal aún está en cuarentena y dificulta el funcionamiento normal de la
                    empresa.</p>
            </div>



</html>