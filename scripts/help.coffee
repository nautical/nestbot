# Description:
#   Make sure that hubot knows the rules.
#
# Commands:
#   hubot the rules - Make sure hubot still knows the rules.
#
# Notes:
#   DON'T DELETE THIS SCRIPT! ALL ROBAWTS MUST KNOW THE RULES

rules = [
  "1. map : Get Map of store.",
  "2. search <item> : Search item in store (get map)",
  "3. compare <item> and <item> : Compares two items"
  ]

module.exports = (robot) ->
  robot.respond /help/i, (msg) ->
    text = msg.message.text
    msg.send rules.join('\n')