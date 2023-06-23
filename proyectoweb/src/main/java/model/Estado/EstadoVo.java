package model.Estado;


public class EstadoVo {
    private int id_estado;
    private String estado;
    private String contenido;
    private String comentario;

    // metodos constructores 
    public EstadoVo() {
    }

    public EstadoVo(int id_estado, String estado, String contenido, String comentario) {
        this.id_estado = id_estado;
        this.estado = estado;
        this.contenido = contenido;
        this.comentario = comentario;
    }
    
    // metodos accesores

    public int getId_estado() {
        return id_estado;
    }

    public void setId_estado(int id_estado) {
        this.id_estado = id_estado;
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

}
