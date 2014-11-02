$(document).ready(function() {
  $(document).on("click", "#signup", function(event){
    event.preventDefault();
    $("#showsignup").toggle();
  })
  $(document).on("click", "#login", function(event){
    event.preventDefault();
    $("#showlogin").toggle();
  })

});

