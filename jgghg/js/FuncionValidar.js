(function () {
    'use strict';

    window.addEventListener('load', function () {
        var form = document.getElementById('validar');
        form.addEventListener('submit', function (event) {
            if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
            }
            form.classList.add('was-validated');
        }, false);
    }, false);
})();



function isNumberOrLetter(event) {

    var charCode = (event.which) ? event.which : event.keyCode;

    if ((charCode > 96 && charCode < 123) || (charCode > 47 && charCode < 58))

        return true;

    return false;
}



function casi(){

    alert("hola");


}