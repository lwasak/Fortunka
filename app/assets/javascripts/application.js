// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require jquery-1.6.2.min.js
//= require jquery-ui-1.8.16.custom.min.js
//= require_self

  $("nav a").live('ajax:success', function(evt, data, status, xhr){
    $("#main").html(data);
  });
  
  $(".slot .destroy").live('ajax:success', function(evt, data, status, xhr){
    console.log("destroy");
    $(this).parent().parent().effect("explode");
  });
  
  $(".slot .edit").live('ajax:success', function(evt, data, status, xhr){
    $("#main").html(data);
  });
  
  $(".slot .show").live('ajax:success', function(evt, data, status, xhr){
    $("#main").html(data);
  });
  
  


