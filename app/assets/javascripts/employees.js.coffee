

function swapImages() {
    var $current = $('#myimgs img:visible');
    var $next = $current.next();
    if($next.length === 0) {
        $next = $('#myimgs img:first');
    }
    $current.hide();
    $next.show();
}


$(document).ready(function() {
    $(".modal").on('shown', function() {
        $(this).find("[autofocus]:first").focus();
    });
});
$(document).ready(function() {
    // Run our swapImages() function every 0.5 secs
    setInterval(swapImages, 2000);
});

$('#exampleModal').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var recipient = button.data('whatever') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this)
  modal.find('.modal-title').text('New message to ' + recipient)
  modal.find('.modal-body input').val(recipient)
})