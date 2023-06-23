package model.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import config.conexion;


public class UsuarioDAO {
    
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    String sql = null;
    int r;

    public int Registrar(UsuarioVO usuario) throws SQLException{
        sql = "INSERT INTO usuario(nombreUsuario,apellidoUsuario,tipoDoc,numeroDoc,fechaNacimiento,telefonoUsuario,correoUsuario,claveUsuario,sexoUsuario,estadoUsuario) values (?,?,?,?,?,?,?,?,?,?)";
        try {
            con = conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario.getNombreUsuario());
            ps.setString(2, usuario.getApellidoUsuario());
            ps.setString(3, usuario.getTipoDoc());
            ps.setInt(4, usuario.getNumeroDoc());
            ps.setString(5, usuario.getFechaNacimiento());
            ps.setInt(6, usuario.getTelefonoUsuario());
            ps.setString(7, usuario.getCorreoUsuario());
            ps.setString(8, usuario.getClaveUsuario());
            ps.setString(9, usuario.getSexoUsuario());
            ps.setString(10, usuario.getEstadoUsuario());

            System.out.println(sql);
            ps.executeUpdate();
            ps.close();
            System.out.println("Se registro el estado en la base de datos");
        } catch (Exception e) {
            System.out.println("Error en el registro" + e.getMessage().toString());
        }

        finally{
            con.close();
        }
        return r;
    }

   
    public void modificar(int id_Usuario,String nombreUsuario, String apellidoUsuario, String tipoDoc, int numeroDoc, String fechaNacimiento, int telefonoUsuario, String correoUsuario, String claveUsuario, String sexoUsuario, String estadoUsuario) throws SQLException{
        sql ="UPDATE `usuario` SET `nombreUsuario`='"+nombreUsuario+"',`apellidoUsuario`='"+apellidoUsuario+"',`tipoDoc`='"+tipoDoc+"', `numeroDoc`='"+numeroDoc+"', `fechaNacimiento`='"+fechaNacimiento+"',`telefonoUsuario`='"+telefonoUsuario+"', `correoUsuario`='"+correoUsuario+"', `claveUsuario`='"+claveUsuario+"',`sexoUsuario`='"+sexoUsuario+"',`estadoUsuario`='"+estadoUsuario+"' WHERE id_Usuario="+id_Usuario;

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

    public List<UsuarioVO> listar() throws SQLException{
        List<UsuarioVO> ListaUsuario = new ArrayList<>();
        sql = "SELECT * FROM usuario";

        try {
            con = conexion.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery(sql);
            while (rs.next()) {
                UsuarioVO row = new UsuarioVO();

                row.setId_Usuario(rs.getInt("id_Usuario"));
                row.setNombreUsuario(rs.getString("nombreUsuario"));
                row.setApellidoUsuario(rs.getString("apellidoUsuario"));
                row.setTipoDoc(rs.getString("tipoDoc"));
                row.setNumeroDoc(rs.getInt("numeroDoc"));
                row.setFechaNacimiento(rs.getString("fechaNacimiento"));
                row.setTelefonoUsuario(rs.getInt("telefonoUsuario"));
                row.setCorreoUsuario(rs.getString("correoUsuario"));
                row.setClaveUsuario(rs.getString("claveUsuario"));
                row.setSexoUsuario(rs.getString("sexoUsuario"));
                row.setEstadoUsuario(rs.getString("estadoUsuario"));


                ListaUsuario.add(row);
            }
            ps.close();
            System.out.println("Consulta Exitosa");
        } catch (Exception e) {
            System.out.println("La consulta no se pudo ejecutar" +e.getMessage().toString() );
        }
        finally{
            con.close();
        }

        return ListaUsuario;
    }
   
}
