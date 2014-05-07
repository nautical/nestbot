# Description:
#   Compare two products
#
# Commands:
#   hubot compare <product1> and <product2> -  Get Comparision of products


module.exports = (robot) ->

  robot.respond /compare (.*) and (.*)/i, (msg) ->
    query1  = msg.match[1]
    query2  = msg.match[2]
    response = "Comparing '" + query1 + "' and '" + query2 + "'"
    msg.send response