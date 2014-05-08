# Description:
#   Greetings
#
# Commands:
#   hubot hi
#
# Notes:
#   Greetings

rules = [
  "Hello Dear Customer ,",
  "Thanks for visiting our store ",
  "to get a Map of store type MAP",
  "for other information type HELP"
  ]

module.exports = (robot) ->
  robot.respond /hi/i, (msg) ->
    text = msg.message.text
    msg.send rules.join('\n')