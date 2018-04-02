$(document).ready(function () {
    $(function () {
        $('.bookList').mouseover(function () {
            $(this).css('background-color', '#cfff60');
        }).mouseout(function () {
            $(this).css('background-color', 'white');
        })
    });
});