$(document).ready(function() {
  $('body').on("click", "#signup", function(event){
    event.preventDefault();
    var welcome = $("#welcome")
    var signup = $("#showsignup")
    $("#showsignup").fadeIn();
    $(welcome).replaceWith(signup);
  })


  $('body').on("click", "#login", function(event){
    event.preventDefault();
   	var welcome = $("#welcome")
    var login = $("#showlogin")
    $("#showlogin").fadeIn();
    $(welcome).replaceWith(login);
  })

});

