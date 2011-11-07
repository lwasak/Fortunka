// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs

//= require jquery-ui-1.8.16.custom.min.js
//= require_self

$(document).ready(function(){

	//Hide (Collapse) the toggle containers on load
	$(".clickT").hide();
	
	//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
	$("h4.trigger").click(function(){
		$(this).toggleClass("active").next().slideToggle("slow");
		return false; //Prevent the browser jump to the link anchor
	});

});

  $("nav a").live('ajax:success', function(evt, data, status, xhr){
    $("#main").html(data);
  });
  
  $("span .page").live('ajax:success', function(evt, data, status, xhr){
    $("#main").html(data);
  });
  
  $(".slot .destroy").live('ajax:success', function(evt, data, status, xhr){
    $(this).parent().parent().fadeOut(4000);
  });
  
  $(".comment_slot .destroy").live('ajax:success', function(evt, data, status, xhr){
    $(this).parent().fadeOut(4000);
  });
  
  $(".slot .edit").live('ajax:success', function(evt, data, status, xhr){
    $("#main").html(data);
  });
  
  $(".slot .show").live('ajax:success', function(evt, data, status, xhr){
    $("#main").html(data);
  });
  
  
  