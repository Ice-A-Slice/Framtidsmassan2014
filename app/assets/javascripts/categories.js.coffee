# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->

  $('#modal_link').hide();
  $('.modal_link').hide();

$(document).ready(ready)
$(document).on('page:load', ready)