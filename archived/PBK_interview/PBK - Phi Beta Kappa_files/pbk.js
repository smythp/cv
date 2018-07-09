$(document).ready(function(){
    $('#menuElem').addClass('nav-drop');
    $("ul#menuElem ul.CMSListMenuUL").wrap("<div class='drop-holder slide-open-close'></div>")
    $( "<a href='#' class='opener'></a>" ).insertAfter( "ul#menuElem div.drop-holder" );      
   
});