package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Usuario.UsuarioDAO;
import model.Usuario.UsuarioVO;

public class Usuario extends HttpServlet{
    UsuarioVO usuarioVO = new UsuarioVO();
    UsuarioDAO usuarioDAO = new UsuarioDAO();
    int r;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion = req.getParameter("accion");
        switch(accion){
            case "crearUsuario":
                req.getRequestDispatcher("views/Facebook/Usuario/crear.jsp").forward(req, resp);
                break;
            case "ModificarUsuario":
                req.getRequestDispatcher("views/Facebook/Usuario/modificar.jsp").forward(req, resp);
                break;
            case "mostrar":
               System.out.println("Entro a listar");
           
                mostrar(req, resp);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Estoy dentro al dopost");
        
        String accion = req.getParameter("accion");
        switch (accion) {
            case "registrar":
                add(req, resp);
                break;
            case "Modificar":
                actualizar(req, resp);
                break;
            default:
                break;
        }
    }

    

    private void add(HttpServletRequest req, HttpServletResponse resp){

        if (req.getParameter("nombre")!=null) {
            usuarioVO.setNombreUsuario(req.getParameter("nombre"));
        }

        if (req.getParameter("apellido")!=null) {
            usuarioVO.setApellidoUsuario(req.getParameter("apellido"));
        }

        if (req.getParameter("TipoDoc")!=null) {
            usuarioVO.setTipoDoc(req.getParameter("TipoDoc"));
        }

        if (req.getParameter("Numero")!=null) {
            usuarioVO.setNumeroDoc(Integer.parseInt(req.getParameter("Numero")) );
        }

        if (req.getParameter("fehca")!=null) {
            usuarioVO.setFechaNacimiento(req.getParameter("fehca"));
        }

        if (req.getParameter("telefono")!=null) {
            usuarioVO.setTelefonoUsuario(Integer.parseInt(req.getParameter("telefono")) ) ;
        }

        if (req.getParameter("clave")!=null) {
            usuarioVO.setCorreoUsuario(req.getParameter("clave"));
        }

        if (req.getParameter("Correo")!=null) {
            usuarioVO.setCorreoUsuario(req.getParameter("Correo"));
        }

        if (req.getParameter("Sexo")!=null) {
            usuarioVO.setSexoUsuario(req.getParameter("Sexo"));
        }
        
        String estado = req.getParameter("estado");
        switch (estado) {
            case "Activo":
                usuarioVO.setEstadoUsuario("Activo");
                break;
            case "Inactivo":
                usuarioVO.setEstadoUsuario("Inactivo");
                break;
            default:
                usuarioVO.setEstadoUsuario("Inactivo");
                break;
        }
        try {
            usuarioDAO.Registrar(usuarioVO);
            System.out.println("Registro insertado correctamente");
        } catch (Exception e) {
            System.out.println("Error en la insertacion del registro" + e.getMessage().toString());

        }

    }
    

    private void actualizar(HttpServletRequest req, HttpServletResponse resp){
        if(req.getParameter("id_Usuario")!=null){
            usuarioVO.setId_Usuario(Integer.parseInt(req.getParameter("id_Usuario")));
        }
         if (req.getParameter("nombre")!=null) {
            usuarioVO.setNombreUsuario(req.getParameter("nombre"));
        }

        if (req.getParameter("apellido")!=null) {
            usuarioVO.setApellidoUsuario(req.getParameter("apellido"));
        }

        if (req.getParameter("TipoDoc")!=null) {
            usuarioVO.setTipoDoc(req.getParameter("TipoDoc"));
        }

        if (req.getParameter("Numero")!=null) {
            usuarioVO.setNumeroDoc(Integer.parseInt(req.getParameter("Numero")) );
        }

        if (req.getParameter("fehca")!=null) {
            usuarioVO.setFechaNacimiento(req.getParameter("fehca"));
        }

        if (req.getParameter("telefono")!=null) {
            usuarioVO.setTelefonoUsuario(Integer.parseInt(req.getParameter("telefono")) ) ;
        }

        if (req.getParameter("Correo")!=null) {
            usuarioVO.setCorreoUsuario(req.getParameter("Correo"));
        }

        if (req.getParameter("clave")!=null) {
            usuarioVO.setClaveUsuario(req.getParameter("clave"));
        }

        if (req.getParameter("Sexo")!=null) {
            usuarioVO.setSexoUsuario(req.getParameter("Sexo"));
        }

        if (req.getParameter("estado")!=null) {
            usuarioVO.setEstadoUsuario(req.getParameter("estado"));
        }

        try {
            usuarioDAO.modificar(usuarioVO.getId_Usuario(), usuarioVO.getNombreUsuario(), usuarioVO.getApellidoUsuario(), usuarioVO.getTipoDoc(),usuarioVO.getNumeroDoc(), usuarioVO.getFechaNacimiento(), usuarioVO.getTelefonoUsuario(), usuarioVO.getCorreoUsuario(), usuarioVO.getClaveUsuario(), usuarioVO.getSexoUsuario(), usuarioVO.getEstadoUsuario());
            req.setAttribute("proceso",true);
            System.out.println("Informacion actualizada exitosamente");
        } catch (Exception e) {
            req.setAttribute("msg","No se puede actualizar el registro"+ e.getMessage());
            System.out.println("No se puede actualizar el registro"+ e.getMessage().toString());
        }
        
    }



    private void mostrar(HttpServletRequest req, HttpServletResponse resp){
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        
        try {
            List<UsuarioVO> arrayUsuario = usuarioDAO.listar();
            req.setAttribute("Usuarios", arrayUsuario);
            req.getRequestDispatcher("views/Facebook/Usuario/consultar.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problema al listar los datos" + e.getMessage().toString());
        }
    }
    
}
