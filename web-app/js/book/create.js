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
                $('.emptyField').css({
                    'border-color': 'red',
                    'background-color': '#f4c6c6'
                });
            }
        });
    });

    //end validation
    //start drag and drop block
    $('.draggable').draggable({
        revert: true,
        helper: 'clone',
        start: function (event, ui) {
            $(this).fadeTo('fast', 0.3);
        },
        stop: function (event, ui) {
            $(this).fadeTo(0, 1);
            $(this).hide();
        }
    });

    $('#category option').hide();
    $('#category option').addClass('categorySelect');
    $('.droppable').droppable({
        haveClass: 'active',
        drop: function (event, ui) {
            $('.categorySelect').each(function () {
                if($(this).text() == $(ui.draggable).text()){
                   $(this).show();
                   $(this).attr('selected','selected');
                }
            });
        }
    });
    //end drag and drop function
});