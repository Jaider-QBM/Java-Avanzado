package model.Biografia;

public class BiografiaVo {
    private String fotoPerfil;
    private String fotoPortada;
    private String informacionUsuario;

    public BiografiaVo(){}

    public BiografiaVo(String fotoPerfil, String fotoPortada, String informacionUsuario){
        this.fotoPerfil = fotoPerfil;
        this.fotoPortada = fotoPortada;
        this.informacionUsuario = informacionUsuario;
    }

    public String getFotoPerfil() {
        return fotoPerfil;
    }

    public void setFotoPerfil(String fotoPerfil) {
        this.fotoPerfil = fotoPerfil;
    }

    public String getFotoPortada() {
        return fotoPortada;
    }

    public void setFotoPortada(String fotoPortada) {
        this.fotoPortada = fotoPortada;
    }

    public String getInformacionUsuario() {
        return informacionUsuario;
    }

    public void setInformacionUsuario(String informacionUsuario) {
        this.informacionUsuario = informacionUsuario;
    }

    
}
