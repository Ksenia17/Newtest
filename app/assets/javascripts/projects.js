jQuery.fn.submitOnCheck = function() {
    this.find('input[type=submit]').remove();
    
    return this;
}

$(function() {
    $('.edit_project').submitOnCheck();
});


// jQuery(function($){

//   $(".deleteProject").click( function() {
//     var current_project_span = $(this).parents('span')[0];
//     if (confirm("Are you sure?")) {
//       $.ajax({
//         url: '/projects/' + $(current_project_span).attr('data-project_id') ,
//         type: 'POST,'
//         data: { _method: 'DELETE'},
//         success: function(rezult) {
//           $(current_project_span).fadeOut(200);
          
//         }
//       });
//     };
//   });

// });
