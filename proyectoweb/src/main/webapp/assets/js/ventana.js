function Eliminacion(id) {

    var formEliminado = document.getElementById('eliminar' + id);

    Swal.fire({
        title: "¿Seguro que deesea eliminar este registro?",
        text: "Los registros eliminados no se podran recuperar.",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Sí, eliminarlo"
    }).then((result) => {
        if (result.isConfirmed) {
            
            formEliminado.submit();
            
        }

    });

}