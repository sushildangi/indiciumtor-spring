$(function() {
    // solving the active menu problem

    switch (menu) {
        case 'About Us':
            $('#aboutUs').addClass('selected');
            break;
        case 'View Profile':
            $('#viewProfile').addClass('selected');
            break;
        default:
            break;
    }


});
