<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://kit.fontawesome.com/d42fb48da4.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <link rel="Icon" href="assets/img/J logo index.png">
    <title>Crear Estado</title>

    <style>
        .btnEdit {
            color: rgb(255, 208, 0);
        }
        .btnDelete {
            color: brown;
        }
        .btnDelete:hover {
            cursor: pointer;
            color: red;
            transition: 0.3s ease;
        }
        i {
            font-size: 16px;
        }
        button[type="submit"] {
            border: none;
        }
    </style>
</head>
<body>
    <header>
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
            </ul>
        </div>
    </header>

    <main>
        <div>
            <table>
                <tr>
                    <th>id_Usuario</th>
                    <th>nombreUsuario</th>
                    <th>apellidoUsuario</th>
                    <th>tipoDoc</th>
                    <th>numeroDoc</th>
                    <th>fechaNacimiento</th>
                    <th>telefonoUsuario</th>
                    <th>correoUsuario</th>
                    <th>claveUsuario</th>
                    <th>sexoUsuario</th>
                    <th>estadoUsuario</th>
                </tr>
                <c:forEach var="usuario" items = "${Usuarios}">
            
                    <tr>
                        <td>${usuario.getid_Usuario()}</td>
                        <td>${usuario.getNombreUsuario()}</td>
                        <td>${usuario.getApellidoUsuario()}</td>
                        <td>${usuario.getTipoDoc()}</td>
                        <td>${usuario.getNumeroDoc()}</td>
                        <td>${usuario.getFechaNacimiento()}</td>
                        <td>${usuario.getTelefonoUsuario()}</td>
                        <td>${usuario.getCorreoUsuario()}</td>
                        <td>${usuario.getClaveUsuario()}</td>
                        <td>${usuario.getSexoUsuario()}</td>
                        <td><${usuario.getEstadoUsuario()}/td>
                        <td>
                            <a href="usuario?accion=Modificar">Modificar</a>
                        </td>

                        <td>
                            <form action="usuario" method="post" id="eliminar${usuario.getid_Usuario()}">
                                <input type="hidden" name="id_estado" id="id_estado" value="${usuario.getid_Usuario()}">
                                <input type="hidden" name="accion" value="eliminar">
                                <i class="fa-solid fa-trash btnDelete" onclick="Eliminacion('${usuario.getid_Usuario()}')"></i>
                            </form>
                        </td>
                    </tr>
            
                </c:forEach>
            </table>
        
            
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
                    <a href="paginas?peticion=facebook">Home</a>
                </li>

                <li>
                    <a href="">Usuario</a>
                </li>
            </ul>
                
                
        </div>
            
        <div class="text-1">
            <div class="imagen">
                <a href="#">
                    <img src="assets/img/J logo index.png" alt="imagen-empre">
                </a>
            </div>
            <div class="nombre">
                <a href="">
                    <h1>Jaider Quimbaya</h1>
                </a>
            </div>      
        </div>
</footer> 
<script type="Text/JavaScript" src="assets/js/ventana.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>