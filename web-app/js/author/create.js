$(document).ready(function () {
    $(function () {
        $("input[name='fullName'], select[name='book']").focus(function () {
            $(this).css({
                'background-color':'#f8f9fa',
                'border-color':'#60e588'
            });
        });
    });

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
                $('.emptyField').css({
                    'border-color': 'red',
                    'background-color': '#f7aaaa'
                });
            }
        });
    });
    //end validation

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
    $('#Books option').hide();
    $('#Books option').addClass('bookSelected');
    $('.droppable').droppable({
        haveClass: 'active',
        drop: function (event, ui) {
            $('.bookSelected').each(function () {
                if($(this).text() == $(ui.draggable).text()){
                    $(this).show();
                    $(this).attr('selected', 'selected');
                }
            });
        }
    });
});

