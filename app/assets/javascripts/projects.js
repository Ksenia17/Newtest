jQuery.fn.submitOnCheck = function() {
    this.find('input[type=submit]').remove();
    
    return this;
}

$(function() {
    $('.edit_project').submitOnCheck();
});



// $( function() {
//     $( "#sortable" ).sortable({
//       revert: true
//     });
//     $( "#draggable" ).draggable({
//       connectToSortable: "#sortable",
//       helper: "clone",
//       revert: "invalid"
//     });
//     $( "ul, li" ).disableSelection();
//   } );


$( function() {
    $( "#sortable" ).sortable();
    $( "#sortable" ).disableSelection();
  } );