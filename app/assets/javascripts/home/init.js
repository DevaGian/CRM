function changeColor(selector){
    $(selector).animate({
        color: '#8E8B8B'
    }, 1000, function(){
        $(this).animate({
            color: '#ffffff'
        }, 1000, function(){
            changeColor(this);
        })
    })
}
function showLogIn(){
    $('#welcome').animate({marginTop: '20vh'}, 1000);
    $('#login').show().animate({marginTop: '5vh'}, 1000);
    $('#start').val('0');

}
function blink(asset, work){
        $(document).click(function(){
            work = false;
        })
        if(!work)
            $('#arrow').css({display: 'none'});
        else{
            $(asset).fadeOut(1000, function (){
                $(asset).fadeIn(1000, function(){
                    blink(asset, work);
                })
            })
        }

}
$(document).ready(function(){
    //$("#welcome").fadeOut('slow');
    //$("#welcome").animate({color: '#E4D8B8'}, 1000);
    changeColor("#welcome");
    blink('#arrow', true);
    $(document).click(function() {
        showLogIn()
    });
});

