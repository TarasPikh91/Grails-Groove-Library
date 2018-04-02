$(function () {
    $(document).ready(function () {
        $('.createUser').validate({
            rules: {
                login: 'required',
                password: 'required',
                name: 'required'
            },
            messages: {
                login: '<span style="color: red">fill login input</span>',
                password: '<span style="color: red">fill password input</span>',
                name: '<span style="color: red">fill name input</span>'
            }
        });
    });

    $('#button').on('click', function () {
        $('.createUser .requiredField').each(function () {
            if($(this).val() != ''){
                $(this).removeClass('emptyField');
            }else{
                $(this).addClass('emptyField');
                $('.emptyField').css('border-color', 'red');
            }
        })
    })

});