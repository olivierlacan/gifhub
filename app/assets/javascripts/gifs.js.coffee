# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  reloadIndex = ->
    console.log "fired reloadIndex"

    $.getJSON
      url: '/gifs.json'
      success: (response) ->
        console.log "bullshit yeah"
        
        if response.length > $('#gif-list').children().length
        $.each gifs, (index, value) ->
          $("#gif-list").append("<li><img src='#{value['source_url']}' height='150' /></li>")

  $("#new_gif").on "ajax:success", reloadIndex