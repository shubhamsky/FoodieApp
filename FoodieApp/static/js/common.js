

$(document).ready(function(){
    $('#loader').bind('ajaxStart', function(){
        $('#loader').show();
        $('#overlay').show();
    }).bind('ajaxStop', function(){
        $('#loader').hide();
        $('#overlay').hide();
    });
  
    $('.foodie_logo').on('click', function(){
        var searchCity = Boolean($('.manualLocation').val()) ? $('.manualLocation').val() : "";
        window.location.href = '/home/' + searchCity;
    });
});

