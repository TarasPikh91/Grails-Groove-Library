$(document).ready(function () {
    $(function () {
        $("input[name='fullName'], select[name='book']").focus(function () {
            $(this).css({
                'background-color':'#f8f9fa',
                'border-color':'#f4c6c6'
            });
        });
    });

    $('.updateAuthor').validate({
        rules: {
            fullName: 'required',
            book: 'required'
        },

        messages:{
            fullName: '<span style="color: red">Select first and last name for this author</span>',
            book: '<span style="color: red">Select books from this list</span>'
        }
    });
    
    $('#button').on('click', function () {
        $('.updateAuthor .requireField').each(function () {
            if ($(this).val() != ''){
                $(this).removeClass('emptyField');
            }else{
                $(this).addClass('emptyField');
                $('.emptyField').css('border-color', 'red');
            }
        });
    });
    
})