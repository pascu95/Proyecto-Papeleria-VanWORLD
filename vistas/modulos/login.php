<!DOCTYPE html>
<html lang="en">

<head>
    <title>Inicio</title>
    <meta charset="utf-8">
    <meta name="Description" content="Autor, Preciado Valverde">
    <meta name="theme-color" content="#317EFB" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!--js-link--------------------->
    <script src="js/JQuery.js" async></script>
    <!--<script src="js/Jquery.js"></script>-->
    <script src="js/lightslider.js" async></script>
    <!--using FontAwesome--------------->
    <script crossorigin="anonymous" src="https://kit.fontawesome.com/c8e4d183c2.js"></script>
</head>

<body>
    <!--navigation-->
    <nav>
        <!--menu-bar-->
        <div class="navigation">
            <!--logo------------>
            <img src="img/Imagen2.png" alt="" class=" logo" width="100px" height="40px">
            <!--menu----------------->
            <ul class="menu">
                <li><a href="#">Inicio</a></li>
                <li><a href="">Nosotros</a></li>
                <li><a href="js-samples/dist/index.html"><i class="fas fa-map-marked-alt"></i>Ubicacion</a></li>
                <li> <a href="#" class="users"><i class="fas fa-user" class="users"></i> Ingresar</a></li>
            </ul>


            <!---login-and-sign-up--------------------------------->
            <div class="form">
                <!--login---------->
                <div class="login-form">
                    <!--cancel-btn---------------->
                    <a href="javascript:void(0);" class="form-cancel">
                        X
                    </a>
                    <strong>Iniciar Sesion</strong>
                    <img src="https://www.psdgraphics.com/file/user-icon.jpg" class="img-rounded mx-auto" width="100px"
                        class="img-rounded mx-auto" alt="10px">
                    <!--inputs-->
                    <form method="POST" action="" autocomplete="off">
                        <input type="text" name="ingUsuario" placeholder="Ingrese su usuario" required />
                        <input type="password" name="ingPassword" placeholder="Ingrese su contraseña" required />
                        <input type="submit" value="iniciar sesion" required />
                    </form>

                    <?php

        $login = new ControladorUsuarios();
        $login -> ctrIngresoUsuario();
        
      ?>

                    </form>

                </div>

            </div>

    </nav>
    <br>
    <img src="img/2zwvnme3.bmp" style="display:block;
margin:auto;" alt="50px">
    <!--NEW ARRIVAL-------------------------------->
    <section class="new-arrival">
        <!--heading-------->
        <div class="arrival-heading">
            <strong>Lo Mejor en Papalerias</strong>
        </div>
        <!--products----------------------->
        <div class="product-container">
            <!--product-box-1---------->
            <div class="product-box">
                <!--product-img------------>
                <div class="product-img">
                    <!--add-cart---->
                    <a href="#" class="add-cart">
                        +<i class="fas fa-shopping-cart"></i>
                    </a>
                    <!--img------>
                    <img src="https://tse2.mm.bing.net/th?id=OIP.RMY6iOt9X0CEyRjPOinalAHaDv&pid=Api&P=0&w=345&h=175"
                        alt="50px">
                </div>
                <!--product-details-------->
                <div class="product-details">
                    <a href="#" class="p-name">LIBROS</a>
                    <span class="p-price">US$5.00</span>
                </div>
            </div>
            <!--product-box-2---------->
            <div class="product-box">
                <!--product-img------------>
                <div class="product-img">
                    <!--add-cart---->
                    <a href="#" class="add-cart">+<i class="fas fa-shopping-cart"></i></a>
                    <!--img------>
                    <img src="https://tse4.mm.bing.net/th?id=OIP.joYmps1qOCBC4n-JAR8SvwHaIt&pid=Api&P=0&w=300&h=300"
                        alt="50px">
                </div>
                <!--product-details-------->
                <div class="product-details">
                    <a href="#" class="p-name">Cuadernos Universitarios</a>
                    <span class="p-price">US$0.75</span>
                </div>
            </div>
            <!--product-box-3---------->
            <div class="product-box">
                <!--product-img------------>
                <div class="product-img">
                    <!--add-cart---->
                    <a href="#" class="add-cart">+<i class="fas fa-shopping-cart"></i></a>
                    <!--img------>
                    <img src="https://tse3.mm.bing.net/th?id=OIP.FtxMyBq4nGgTkV82k_WbhwHaHa&pid=Api&P=0&w=300&h=300"
                        alt="50px">
                </div>
                <!--product-details-------->
                <div class="product-details">
                    <a href="#" class="p-name">Borradores</a>
                    <span class="p-price">US$0.10</span>
                </div>
            </div>

    </section>
    <!--NEW ARRIVAL-------------------------------->
    <section class="new-arrival">
        <!--heading-------->
        <div class="arrival-heading">
            <strong>Lo Mejor en Papalerias</strong>
        </div>
        <!--products----------------------->
        <div class="product-container">
            <!--product-box-1---------->
            <div class="product-box">
                <!--product-img------------>
                <div class="product-img">
                    <!--add-cart---->
                    <a href="#" class="add-cart">
                        +<i class="fas fa-shopping-cart"></i>
                    </a>
                    <!--img------>
                    <img src="https://tse3.mm.bing.net/th?id=OIP.cT1V5c2qZEQbfRFrFhdTtwHaJY&pid=Api&P=0&w=300&h=300"
                        alt="50px">
                </div>
                <!--product-details-------->
                <div class="product-details">
                    <a href="#" class="p-name">Reglas Geometricas</a>
                    <span class="p-price">US$0.50</span>
                </div>
            </div>
            <!--product-box-2---------->
            <div class="product-box">
                <!--product-img------------>
                <div class="product-img">
                    <!--add-cart---->
                    <a href="#" class="add-cart">+<i class="fas fa-shopping-cart"></i></a>
                    <!--img------>
                    <img src="https://tse1.mm.bing.net/th?id=OIP.h5xXnLb4nyAxs2OOzOfwAAHaE8&pid=Api&P=0&w=249&h=167"
                        alt="50px">
                </div>
                <!--product-details-------->
                <div class="product-details">
                    <a href="#" class="p-name">Tijeras</a>
                    <span class="p-price">US$0.50</span>
                </div>
            </div>
            <!--product-box-3---------->
            <div class="product-box">
                <!--product-img------------>
                <div class="product-img">
                    <!--add-cart---->
                    <a href="#" class="add-cart">+<i class="fas fa-shopping-cart"></i></a>
                    <!--img------>
                    <img src="https://http2.mlstatic.com/forros-personalizados-para-cuadernos-libros-en-papel-contac-D_NQ_NP_411505-MLV25023666144_082016-F.jpg"
                        alt="50px">
                </div>
                <!--product-details-------->
                <div class="product-details">
                    <a href="#" class="p-name">Forros Para Cuadernos</a>
                    <span class="p-price">US$0.50</span>
                </div>
            </div>

    </section>
    <!---sale------------------------------------>
    <!--banner-->
    <div class="banner-box f-slide-3" style=" 
    width: 100%;
    height: 40vh;
    margin: 20px 0px;
    display: flex;
    justify-content: center;
    align-items: center;
    background-image: url(img/6h9xwot9.bmp);
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;

">
        <div class="banner-text-container">
            <div class="banner-text">
                <span>Ofertas Ilimitadas</span>
                <strong>Recibe<br /> Hasta <font>20% de descuentos por tus compras</font></strong>
                <strong>
                    <font>Mayores a $ 40.00 Dolares.</font>
                </strong>
                <a href="#" class="banner-btn " id="btn-añadir">Comprar Ahora</a>
            </div>
        </div>
    </div>
    <!--services------------------------->
    <section class="services">
        <!--services-box---------->
        <div class="services-box">
            <i class="fas fa-shipping-fast"></i>
            <span>Envio Gratis</span>
            <p>Servicio a Domicilio</p>
        </div>
        <!--services-box---------->
        <div class="services-box">
            <i class="fas fa-store"></i>
            <span>Abierto</span>
            <p>Las 24horas del dia</p>
        </div>
        <!--services-box---------->
        <!--services-box---------->
        <div class="services-box">
            <i class="fas fa-money-check-alt"></i>
            <span>Devoluciones</span>
            <p>Valida por 10 Dias</p>
        </div>
        <!--footer---------------------------->
        <!--social-links-and-phone-number----------------->
        <div class="social-call">
            <!--social-links--->
            <div class="social">

                <span>Siguenos en:</span>

                <a href="https://www.facebook.com/login.php" target="toggle">Facebook<i
                        class="fab fa-facebook-f"></i></a>
                <a href="https://mobile.twitter.com/login" target="toggle">Twitter<i class="fab fa-twitter"></i></a>
                <a href="https://www.instagram.com/" target="toggle">Instagram<i class="fab fa-instagram"></i></a>
            </div>
            <!--phone-number------>
            <div class="phone">
                <span>Servicio a Domicilio</span> <span>Llamar al : +53987654321</span>
            </div>
        </div>



        <!--script-->
        <script src="js/index.js" async></script>
        <!--script-->
        <!--script-->
        <script src="js/popupfrom.js" async></script>



</body>

</html>