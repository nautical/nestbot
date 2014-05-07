# Description:
#   Get Location of product inside the store
#
# Commands:
#   hubot search <query> -  Get Location of product inside the store


module.exports = (robot) ->

  robot.respond /search (.*)/i, (msg) ->
    query  = msg.match[1]
    response = "Searching data for ... " + query
    msg.send response + " .... "