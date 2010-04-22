// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(document).ready(function(){
    $('.slideMe').click(function() {
            $(this).siblings().toggle('fast');
            return false;
    });
});