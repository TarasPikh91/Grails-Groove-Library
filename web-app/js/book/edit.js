$(document).ready(function () {
    $(function () {
        $("input[name='title'], input[name='countOfPage'], select[name='category']").focus(function () {
            $(this).css({
                'background-color': '#f8f9fa',
                'border-color': '#3131f7',
                'font-style':'italic'
            });
        });
    });

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