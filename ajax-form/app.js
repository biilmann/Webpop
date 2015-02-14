$(function() {
  
  // Reset the form in case modal has already been opened and a form sent off.
  $(".form-modal").click(function(){
    $("#upload-form")[0].reset();
    $("#feedback-container").empty();
  });
  
  
  // AJAX
  $("#upload-form").submit(function(e) {
    e.preventDefault();
    
    // Show the animated loading icon
    $("#loader-icon").show();
    
    // If resending after correcting an error make sure the error message is gone
    $("#feedback-container").empty();
    
    $form = $(this);
    
    var formElement = document.getElementById("upload-form");
    var request = new XMLHttpRequest();
    request.open("POST",document.location.href);
    request.onload = function(e) {
      
      // Show the Success / Error messages
      if (this.status == 200) {
        
        $feedback = $("<div>").html(this.response).find(".form-feedback").hide();
        $("#feedback-container").prepend($feedback);
        // $form[0].reset();
        $feedback.fadeIn();
        $("#loader-icon").hide();
        
      }
    };
    request.send(new FormData(formElement));
  });
  
})
