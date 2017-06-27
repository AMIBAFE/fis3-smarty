let $ = require('jquery');
$('.nav-toggle-button').on('click',function(){
    if($(this).hasClass('false')){
        $('.navbar-collapse').slideUp();
        $(this).removeClass('false');        
    }else{
        $('.navbar-collapse').slideDown();
        $(this).addClass('false');
    }  
})