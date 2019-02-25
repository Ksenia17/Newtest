jQuery(function($){

  $('[data-project_id]').click( function() {
    var current_project_tr = $(this).parents('tr')[0];
    if (confirm("Are you sure?")) {
      $.ajax({
        url: '/projects/' + $(current_project_tr).attr('data-project_id') ,
        type: 'POST,'
        data: { _method: 'DELETE'},
        success: function(rezult) {
          $(current_project_tr).fadeOut(200);
          
        }
      });
    };
  });

});