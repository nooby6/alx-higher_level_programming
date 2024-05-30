$(document).ready(function() {
    $('#toggle_header').click(function() {
        if ($('header').hasClass('red')) {
            $('header').removeClass('red').addClass('green');
        } else if ($('header').hasClass('green')) {
            $('header').removeClass('green').addClass('red');
        } else {
            // Default to red if no class is present
            $('header').addClass('red');
        }
    });
});
