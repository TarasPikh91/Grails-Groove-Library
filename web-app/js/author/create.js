$(document).ready(function () {

    //validation
    $(function () {
        $(".saveAuthor").validate({
            rules: {
                fullName: 'required',
                book: {
                    required: true
                }
            },
            messages: {
                fullName : "<span style='color: red'>Please enter author first and last name</span>",
                book: "<span style='color: red'>Please select books from this list</span>"
            }
        });
    });

    $('#button').on('click', function () {
        $('.saveAuthor .requireField').each(function () {
             if($(this).val() != ''){
                $(this).removeClass('emptyField');
            }else{
                $(this).addClass('emptyField');
                $('.emptyField').css('border-color', 'red');
            }
        });
    });
    //end validation
});

