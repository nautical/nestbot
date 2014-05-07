# Description:
#   Gets the help.
#
# Commands:
#   hubot help
#
# Notes:
#   Fast help

rules = [
  "1. map : Get Map of store.",
  "2. search <item> : Search item in store (get map)",
  "3. compare <item> and <item> : Compares two items",
  "4. show offers : Shows offers running in store"
  ]

module.exports = (robot) ->
  robot.respond /help/i, (msg) ->
    text = msg.message.text
    msg.send rules.join('\n')