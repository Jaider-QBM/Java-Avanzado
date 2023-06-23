<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="Icon" href="assets/img/logo-escorpion.png">
    <title>CircleSync</title>
</head>
<body>
    <header>
        <div class="t">
            <div class="titl-name">
                <div class="logo">
                    <img src="assets/img/logo-escorpion.png" alt="logo">
                </div>
    
                <div class="name">
                    <h2>
                        CircleSync
                    </h2>
                </div>
            </div>
    
            <nav class="nav_container">
                <ul class="ul__nav">
                    <li class="home ">
                        <a href="#">Home</a>
                    </li>
    
                    <li>
                        <a href="#facebook">Facebook Gaming</a>
                    </li>
    
                    <li>
                        <a href="#WhatsApp">WhatsApp</a>
                    </li>
    
                    <li>
                        <a href="#eleccion">Elección</a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>

    <main>

        <div class="espe">
            <div id="eleccion" class="inicio">
                <div class="sesion">
                    <div class="title">
                        <h3>
                            Elija la Sesion que quiere iniciar
                        </h3>
                    </div>

                    <div class="botones">
                        <button style="background: #11998e;" >
                            <a href="estado?accion=login">
                                <img src="assets/img/ico_Facebook.webp" alt="fondo de face">
                                <h2>

                                    Facebook                                    
                                </h2>
                            </a>
                        </button>

                        <button style="background: #4CAF50;">
                            <a href="#">
                                <img src="assets/img/iconoWasa2.png" alt="fondo de face">
                                <h2>
                                    WhatsApp
                                </h2>
                            </a>
                        </button>
                    </div>
                </div>
            </div>
            <div  id="facebook">
                <div class="quien">
                    <div class="pa">
                        <h1>
                            Facebook
                            <b style=" color: aqua;">Gaming</b>
                        </h1>
                        <p>
                            <b style=" color: #f5f2f2d7;" >Quien Creo Facebook</b>
                            <br> <br> 4 de febrero de 2004 por Mark Zuckerberg, junto con otros estudiantes  de la Universidad de Harvard y compañeros de habitación
                        </p>
                    </div>
                    <div class="imagen">
                        <img src="assets/img/Imagen2.png" alt="">
                    </div>
    
                </div>
    
                <div class="fun">
                    <div class="imagen1">
                        <img src="assets/img/Imagen3.png" alt="">
                    </div>
    
                    <div class="til">
                        <h1>
                            Funcionamiento   
                        </h1>
    
                        <p>
                            <b style="padding-bottom: 5px; border-bottom:  solid #1094F4 ; border-bottom-width: 3.1px; width: fit-content;" >Publicar estados</b> <br> <br>
                            Las historias de Facebook te permiten compartir fotos y videos
                            con tus amigos y seguidores que solo estarán disponibles para el público
                            que elijas durante  24 horas. Después de este plazo, 
                             puedes conservar las historias en el archivo  de historias
                        </p>
                    </div>
                </div>
            </div>
            <div id="WhatsApp">
                <div class="sobre">
                    <div class="tp">
                        <h1>
                            WhatsApp 
                            <b style="color: rgb(1, 51, 51);" >Gaming</b> 
                        </h1>
    
                        <p>
                            <b style="color: #f5f2f2d7;" >Quien creo WhatsApp</b>
                            <br> <br>El fundador de esta sencilla aplicación, Jan Koum, indicó en un 
                            comunicado que la profunda conexión de los usuarios y el rápido 
                            crecimiento del servicio han estado impulsados por unas capacidades de
                            mensajería simples, sólidas e instantáneas.
                        </p>
                    </div>
    
                    <div class="imagen2">
                        <img src="assets/img/Imagen4.png" alt="">
                    </div>
                </div>
    
                <div class="funce">
                    <div class="imagen3">
                        <img src="assets/img/Imagen5.png" alt="">
                    </div>
    
                    <div class="tap">
                        <h1>
                            Funcionamiento
                        </h1>
    
                        <p>
                            <b style="  padding-bottom: 5px; border-bottom:  solid #29D967 ; border-bottom-width: 3.1px; width: fit-content;" >Publicar estados</b>
                            <br> <br>Con los estados, puedes compartir actualizaciones de texto,
                            fotos, videos y GIF que desaparecen después de 24 horas y 
                            están cifradas de extremo a extremo.
                        </p>
                    </div>
                </div>
            </div>
            
        </div>
    </main>

    <footer class="text-center well">
        <div class="conte">
            <div class="info">
                <div class="text-1">
                    <div class="comu">
                        <p>Partes de la web</p>
                    </div>
                    
                    <div class="linea"></div>
        
                    <ul>
                        <li>
                            <a href="#facebook">Facebook Gaming </a>
                        </li>
        
                        <li>
                            <a href="#WhatsApp">WhatsApp</a>
                        </li>
                    </ul>   
                </div>
                    
                <div class="text-2">
                    <div class="nombre">
                        <a href="">
                            <h1>CircleSync</h1>
                            
                        </a>
                    </div>      
                    <div class="imagen">
                        <a href="#">
                            <img src="assets/img/logo-escorpion.png" alt="imagen-empre">
                        </a>
                    </div>
                </div>
            </div>

            <center><div class="linea1">Todos los derechos reservados © 2023 JAIDER QUIMBAYA </div></center>
            
        </div>
        
    </footer> 
</body>
</html> 
