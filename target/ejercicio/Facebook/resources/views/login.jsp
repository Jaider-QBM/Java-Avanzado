    <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="Icon" href="../assets/img/J logo index.png">
    <link rel="stylesheet" href="Facebook/resources/assets/css/styleLogin.css">
    <title>Login</title>
</head>
<body>
    <main>
        <div class="contenedor__todo">
            <div class="caja__trasera">
                <div class="caja__trasera-login">
                    <h3>¿Ya tienes una cuenta?</h3>
                    <p>Inicia sesion para entrar en la pagina</p>
                    <button id="btn__iniciar-sesion">Iniciar Sesion</button>
                </div>
                <div class="caja__trasera-register">
                    <h3>¿Aun no tienes una cuenta?</h3>
                    <p>Registrate para que puedas iniciar sesion</p>
                    <button id="btn__registrarse">Registrarse</button>
                </div>
            </div>
    
            <!--Formulario de Login y registro-->
            <div class="contenedor__login-register">
                <!--Login-->
                <form action="paginas" method="POST" class="formulario__login">

                    <h2>Iniciar Sesion</h2>
                    <input type="text" placeholder="Correo Electronico"  name="correo" required>
                    <input type="password" placeholder="password" name="contraseña" required>
                    <input class="boton"type="submit" name="accion" value="entrar">
                </form>
    
                <!--Register-->
                <form action="paginas" method="POST" class="formulario__register">
                    <h2>Registrarse</h2>
                    <input type="text" placeholder="Nombre Completo " name="nombre" required>
                    <input type="text" placeholder="Apellido Completo" name="apellido" required>
                    <input type="text" placeholder="Tipo de Documento" name="tipoDocumento" required>
                    <input type="text" placeholder="Numero de Documento" name="numeroDocumento" required>
                    <input type="text" placeholder="Direccion" name="direccion" required>
                    <input type="text" placeholder="Telefono" name="telefono" required>
                    <input type="text" placeholder="Correo Electronico" name="correo" required>
                    <input type="password" placeholder="password" name="contraseña" required>
                
                    <button name="accion">Registrarse</button>
                </form>
            </div>
        </div>
    </main>


    <script src="Facebook/resources/js/login.js"></script>
</body>
</html>