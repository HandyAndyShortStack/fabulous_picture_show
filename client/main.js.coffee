$ ->

  currentPicture = $('#FPB1').show()

  $('#switcher-left').on 'click', ->
    currentPicture.fadeOut =>
      currentPicture = getLeftPicture(currentPicture)
      currentPicture.fadeIn()

  $('#switcher-right').on 'click', ->
    currentPicture.fadeOut =>
      currentPicture = getRightPicture(currentPicture)
      currentPicture.fadeIn()

getLeftPicture = (el) ->
  picNunber = parseInt $(el).attr('id')[3], 10
  num = picNunber - 1
  if num < 1 then num = 5
  $("#FPB#{num}")

getRightPicture = (el) ->
  picNunber = parseInt $(el).attr('id')[3], 10
  num = picNunber + 1
  if num > 5 then num = 1
  $("#FPB#{num}")
