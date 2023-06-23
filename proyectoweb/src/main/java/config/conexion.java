package config;

import java.sql.Connection;
import java.sql.DriverManager;

public class conexion {
  // Atributos

  private static final String bbdd="jdbc:mysql://localhost:3306/redes";
  private static final String user="root";
  private static final String password="";
  private static Connection con;


  public static Connection conectar(){
    try{
      Class.forName("com.mysql.cj.jdbc.Driver");
      con= DriverManager.getConnection(bbdd, user, password);
      System.out.println("conexion exitosa");
    }
    catch(Exception e){
      System.out.println("Error de conexion a la base de datos"+ e.getMessage().toString());
    }

    return con;
  }

  public static void main(String[] args) {
    conexion.conectar();
  }

}
