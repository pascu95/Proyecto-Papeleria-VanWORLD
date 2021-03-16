$(function ConfirmDemo() {
    $(document).on("click", "#btn-añadir", function() {
        //Ingresamos un mensaje a mostrar
        var mensaje = confirm("¿Añadir producto al carrito?");
        //Detectamos si el usuario acepto el mensaje
        if (mensaje) {
            alert("¡Lo sentimos,para añadir productos al carrito y realizar compras tienes que iniciar sesion!");
        }
        //Detectamos si el usuario denegó el mensaje
        else {
            alert("¡cancelar!");
        }

    });
});
$(function ConfirmDemo() {
    $(document).on("click", "#carrito", function() {
        //Ingresamos un mensaje a mostrar
        var mensaje = alert("Lo sentimos:\t" + "\n\Para poder visualizar su compra tienes que iniciar sesion");
        //Detectamos si el usuario acepto el mensaje


        document.getElementById(mensaje);
    });
});
$(function ConfirmDemo() {
    $(document).on("click", "#iniciar", function() {
        //Ingresamos un mensaje a mostrar
        var mensaje = alert("Has iniciado sesion correctamente");
        //Detectamos si el usuario acepto el mensaje


        document.getElementById(mensaje);
    });
});