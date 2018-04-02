$(document).ready(function () {
    $(function () {
        $('.updateCategory').validate({
            rules: {
                categoryName: 'required'
            },
            messages: {
                categoryName: '<span style="color: red">fill categoryName input</span>'
            }
        });
    });

    $('#button').on('click', function () {
        $('.updateCategory .requireField').each(function () {
            if($(this).val() != ''){
                $(this).removeClass('emptyField');
            }else{
                $(this).addClass('emptyField');
                $('.emptyField').css('border-color', 'red');
            }
        });
    });


})