<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/Facebook/Usuario/StyleCrearUsu.css">
    <link rel="Icon" href="assets/img/J logo index.png">
    <title>Crear Estado</title>
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
                    <li><a href="../../index.jsp">Home</a></li>
                    <li><a href="#">Usuario</a>
                        <ul class="menu">
                            <li><a href="../Usuario/crear.jsp">Crear Usuario</a></li>
                            <li><a href="../Usuario/modificar.jsp">Modificar Usuario</a></li>
                            <li><a href="../Usuario/consultar.jsp">Consultar Usuario</a></li>
                        </ul>
                    </li>
                    
                    <li><a href="#">Estado</a>
                        <ul class="menu">
                            <li><a href="../Estado/crearEsta.jsp">Crear Estado</a></li>
                            <li><a href="#">Mostrar Estado</a></li>
                        </ul>
                    </li>

                    <li><a href="">Biografia</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <div class="formulario">
            <form action="estado" method="post">
                
                <h1>
                    Crear un Estado
                </h1>

                <div class="form-group">
                    <label for="lastname">Que contenido quieres subir hoy</label>
                    <input type="text" placeholder="Contenido" id="contenido" name="contenido" required>
                </div>

                <div class="form-group">
                    <label for="TipoDoc">Comentario que quiere hacer</label>
                    <input type="text" placeholder="Comentario" id="comentario" name="comentario" required>
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

                <button type="submit" name="accion" value="add">Agregar</button>
                
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