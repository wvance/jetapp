// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//
// PUT OTHERS HERE
//= require js-routes
//= require materialize
//
//= require turbolinks
//= require_tree .

var pollActivity = function(){
	$.ajax({
		url: Routes.activities_path({format: 'json', since: window.lastFetch}),
		type:"GET",
		dataType:"json",
		success: function(data){
			window.lastFetch = Math.floor((new Date).getTime() / 1000);
			console.log(data);
		}
	});
}

(function($){
  $(function(){

   // The rest above this is hidden

   $('.slider').slider();

  }); // end of document ready
})(jQuery); // end of jQuery name space

// window.pollInterval = window.setInterval(pollActivity, 5000);
