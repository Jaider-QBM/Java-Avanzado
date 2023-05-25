<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Facebook/resources/assets/css/styleM.css">
    <link rel="Icon" href="Facebook/resources/assets/img/Imagen6.png">
    <title>Modificar</title>
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
        <div class="formulario">
            <form action="">
                <div class="titulo">
                    <h1>
                        Modificar Usuario
                    </h1>
                </div>
                <ul class="requi">

                    <li>
                        <label for="name">Nombre Completos </label>
                        <input type="text" placeholder="nombre de Usuario" name="nombre" required>
                    </li>
                    <li>
                        <label for="lastname">Apellido Completos </label>
                        <input type="text" placeholder="apellido" name="apellido" required>
                    </li>
                    <li>
                        <label for="TipoDoc"> tipo de identificacion</label>
                        <input type="text" placeholder="Tipo de Documento" name="TipoDoc" required>
                    </li>
                    <li>
                        <label for="NumeroDoc" >Numero de documento</label>
                        <input type="text" placeholder="Numero de documento" name="Numero" required>
                    </li>
                    
                    <li>
                        <label for="Fecha" >Fecha de Nacimiento</label>
                        <input type="text" placeholder="Fecha de Nacimiento" name="fehca" required>
                    </li>
                    <li>
                        <label for="telefono">Telefono Celular</label>
                        <input type="text" placeholder="Telefono de celular " name="telefono" required>
                    </li>
                    <li>
                        <label for="email">Correo Electronico</label>
                        <input type="text" placeholder="Correo Electronico" name="Correo" required >
                    </li>

                    <li>
                        <label for="sexo">Sexo</label>
                        <input type="text" placeholder="Sexo" name="Sexo">
                    </li>

                    <li>
                        <label for="EstadoUsuario">Ingrese el estado que esta </label>
                        <input type="text" placeholder="Estado" name="Estado", required>
                    </li>

                    <button>Agregar</button>
                </ul>
            </form>
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
</html>