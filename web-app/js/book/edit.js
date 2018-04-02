$(document).ready(function () {
    $(function () {
        $('.updateBook').validate({
            rules: {
                title: 'required',
                countOfPage: {
                    required: true,
                    digits: true
                },
                category: 'required'
            },
            messages: {
                title: '<span style="color: red">fill title input</span>',
                countOfPage: '<span style="color: red">Only digits please/fill input</span>',
                category: '<span style="color: red">Select category from list</span>'

            }
        })
    })

    $('#button').on('click', function () {
        $('.updateBook .requireField').each(function () {
            if ($(this).val() != ''){
                $(this).removeClass('emptyField');
            }else{
                $(this).addClass('emptyField');
                $('.emptyField').css('border-color', 'red');
            }
        })
    })
})