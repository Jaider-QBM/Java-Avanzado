<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/d42fb48da4.js" crossorigin="anonymous"></script>
    <link rel="Icon" href="assets/img/Imagen6.png">
    <link rel="stylesheet" href="assets/css/Facebook/Usuario/StyleCrearUsu.css">
    <title>Crear Usuario</title>
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
                    <li class=""><a href="../../../../facebook.html">Home</a></li>
                    <li><a href="#">Usuario</a>
                        <ul class="menu">
                             <li><a href="usuario?accion=crearUsuario">Crear Usuario</a></li>
                            <li><a href="usuario?accion=ModificarUsuario">Modificar Usuario</a></li>
                            <li><a href="usuario?accion=mostrar">Consultar Usuario</a></li>
                        </ul>
                    </li>
                    
                    <li><a href="#">Estado</a>
                        <ul class="menu">
                            <li><a href="">Crear Estado</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Biografia</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <div class="formulario">

            <form action="usuario" method="post">
                
                <h2>
                    Crear un Usuario
                </h2>

                <div class="form-group">
                    <label for="name">Ingrese su nombre</label>
                    <input type="text" placeholder="nombre de Usuario" name="nombre" required>
                </div>

                <div class="form-group">
                    <label for="lastname">Ingrese su Apellido</label>
                    <input type="text" placeholder="apellido" name="apellido" required>
                </div>

                <div class="form-group">
                    <label for="TipoDoc">Ingrese su tipo de identificacion</label>
                    <input type="text" placeholder="Tipo de Documento" name="TipoDoc" required>
                </div>

                <div class="form-group">
                    <label for="NumeroDoc" >Ingrese su numero de documento</label>
                    <input type="number" placeholder="Numero de documento" name="Numero" required>
                </div>
            
                <div class="form-group">
                    <label for="Fecha" >Fecha de Nacimiento</label>
                    <input type="text" placeholder="Fecha de Nacimiento" name="fehca" required>
                </div>

                <div class="form-group">
                    <label for="telefono">Telefono </label>
                    <input type="number" placeholder="Telefono de celular " name="telefono" required>
                </div>

                <div class="form-group">
                    <label for="email">Correo Electronico</label>
                    <input type="text" placeholder="Correo Electronico" name="Correo" required >
                </div>

                <div class="form-group">
                    <label for="password">Contraseña</label>
                    <input type="password" placeholder="password" name="clave" required >
                </div>

                <div class="form-group">
                    <label for="sexo">Sexo</label>
                    <input type="text" placeholder="Sexo" name="Sexo">
                </div>

                <div class="form-group">
                    <label for="estRol">Estado del genero: </label><br>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="estado" value="Activo"checked>
                            Activo
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="estado" value="Inactivo">
                            Inactivo
                        </label>
                    </div>
                </div>

                <button type="submit" name="accion" value="registrar">Agregar</button>
            </form>

            
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