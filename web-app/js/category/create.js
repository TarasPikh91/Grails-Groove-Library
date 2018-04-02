$(document).ready(function () {
   $(function () {
       $('.saveCategory').validate({
           rules: {
               categoryName: 'required'
           },
           messages: {
               categoryName: '<span style="color: red">fill categoryName input</span>'
           }
       });
   });

   $('#button').on('click', function () {
       $('.saveCategory .requireField').each(function () {
           if($(this).val() != ''){
               $(this).removeClass('emptyField');
           }else{
               $(this).addClass('emptyField');
               $('.emptyField').css('border-color', 'red');
           }
       });
   });

   //end validation

    $('td').addClass('draggable');

    $('.draggable').draggable({
        revert: true,
        helper: 'clone',
        start: function (event, ui) {
            $(this).fadeTo('fast', 0.5);
        },
        stop: function (event, ui) {
            $(this).fadeTo(0, 1);
            $(this).hide();
        }
    });

    $('.droppable').droppable({
        haveClass: 'active',
        // accept: '#draggable',
        drop: function (event, ui) {
            this.value = $(ui.draggable).text();


        }
    })


});