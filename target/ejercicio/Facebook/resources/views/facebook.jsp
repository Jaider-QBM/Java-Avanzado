<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/d42fb48da4.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="Facebook/resources/assets/css/styleF.css">
    <link rel="Icon" href="Facebook/resources/assets/img/J logo index.png">
    <title>Facebook Gaming</title>
</head>
<body>
    <header>
        <div class="titl-name">
            <div class="logo">
                <img src="Facebook/resources/assets/img/Imagen6.png" alt="">
            </div>

            <div class="name">
                <h1>
                    Facebook <b style="color: aqua ;" >Gaming</b> 
                </h1>
            </div>
        </div>
        <div class="botones" >
            <ul class="lista">
                <li><a href="paginas?peticion=home">Home</a></li>
                <li><a href="#">Usuario</a>
                    <ul class="menu">
                         <li><a href="paginas?peticion=crearU">Crear Usuario</a></li>
                        <li><a href="paginas?peticion=modificar">Modificar Usuario</a></li>
                        <li><a href="paginas?peticion=consultar">Consultar Usuario</a></li>
                    </ul>
                </li>
                
                <li><a href="#">Estado</a>
                    <ul class="menu">
                        <li><a href="paginas?peticion=crearEstado">Crear Estado</a></li>
                        <li><a href="paginas?peticion=mostraEstado">Mostrar Estado</a></li>
                    </ul>
                </li>
            </ul>
        </div>

        <div class="micuenta">
            <a href="#" style="color: #ffeeee; text-decoration: none;">            </a>
        </div>
    </header>

    <main>
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
                    <img src="Facebook/resources/assets/img/Imagen2.png" alt="">
                </div>

            </div>

            <div class="fun">
                <div class="imagen1">
                    <img src="Facebook/resources/assets/img/Imagen3.png" alt="">
                </div>

                <div class="til">
                    <h1>
                        Funcionamiento de <br> Facebook 
                    </h1>

                    <p>
                        <b style="color: #ffeeee;" >Publicar estados</b>
                        <br> <br> Las historias de Facebook te permiten compartir fotos y videos
                        <br>con tus amigos y seguidores que solo estarán disponibles para el público
                        <br> que elijas durante 24 horas. Después de este plazo, 
                        <br> puedes conservar las historias en el archivo de historias
                    </p>
                </div>
            </div>
        </div>
    </main>


    <div class="row">
        <div class="col-xs-12">
            <footer class="text-center well">
                    <div class="text-1">
                        <div class="comu">
                            <p>Partes de la web</p>
                        </div>
                        
                        <div class="linea"></div>

                        <ul>
                            <li>
                                <a href="#">Usuario</a>
                            </li>

                            <li>
                                <a href="#">Estado</a>
                            </li>
                            
                            <li>
                                <a href="#">Biografia</a>
                            </li>
                        </ul>
                            
                            
                    </div>
                        
                    <div class="text-1">
                        <div class="imagen">
                            <a href="#">
                                <img src="Facebook/resources/assets/img/J logo index.png" alt="imagen-empre">
                            </a>
                        </div>
                        <div class="nombre">
                            <a href="">
                                <h1>Jaider Quimbaya</h1>
                            </a>
                        </div>      
                    </div>
            </footer>                
        </div>    
    </div>
</body>
</html>