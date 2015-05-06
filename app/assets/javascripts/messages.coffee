# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  pusher = new Pusher('0409b5548d5062e57e49')
  channel = pusher.subscribe('test-channel')

  channel.bind 'my-event', (data) ->
    $('#messages').append "<tr><td>#{data.content}</td><td>#{data.name}</td></tr>"