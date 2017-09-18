# * 1000 because milliseconds
# We might as well make use of the erb capability to "hardcode"
# this value
sko_time = <%= show_time.to_time.to_i %>

time_parts = () ->

  cur_seconds = Math.floor((new Date().getTime())/1000)
  time_until = sko_time - cur_seconds

  [
    Math.floor(time_until/(60*60*24)),
    Math.floor((time_until/(60*60)) % 24),
    Math.floor((time_until/60) % 60),
    time_until % 60,
  ]

pad_seconds = (seconds) ->
  if ("" + seconds).length == 1 then "0" + seconds else seconds

setInterval ->
    parts = time_parts()

    $('.counter .number').each (index) ->
      $(this).text(pad_seconds(parts[index]))
  , 1000
