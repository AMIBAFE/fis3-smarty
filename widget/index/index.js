var $ = require('jquery');
$('.index').on('click',function(){
    $.ajax({
        url:'/ajax.json',
        method:'POST',
        dataType:'json'
    }).done(function(res){
        console.log(res);
    })
})