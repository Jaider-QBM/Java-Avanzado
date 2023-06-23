package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Estado.EstadoDao;
import model.Estado.EstadoVo;

public class Estado extends HttpServlet {
    EstadoVo estadoVo = new EstadoVo();
    EstadoDao estadoDao = new EstadoDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion = req.getParameter("accion");
        switch(accion){
            case "login":
                req.getRequestDispatcher("views/Facebook/loginFacebook.jsp").forward(req, resp);
                break;
            
            case "abrirFormu":
                System.out.println(accion);
                req.getRequestDispatcher("views/Facebook/Estado/crearEsta.jsp").forward(req, resp);;
                break;
            case "listar":
               System.out.println("Entro a listar");
               mostrar(req, resp);
                break;
            case "Modificar":
                req.getRequestDispatcher("views/Facebook/Estado/ModiEstado.jsp").forward(req, resp);
                break;
            case "ingresar":
                String name = "jaider";
                String pass = "12345";

                String correo = req.getParameter("username");
                String contra = req.getParameter("password");

                if(correo.equals(name) && contra.equals(pass)){
                    req.getRequestDispatcher("views/Facebook/facebook.jsp").forward(req, resp);
                }
                else{
                    req.getRequestDispatcher("views/Facebook/loginFacebook.jsp").forward(req, resp);
                }
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Estoy dentro al dopost");
        System.out.println(req.getParameter("accion"));
        String accion = req.getParameter("accion");
        switch(accion){
            case "add":
                agregar(req, resp);
                break;
            case "actualizar":
                actualizar(req, resp);
                break;
            case"eliminar":
                eliminar(req, resp);
                break;
            
        }
    }
    
    private void agregar(HttpServletRequest req, HttpServletResponse resp){
        String estado = req.getParameter("estado");
        System.out.println(estado);
        switch(estado){
            case "Activo":
                estadoVo.setEstado("Activo");
                break;
            case "Inactivo":
                estadoVo.setEstado("Inactivo");
                break;
            default:
                estadoVo.setEstado("Inactivo");
                break;
        }

        if(req.getParameter("contenido")!=null){
            estadoVo.setContenido(req.getParameter("contenido"));
        }

        if(req.getParameter("comentario")!= null){
            estadoVo.setComentario(req.getParameter("comentario"));
        }

        try {
            estadoDao.Registrar(estadoVo);
            System.out.println("Registro insertado correctamente");
            req.getRequestDispatcher("views/Facebook/facebook.jsp").forward(req, resp);;
            
        } catch (Exception e) {
            System.out.println("Error en la insertacion del registro" + e.getMessage().toString());
        }
    }

    private void mostrar(HttpServletRequest req, HttpServletResponse resp){
        EstadoDao estadoDao = new EstadoDao();
        
        try {
            List<EstadoVo> arrayEstado = estadoDao.listar();
            req.setAttribute("Estados", arrayEstado);
            req.getRequestDispatcher("views/Facebook/Estado/ListaEstado.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problema al listar los datos" + e.getMessage().toString());
        }
    }

    public void actualizar(HttpServletRequest req, HttpServletResponse resp){
        System.out.println(req.getParameter("id_estado"));
        if(req.getParameter("id_estado")!=null){
            System.out.println("entro a if");
            estadoVo.setId_estado(Integer.parseInt(req.getParameter("id_estado")));
            System.out.println(estadoVo.getId_estado());
        }
        if(req.getParameter("estado")!=null){
            estadoVo.setEstado(req.getParameter("estado"));
        }
        if(req.getParameter("contenido")!=null){
            estadoVo.setContenido(req.getParameter("contenido"));
        }
        if(req.getParameter("comentario")!=null){
            estadoVo.setComentario(req.getParameter("comentario"));
        }
        try {
            System.out.println("Entro a try");
            estadoDao.modificar(estadoVo.getId_estado(), estadoVo.getEstado(), estadoVo.getContenido(), estadoVo.getComentario());
            req.setAttribute("Procesos", true);
            resp.sendRedirect("estado?accion=listar");
            System.out.println("Informacion actualizada exitosamente");
        } catch (Exception e) {
            req.setAttribute("msg","No se puede actualizar el registro"+ e.getMessage());
            System.out.println("No se puede actualizar el registro"+ e.getMessage().toString());
        }
    }
    private void eliminar(HttpServletRequest req, HttpServletResponse resp) {
    if (req.getParameter("id_estado")!= null ) {
        estadoVo.setId_estado(Integer.parseInt(req.getParameter("id_estado")));
    }

    try {
        estadoDao.eliminar(estadoVo.getId_estado());
        req.setAttribute("proceso",true);
        resp.sendRedirect("estado?accion=listar");
        System.out.println("estado eliminado");
    } 
    catch (Exception e) {
        req.setAttribute("msg","No se puede eliminar el registro "+e.getMessage());
        System.out.println("No se puede eliminar el registro"+e.getMessage());
    }

}
}
