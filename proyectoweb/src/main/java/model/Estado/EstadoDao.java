package model.Estado;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import config.conexion;

public class EstadoDao {
    
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    String sql = null;
    int r;


    public int Registrar(EstadoVo estado) throws SQLException{
        sql = "INSERT INTO estado(estado, contenido, comentario) values(?,?,?)";
        try{
            con = conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1,estado.getEstado());
            ps.setString(2, estado.getContenido());
            ps.setString(3, estado.getComentario());
            System.out.println(sql);
            ps.executeUpdate();

            ps.close();
            System.out.println("Se registro el estado en la base de datos");
        }
        catch(Exception e){
            System.out.println("Error en el registro" + e.getMessage().toString());
        }
        finally{
            con.close();
        }
        return r;
    }

    public void modificar(int id_estado,String estado,String contenido, String comentario) throws SQLException{
        sql = "UPDATE `estado` SET `estado`='"+ estado + "',`contenido`='"+ contenido + "',`comentario`='"+ comentario+ "'WHERE id_estado=" + id_estado;
        try {
            con = conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            ps.close();
            System.out.println("Se actualizo el genero exitosamente");
           
        } catch (Exception e) {
            System.out.println("Error al inactivar registro"+ e.getMessage().toString());
        }
        finally{
            con.close();
        }
    }
 
    public void eliminar(int id_estado) throws SQLException{
        sql ="DELETE FROM estado WHERE id_estado ="+ id_estado;

        try{
            con = conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            ps.close();

            System.out.println("Se elimino el el estado exitosamente");
        }

        catch (Exception e) {
            System.out.println("Error el eliminar estado"+ e.getMessage().toString());
        }
        finally{
            con.close();
        }
    }

    public List<EstadoVo> listar() throws SQLException{
       List<EstadoVo> ListaEstado = new ArrayList<>();
       sql = "SELECT * FROM estado";
       try {
        con = conexion.conectar();
        ps = con.prepareStatement(sql);
        rs = ps.executeQuery(sql);
        while (rs.next()) {
            EstadoVo row = new EstadoVo();

            row.setId_estado(rs.getInt("id_estado"));
            row.setEstado(rs.getString("estado"));
            row.setContenido(rs.getString("contenido"));
            row.setComentario(rs.getString("comentario"));

            ListaEstado.add(row);
        }
        ps.close();
        System.out.println("consulta Exitosa");
       } 
       catch (Exception e) {
        System.out.println("La consulta no se pudo ejecutar" +e.getMessage().toString());
       }
        finally{
            con.close();
        }
        return ListaEstado;    
    }

    
}
