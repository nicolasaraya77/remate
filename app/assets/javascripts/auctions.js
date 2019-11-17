document.addEventListener('turbolinks:before-cache', function(){
   //$('#myTable').DataTable().destroy();
})

document.addEventListener('turbolinks:load', function(){
   //$('#myTable').DataTable();
})

var i = 0;
document.addEventListener('turbolinks:load', function () {
    console.log(i);
    i = i + 1;
})


function habilite_money(selector){
  if($(selector).find(':selected').val() == 'true'){
    $('#uf').prop('disabled', false);
    $('#pesos').prop('disabled', true);
  }else if ($(selector).find(':selected').val() == 'false'){
    $('#pesos').prop('disabled', false);
    $('#uf').prop('disabled', true);
  }else{
    $('#pesos, #uf').val("")
 }
}


 function calculo_uf(input){
  var inp = $(input);
  if (inp.attr('id') == 'uf'){
    $('#pesos').val(inp.val() * inp.data('loquesea'))
  }else if($(input).attr('id') == 'pesos'){
    $('#uf').val(inp.val() / $('#uf').data('loquesea'))
  } else {
    $('#pesos, #uf').val("")
  }
}
