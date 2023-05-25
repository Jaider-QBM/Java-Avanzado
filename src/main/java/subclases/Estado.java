package subclases;

public class Estado {
    private String estado;
    private String contenido;
    private String comentario;


    //Datos quemados 

    //Dato 1
    String estado1 = "Feliz";
    String contenido1 = "El dia de hoy me siendo muy feliz";
    String comentario1 = "Gracias Familia";

    //Dato 2
    String estado2 = "Triste";
    String contenido2 = "Hoy me cai en la cicla, casi termino debajo de un carro";
    String comentario2 = ":/";

    //Dato 3
    String estado3 = "Emocionado";
    String contenido3 = "Hoy me voy a españa";
    String comentario3 = "Te extrañare, familia, amigos";

    public Estado(){}

    public Estado(String estado, String contenido, String comentario){
        this.estado = estado;
        this.contenido = contenido;
        this.comentario = comentario;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public String crearEstado(){
        String Estado = "El estado que estas: "+ getEstado()+"<br>" 
        +"El contenido que vas a subir es: "+ getContenido()+"<br>"+ 
        "El comentario que vas opinar es: " +getComentario();
        return Estado;
    }


 
}
