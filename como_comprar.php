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
  <link rel="stylesheet" href="css/estilos_comprar.css">
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

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
          aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
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
                <input type="text" placeholder ="Buscar" class="input-1">
              
                <div class="btn">
                    <i class="fa fa-search"></i>
        
                </div>
        
            </div>

        </div>

        <br><br><br><br><br>
    
        <div class="bloque-1">

            <h1 class="titulo-1">CURTIEMBRE SUDAMERICANA S.A.C</h1>
            <h2 class= "sub-titulo">Compañia nacional de Cueros</h2>

            <br><br>
            <p class="parrafo">
            CURTIEMBRE SUDAMERICANA S.A.C casi 70 años curtiendo el cuero de ganados bovinos. Trabajamos únicamente cuero de vacuno que es un subproducto de la industria ganadera. Gracias al proceso de curtido, transformamos materia orgánica de desecho, en un material extremadamente duradero y resistente, y que -dado su carácter natural- tiene múltiples propiedades físicas que lo hacen un producto óptimo para vestir y trabajar.
            </p>
        </div>
        <br><br><br>

        <div class="pregunt">
            <h2 class="dudas">RESUELVE TUS DUDAS</h2>
            <h3 class="P-frecuentes">Preguntas frecuentes</h3>
        </div>


    <br><br>

    <!-- PREGUNTA NUMERO 1 -->
    <div class="opciones">
    <main>
        
        <div class="titulo">   
            <p>1  ¿Cuál es el <b>formato de venta?</b></p>
            <p id="despliegue" onclick="mostrar()" class="icon">+</p>    
            <p id="oculto" onclick="ocultar()" class="icon">-</p>
    
        </div>


        <div class="detalle" id="detalle">
            <p>
                <ul class="lista">
                    <li>Formato Lado: cuero flor</li>
                    <br>
                    <li>Formato Manta: cuero flor sólo para tapicería</li>
                    <br>
                    <li>Formato Carnaza: cuero reno o carnaza</li>
                </ul>

                <img src="img/imagen10.png" alt="imagen" class="imgc-comprar">

            </p>
        </div>

    </main>   
    <br><br><br>


    <!-- PREGUNTA NUMERO 2 -->

    <main>
        
        <div class="titulo1">   
            <p>2.   ¿Qué significa que sea:<b>Cuero Flor o Cuero Carnaza?</b></p>
            <p id="despliegue1" onclick="mostrar1()" class="icon">+</p>    
            <p id="oculto1" onclick="ocultar1()" class="icon">-</p>
    
        </div>


        <div class="detalle1" id="detalle1">
            <p>
            Los tipos de cuero se dividen en dos grandes grupos: cueros flor y cueros carnaza.

            Una vez curtido el cuero, es dividido en su espesor por una fina cuchilla que separa la parte externa de la piel (la que lleva el pelo del animal), de la parte interna. A la parte externa la llamamos "cuero flor" y a la parte interna la llamamos "carnaza"; ambas tienen propiedades físicas diferentes, y por lo tanto, usos diferentes.
            </p>
            <br>
            <img src="img/floar.png" alt="" class="img-floar">
        </div>

    </main>   

<br><br><br><br><br>
<!-- PREGUNTA 3 -->
<main>
        
        <div class="titulo2">   
            <p>3.  ¿Cómo se <b>mide el cuero?</b></p>
            <p id="despliegue2" onclick="mostrar2()" class="icon">+</p>    
            <p id="oculto2" onclick="ocultar2()" class="icon">-</p>
    
        </div>


        <div class="detalle2" id="detalle2">
            <p>
            El cuero se mide en pies cuadrados (p²),
            equivalente a 30,48 x 30,48 cm.
            </p>
            <br>
            <img src="img/captura12.png" alt="" class="img-floar">
        </div>

    </main>   

<br><br><br><br><br>


<main>
        
        <div class="titulo3">   
            <p>4.  ¿Por qué el <b>valor total de mi pedido es referencial </b> y puede variar?</b></p>
            <p id="despliegue3" onclick="mostrar3()" class="icon">+</p>    
            <p id="oculto3" onclick="ocultar3()" class="icon">-</p>
    
        </div>


        <div class="detalle3" id="detalle3">
            <p>

            Cada pieza de cuero es distinta y se facturará la medida exacta de pie² de la pieza seleccionada.
            
            Precio pie² x nº pies² pieza cuero = valor a pagar

            </p>
            <br>
            <img src="img/imagen13.png" alt="" class="img-floar">
        </div>

    </main>   

<br><br><br><br><br>

<main>
        
        <div class="titulo4">   
            <p>5.  ¿Cómo elegir el <b>espesor del cuero?</b></p>
            <p id="despliegue4" onclick="mostrar4()" class="icon">+</p>    
            <p id="oculto4" onclick="ocultar4()" class="icon">-</p>
    
        </div>


        <div class="detalle4" id="detalle4">
            <p>
            El grosor que elijamos dependerá del uso que 
            le queramos dar al material.

            </p>
            <br>
            <img src="img/img14.png" alt="" class="img-floar">
        </div>

    </main>   

    </div>
<br><br><br><br><br>


      
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

                <?php while($row = $guardar->fetch_assoc()){?>

                  <a href="#"><li class="item" name="wp"> <i class="fa-brands fa-whatsapp icono"></i><?php echo $row['wassap'];?></li></a>
                  <a href="#"><li class="item" name="correo"> <i class="fa-solid fa-at icnono"></i><?php echo $row['correo'];?></li></a>
                  <a href="#"><li class="item" name="instagram"> <i class="fa-brands fa-instagram icono"></i><?php echo $row['instagram'];?></li></a>
                  <a href="#"><li class="item" name="tel_fijo"> <i class="fa-solid fa-phone-flip icono"></i><?php echo $row['telefono'];?></li></a>
                  <a href="#"><li class="item" name="direccion"> <i class="fa-solid fa-people-roof icono"></i><?php echo $row['direccion'];?></li></a>
            
              </ul>
              <?php } ?>

          <br>

                <ul class="lista1">
                  <br>
                  <h4 class="contacto1">INFORMACIÓN</h4>
                  <br>
                  <?php while($row = $guardar1->fetch_assoc()){?>
                   <a href="#"> <li class="item1" name=""><i class="fa-solid fa-circle-question"></i><?php echo $row['preguntas_fre'];?></li></a>
                   <a href="#"> <li class="item1"><i class="fa-solid fa-head-side-cough"></i><?php echo $row['terminos'];?> </li></a>
                   <a href="#"><li class="item1"><i class="fa-solid fa-arrow-rotate-left"></i><?php echo $row['cambios_devol'];?></li></a>
                   <a href="#"> <li class="item1"><i class="fa-solid fa-truck"></i><?php echo $row['despachos'];?></li></a> 
                    
                </ul>
              <?php } ?>

            <br>

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
    gran parte de nuestro personal aún está en cuarentena y dificulta el funcionamiento normal de la empresa.</p>
</div>



</html>