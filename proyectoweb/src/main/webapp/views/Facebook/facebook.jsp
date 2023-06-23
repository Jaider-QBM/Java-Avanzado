<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/d42fb48da4.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/Facebook/StyleFace.css">
    <link rel="Icon" href="assets/img/Imagen6.png">
    <title>Facebook Gaming</title>
</head>
<body>
    <header>
        <div class="t">
            <div class="titl-name">
                <div class="logo">
                    <img src="assets/img/Imagen6.png" alt="">
                </div>
    
                <div class="name">
                    <h1>
                        Facebook <b style="color: aqua ;" >Gaming</b> 
                    </h1>
                </div>
            </div>
            <div class="botones" >
                <ul class="lista">
                    <li class=""><a href="../index.html">Home</a></li>
                    <li><a href="#">Usuario</a>
                        <ul class="menu">
                             <li><a href="usuario?accion=crearUsuario">Crear Usuario</a></li>
                            <li><a href="usuario?accion=ModificarUsuario">Modificar Usuario</a></li>
                            <li><a href="usuario?accion=mostrar">mostrar Usuario</a></li>
                        </ul>
                    </li>

                    <li><a href="#">Estado</a>
                        <ul class="menu">
                            <li><a href="estado?accion=abrirFormu">Crear Estado</a></li>
                            <li><a href="estado?accion=Modificar">Modificar Estado</a></li>
                            <li><a href="estado?accion=listar">Mostrar Usuarion</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Biografia</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <div class="espe">
            <div  id="facebook">
                <div class="quien">
                    <div class="pa">
                        <h1>
                            Facebook
                            <b style=" color: aqua;">Gaming</b>
                        </h1>
                        <p>
                            <b style=" color: #ffeeee;" >Quien Creo Facebook</b>
                            <br> <br> 4 de febrero de 2004 por Mark Zuckerberg, <br> junto con otros estudiantes <br> de la Universidad de Harvard y compañeros de habitación
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
                            <b style="padding-bottom: 5px; border-bottom:  solid #29D967 ; border-bottom-width: 3.1px; width: fit-content;" >Publicar estados</b>
                            <br> <br> Las historias de Facebook te permiten compartir fotos y videos
                            <br>con tus amigos y seguidores que solo estarán disponibles para el público
                            <br> que elijas durante 24 horas. Después de este plazo, 
                            <br> puedes conservar las historias en el archivo de historias
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