# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

  #$('.newsLink').hide();

  $('.UpAgain').hide();
  $('.interest').hide();
  $('#modal_link').hide();
  $('.modal_link').hide();

  





  $(this).scrollTop(0);
  scrolled = $('#container-start').height();



  $("#side").localScroll();
  $("#for_exhibitors_menu").localScroll();
  $("#dropdownscroll").localScroll();
  $(".UpAgain").localScroll();

  hi = `$(window).scroll(function(){
    if($(window).scrollTop() > scrolled){
   		$(".UpAgain").stop( true, true ).fadeIn(1000);
      }
    else {
			$(".UpAgain").stop( true, true ).fadeOut(1000);
    }
    });`

  $(".cat").click ->
    if $(this).hasClass('clickedButton')
      $("#exhibitor_show").slideUp(500);
      $(this).removeClass("clickedButton");



    else
      $(".clickedButton").removeClass("clickedButton");
      $(this).addClass("clickedButton");
      $("#exhibitor_show").slideDown(500);

  $(".room").click ->
    if $(this).hasClass('clickedButtonRoom')
      $("#schedule_show").slideUp(500);
      $(this).removeClass("clickedButtonRoom");



    else
      $(".clickedButtonRoom").removeClass("clickedButtonRoom");
      $(this).addClass("clickedButtonRoom");
      $("#schedule_show").slideDown(500);


  $('.dropdown-toggle').dropdown();



$(document).ready(ready)
$(document).on('page:load', ready)


