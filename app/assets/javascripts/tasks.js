// jQuery(function($){
//   $(".deleteAction").click( function() {
//     var current_project_tr = $(this).parents('tr')[0];
//     if (confirm("Are you sure?")) {
//       $.ajax({
//         url: '/project_tasks/' + $(current_project_tr).attr('data-project_id') ,
//         type: 'POST,'
//         data: { _method: 'DELETE'},
//         success: function(rezult) {
//           $(current_project_tr).fadeOut(200);
//           console.log(rezult)
//         }
//       });
//     };
//   });

// });