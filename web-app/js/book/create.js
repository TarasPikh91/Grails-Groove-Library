$(document).ready(function () {
    //validation
    $(function () {
        $(".saveBook").validate({
             rules: {
                title: 'required',
                countOfPage: {
                    required: true,
                    digits: true
                },
                category: 'required'
            },
            messages: {
                title: "<span style='color: red'>Fill title input</span>",
                countOfPage: '<span style="color: red">Only digits please/fill input</span>',
                category: '<span style="color: red">Select category from list</span>'

            }
        });
    });
    $('#button').on('click', function () {
        $('.saveBook .requireField').each(function () {
            if($(this).val() != ''){
                $(this).removeClass('emptyField');
            }else{
                $(this).addClass('emptyField');
                $('.emptyField').css('border-color', 'red');
            }
        })
    })

    //end validation

    $('.draggable').draggable({
        revert: true,
        helper: 'clone',
        start: function (event, ui) {
            $(this).fadeTo('fast', 0.5);
        },
        stop: function (event, ui) {
            $(this).fadeTo(0, 1);
        }
    });
    $('.droppable').droppable({
        haveClass: 'active',
        drop: function (event, ui) {
            //at this moment this part of code not work, but I will do it
        }
    });
});