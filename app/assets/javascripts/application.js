// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
// enable jquery
//= require jquery
//= require materialize
//= require activestorage
//= require turbolinks
//= require_tree .

// to load everything after turbolinks loaded
$(document).on('turbolinks:load', function(){
	// enable dropdown trigger
	$(".dropdown-trigger").dropdown();
	// enable sidenav
	$('.sidenav').sidenav();
	// enable fadeout for flash msg
	$('#fade-out-flash').fadeOut(2000);
})
