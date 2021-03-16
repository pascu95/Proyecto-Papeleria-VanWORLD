$(function ConfirmDemo() {
    $(document).on("click", "#btn-delete", function() {
        //Ingresamos un mensaje a mostrar
        var mensaje = confirm("¿estas seguro de eliminar el producto?");
        //Detectamos si el usuario acepto el mensaje
        if (mensaje) {
            alert("¡producto eliminado satisfactoriamente!");
        }
        //Detectamos si el usuario denegó el mensaje
        else {
            alert("¡cancelar!");
        }
        $(this).parent().parent().remove();
        getTotal();
    });


    //funcion para evaluar la cantidad y que esta se multiplique dependiendo de esta.
    $(document).on("keyup", "input[name*=cantidad]", function() {

        var Subtotal = $(this).val() * $(this).closest("tr").find("td:eq(1)").html();
        $(this).closest("tr").find("td:eq(3)").html(Subtotal.toFixed(2));
        getTotal();
    });
});

//calcularemos el total del producto comprado, para ello creamos la siguiente funcion

function getTotal() {
    total = 0;
    $("tbody tr").each(function() {
        total = total + Number($(this).find("td:eq(3)").html());
    });
    $("#total").html("$" + total.toFixed(2));
}