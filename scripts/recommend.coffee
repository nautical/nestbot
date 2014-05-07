# Description:
#   Get Recommendation for a product
#
# Commands:
#   hubot recommend <query> - Return recommendations .


module.exports = (robot) ->

  robot.respond /recommend (.*)/i, (msg) ->
    query  = msg.match[1]
    response = "Getting data for ... " + query
    msg.send response