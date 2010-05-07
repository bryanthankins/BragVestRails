// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(document).ready(function(){

    $('.slideMe').click(function() {
        $(this).siblings().toggle('fast');
        $(this).find('.flip').text($(this).find('.flip').text() == 'collapse' ? 'show' : 'collapse');
        return false;
    });

});