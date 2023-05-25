<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="Icon" href="Facebook/resources/assets/img/Imagen6.png">
    <title>Mostrar Estado</title>
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
                <li><a href="paginas?peticion=facebook">Home</a></li>
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
    </header>

    <main>
        <div class="title">
            <h3>
                Todos los estados que han subido thus amigos
            </h3>
        </div>

        <div class="Usua1">
            <h3>
                Miguel
            </h3>

            <p>
                <%=request.getAttribute("conten")%>
            </p>
        </div>
        <div class="Usua1">
            <h3>
                Valentina 
            </h3>

            <p>
                <%=request.getAttribute("conten1")%>
            </p>
        </div>
        <div class="Usua1">
            <h3>
                Rafael
            </h3>

            <p>
                <%=request.getAttribute("conten2")%>
            </p>
        </div>

        <div class="Usua1">
            <h3>
                Jaider Quimbaya
            </h3>

            <p>
                <%=request.getAttribute("conten3")%>
            </p>
        </div>
    </main>

    <footer class="text-center well">
        <div class="text-1">
            <div class="comu">
                <p>Partes de la web</p>
            </div>
            
            <div class="linea"></div>

            <ul>
                <li>
                    <a href="../facebook.html">Home</a>
                </li>

                <li>
                    <a href="">Usuario</a>
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

</body>


