import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import subclases.Estado;



public class Paginas extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String peticion = req.getParameter("peticion");

        System.out.println(peticion);

        switch (peticion){
            case "home":
            RequestDispatcher home = req.getRequestDispatcher("index.jsp");
            home.forward(req, resp);
            break;
            case "login":
            RequestDispatcher login = req.getRequestDispatcher("Facebook/resources/views/login.jsp");
            login.forward(req, resp);
            break;
            case "facebook":
            RequestDispatcher face = req.getRequestDispatcher("Facebook/resources/views/facebook.jsp");
            face.forward(req, resp);
            break;
            case "crearU":
            RequestDispatcher cu = req.getRequestDispatcher("Facebook/resources/views/subpages/crear.jsp");
            cu.forward(req, resp);
            break;
            case "modificar":
            RequestDispatcher mu = req.getRequestDispatcher("Facebook/resources/views/subpages/modificar.jsp");
            mu.forward(req, resp);
            break;
            case "consultar":
            RequestDispatcher conu = req.getRequestDispatcher("Facebook/resources/views/subpages/consultar.jsp");
            conu.forward(req, resp);
            break;

            case "crearEstado":
            RequestDispatcher cre = req.getRequestDispatcher("Facebook/resources/views/subpages/CrearEsta.jsp");
            cre.forward(req, resp);
            break;

            case "mostraEstado":
            RequestDispatcher moe = req.getRequestDispatcher("Facebook/resources/views/subpages/mostrarEsta.jsp");
            moe.forward(req, resp);
            break;

        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String accion = req.getParameter("accion");

        switch(accion){

            case "entrar":
                String name = "jaider";
                String lastname = "123";

                String correo = req.getParameter("correo");
                String contra = req.getParameter("contraseña");

                if(correo.equals(name) && contra.equals(lastname)){
                    req.getRequestDispatcher("Facebook/resources/views/facebook.jsp").forward(req, resp);
                }
                else{
                    System.out.println();
                    req.getRequestDispatcher("Facebook/resources/views/login.jsp").forward(req, resp);
                }
            break;
            
            case "agregar":
                String esta = req.getParameter("estado");
                String conte = req.getParameter("contenido");
                String come = req.getParameter("comentario");

                Estado nueva = new Estado(esta,conte,come);
                req.setAttribute("Estado", nueva.crearEstado());
                req.getRequestDispatcher("Facebook/resources/views/subpages/CrearEsta.jsp").forward(req, resp);;

            break;

           

            
        }
    } 
}