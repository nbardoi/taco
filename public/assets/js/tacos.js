// Make sure we wait to attach our handlers until the DOM is fully loaded.
$(function() {
    $(".change-devour").on("click", function(event) {
      var id = $(this).data("id");
  
      var newState = {
        devoured: true
      };
  
      // Send the PUT request.
      $.ajax("/api/tacos/" + id, {
        type: "PUT",
        data: newState
      }).then(
        function() {
          // Reload the page to get the updated list
          location.reload();
        }
      );
    });
  
    $(".create-form").on("submit", function(event) {
      // Make sure to preventDefault on a submit event.
      event.preventDefault();
  
      var newTaco = {
        taco_name: $("#taco_name").val().trim()
      };

      // Send the POST request.
      $.ajax("/api/tacos", {
        type: "POST",
        data: newTaco
      }).then(
        function() {
          console.log(newTaco);
          // Reload the page to get the updated list
          location.reload();
        });
    });
  
  });
  