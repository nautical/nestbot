# Description:
#   Get Store Map
#
# Commands:
#   hubot map - Returns a map view of the store .


module.exports = (robot) ->

  robot.respond /map/i, (msg) ->
    response = "Getting Map data ... "
    msg.send response