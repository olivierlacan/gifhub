# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#gif_tag_tokens').tokenInput '/tags.json'
    theme: "facebook"
    # prepopulate with tokens loaded from data-load attribute
    # would be useful on a show page
    # prePopulate: $('#gif_tag_tokens').data('load')