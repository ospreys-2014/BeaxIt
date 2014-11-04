var TableFilter = (function(Arr) {
  var tables;
  var searchinput;

  function onInputEvent(event) {
    searchinput = event.target;
    tables = document.getElementsByClassName(searchinput.getAttribute('data-table'));
    Arr.forEach.call(tables, function(table) {
      Arr.forEach.call(table.tBodies, function(tbody) {
        Arr.forEach.call(tbody.rows, filter);
      });
    });
  }

  function filter(row) {
    var text = row.textContent.toLowerCase(), val = searchinput.value.toLowerCase();
    row.style.display = text.indexOf(val) === -1 ? 'none' : 'table-row';
  }

  return {
    init: function() {
      var inputs = document.getElementsByClassName('table-filter');
      Arr.forEach.call(inputs, function(input) {
        input.oninput = onInputEvent;
      });
    }
  };
  })(Array.prototype);

  document.addEventListener('readystatechange', function() {
  if (document.readyState === 'complete') {
    TableFilter.init();
  }
});

$(document).ready(function() {
  $('body').on("click", "#signup", function(event){
    var welcome = $("#welcome")
    var signup = $("#showsignup")
    $("#showsignup").fadeIn();
    $(welcome).replaceWith(signup);
  })


  $('body').on("click", "#login", function(event){
   	var welcome = $("#welcome")
    var login = $("#showlogin")
    $("#showlogin").fadeIn();
    $(welcome).replaceWith(login);
  })

  $('#tracks').click(function(event) {
    event.preventDefault();
    $tracks = $(event.target)
    $.ajax({
      url: $tracks.attr('href'),
      type: 'get'
    })
    .done(function(response) {
      $('.display').append(response);
      TableFilter.init();
    });
  });
$('#albums').click(function(event) {
    event.preventDefault();
    $albums = $(event.target)
    $.ajax({
      url: $albums.attr('href'),
      type: 'get'
    })
    .done(function(response) {
      $('.display').append(response);
      TableFilter.init();
    });
  });
$('#artists').click(function(event) {
    event.preventDefault();
    $artists = $(event.target)
    $.ajax({
      url: $artists.attr('href'),
      type: 'get'
    })
    .done(function(response) {
      $('.display').append(response);
      TableFilter.init();
    });
  });
    $('#artist_search').on("submit", function(event){
    $("#showsuccess").fadeIn();
    event.preventDefault();
    $tracks = $(event.target)
    $.ajax({
      url: $tracks.attr('href'),
      type: 'get'
    })
    .done(function(response) {
      $('.display').append(response);
      TableFilter.init();
    });
  })

});

