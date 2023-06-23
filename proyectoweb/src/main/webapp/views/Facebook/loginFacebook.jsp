<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="../../assets/css/StyleLogin.css">
</head>
<body>
    <div class="container">
        
        <div class="login-container">
          <h2>Iniciar sesión</h2>
          <form id="estado" class="login-form">
            <div class="form-group">
              <label for="username">Usuario:</label>
              <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
              <label for="password">Contraseña:</label>
              <input type="password" id="password" name="password" required>
            </div>
            <button name="accion" value="ingresar">Ingresar</button>
            <button type="submit">volver</button>
          </form>
        </div>
      </div>
    
</body>
</html>