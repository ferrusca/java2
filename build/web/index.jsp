<%-- 
    Document   : index.jsp
    Author     : BombTeam
    --%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="materialize/css/materialize.css">
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=PT+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=PT+Sans|Pacifico" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=News+Cycle|PT+Sans|Pacifico" rel="stylesheet">
        <title>Entrada</title>
    </head>
    <body style="background-color: rgba(218, 128, 130, 0.4)">
        <!--NAV ESTILO MIKEY-->
        <nav>
        <div class="nav-wrapper black   white-text">
              <a href="index.html" style="font-family: 'Lobster', cursive"  class="brand-logo left"><img class="responsive-img" id="logo" src="img/logo.png" width="65"/><p style="margin-bottom: 10px;margin-left:90px;margin-top: -80px">Prebefood</p></a>
              <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li> 
                  <div class="row">
                      <form class="col s12" action="login.jsp" method="POST">
                        <div class="row">
                            
                            <div class="input-field col s3">
                              <form action='login.php' method = 'POST'>
                                <input style="font-family: 'PT Sans', sans-serif" type="text" name="nameuser" placeholder="Usuario" />
                              </div>
                              <div class="input-field col s.3" ">
                            </div>  
                              <div class="input-field col s3" ">
                                <input style="font-family: 'PT Sans', sans-serif" type="password" name="pass" placeholder="Contraseña" />
                            </div>
                            <div class="input-field col s.3" >
                            </div>
                            <div class="input-field col s3"> 
                                <input style="text-align: center; background: rgba(255,255,255,0.3); font-family: 'Lobster', cursive; border-radius: 10px" type="submit" value="Iniciar sesión     "/>
                                 </div>
                                 <div class="input-field col s.4">
                            <a href="registro.jsp" style="color: #5469C8; font-family: 'Lobster', cursive">Registrarse</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </li>
    </ul>
</div>
</nav>





<!--CODIGO DE LA PAGINA :V-->

<div class="carousel" >
  <a class="carousel-item" href="#"><img src="img/logo.png"></a>
  <a class="carousel-item" href="#"><img src="img/mexican.jpg"></a>
  <a class="carousel-item" href="#"><img src="img/tacos.jpg"></a>
  <a class="carousel-item" href="#"><img src="img/hamburguesa.jpg"></a>
  <a class="carousel-item" href="#"><img src="img/pozoli.jpg"></a>
</div>
<div class="container" id="info">
      <div>
        <h1 style="text-align: left; font-family: 'Pacifico', cursive">¿Quiénes somos?</h1>
        <p class="text-justify" style="font-family: 'News Cycle', sans-serif; font-size: 30px">  Somos un restaurante comprometido con el paladar de nuestros clientes, pues creemos que cada comida debe tener un sabor distinto para cada persona.</p>
      </div>
    </div>
      <div class="parallax-container">
        <div class="parallax">
          <img src="img/lol.jpg">
        </div>
      </div>
    <div class="container" id="info">
      <div>
        <h1 style="text-align: left; font-family: 'Pacifico', cursive">Nuestra Comida</h1>
        <p class="text-justify" style="font-family: 'News Cycle', sans-serif; font-size: 30px">  Nuestro menú comprende una extensa variedad de platillos, que van desde comida mexicana hasta la exótica comida china.</p>
      </div>
    </div>
    




<!--Fin del código de la página-->
<!--Inicio del footer-->
<footer class="page-footer black" style="font-family: 'Lobster', cursive">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">
                    PrebeFoot
                </h5>
                <p class="grey-text text-lighten-4">
                    En PrebeFoot puedes encontrar las mejores comidas a los mejores precios.
                </p>
            </div>
            <div class="col l4 offset-l2 s12">
                <ul>
                    <li><a href="#" style="color: #1031C8"  >Facebook</a></li>
                    <li><a href="#" style="color: #41BCE0"  >Twitter</a></li>
                    <li><a href="#" style="color: #B84F46" >YouTube</a></li>
                    <li><a href="#" style="color: #D9DD35" >Instagram</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            <a href="#">2016 Copyright</a>
        </div>
    </div>
</footer>
<!--Fin del footer-->
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="materialize/js/materialize.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
      $('.carousel').carousel({
        full_width:0,
        padding:-10,
        margin:-10
    });
      $('.parallax').parallax();
  });
</script>
</html>
