# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#audio_uploads').imagesLoaded ->
    $('#audio_uploads').masonry
      itemSelector: '.box'
      isFitWidth: true