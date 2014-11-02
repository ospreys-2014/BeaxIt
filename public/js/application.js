$(document).ready(function() {
  $('body').on("click", "#signup", function(event){
    // event.preventDefault();
    var welcome = $("#welcome")
    var signup = $("#showsignup")
    $("#showsignup").fadeIn();
    $(welcome).replaceWith(signup);
  })


  $('body').on("click", "#login", function(event){
    // event.preventDefault();
   	var welcome = $("#welcome")
    var login = $("#showlogin")
    $("#showlogin").fadeIn();
    $(welcome).replaceWith(login);
  })

});


(function(document) {
	'use strict';  //JavaScript code executed in "strict mode".In normal JS mistyping a variable name creates a new global variable
								// In strict mode, this will throw an error
	var TableFilter = (function(Arr) {

		var searchinput;

		function onInputEvent(event) {
			searchinput = event.target;
			var tables = document.getElementsByClassName(searchinput.getAttribute('data-table'));
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

})(document);