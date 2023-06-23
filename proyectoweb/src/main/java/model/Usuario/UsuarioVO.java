package model.Usuario;

public class UsuarioVO {
    private int id_Usuario;
    private String nombreUsuario;
    private String apellidoUsuario;
    private String tipoDoc;
    private int numeroDoc;
    private String fechaNacimiento;
    private int telefonoUsuario;
    private String correoUsuario;
    private String claveUsuario;
    private String sexoUsuario;
    private String estadoUsuario;

    public UsuarioVO(){

    }

    public UsuarioVO(int id_Usuario, String nombreUsuario, String apellidoUsuario, String tipoDoc, int numeroDoc,
            String fechaNacimiento, int telefonoUsuario, String correoUsuario, String claveUsuario, String sexoUsuario,
            String estadoUsuario) {
        this.id_Usuario = id_Usuario;
        this.nombreUsuario = nombreUsuario;
        this.apellidoUsuario = apellidoUsuario;
        this.tipoDoc = tipoDoc;
        this.numeroDoc = numeroDoc;
        this.fechaNacimiento = fechaNacimiento;
        this.telefonoUsuario = telefonoUsuario;
        this.correoUsuario = correoUsuario;
        this.claveUsuario = claveUsuario;
        this.sexoUsuario = sexoUsuario;
        this.estadoUsuario = estadoUsuario;
    }

    public int getId_Usuario() {
        return id_Usuario;
    }

    public void setId_Usuario(int id_Usuario) {
        this.id_Usuario = id_Usuario;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getApellidoUsuario() {
        return apellidoUsuario;
    }

    public void setApellidoUsuario(String apellidoUsuario) {
        this.apellidoUsuario = apellidoUsuario;
    }

    public String getTipoDoc() {
        return tipoDoc;
    }

    public void setTipoDoc(String tipoDoc) {
        this.tipoDoc = tipoDoc;
    }

    public int getNumeroDoc() {
        return numeroDoc;
    }

    public void setNumeroDoc(int numeroDoc) {
        this.numeroDoc = numeroDoc;
    }

    public String getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public int getTelefonoUsuario() {
        return telefonoUsuario;
    }

    public void setTelefonoUsuario(int telefonoUsuario) {
        this.telefonoUsuario = telefonoUsuario;
    }

    public String getCorreoUsuario() {
        return correoUsuario;
    }

    public void setCorreoUsuario(String correoUsuario) {
        this.correoUsuario = correoUsuario;
    }

    public String getClaveUsuario() {
        return claveUsuario;
    }

    public void setClaveUsuario(String claveUsuario) {
        this.claveUsuario = claveUsuario;
    }

    public String getSexoUsuario() {
        return sexoUsuario;
    }

    public void setSexoUsuario(String sexoUsuario) {
        this.sexoUsuario = sexoUsuario;
    }

    public String getEstadoUsuario() {
        return estadoUsuario;
    }

    public void setEstadoUsuario(String estadoUsuario) {
        this.estadoUsuario = estadoUsuario;
    }

}