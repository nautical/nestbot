# Description:
#   Get Current Offers running in store
#
# Commands:
#   hubot show offers - Display all current offers running in store
#

Util = require "util"

class Offer
  constructor: (@item, @offer, @validity) ->
    @time = new Date()

module.exports = (robot) ->
  robot.respond /show offers$/i, (msg) ->
    output = Util.inspect(robot.brain.data.offers, false, 4)
    msg.send output

  robot.respond /add (.*) offer on (.*) till (.*)/i, (msg) ->
    try
        Offer = new Offer(msg.match[1], msg.match[2], msg.match[3])
        entry = []
        entry = robot.brain.data.offers
        if entry == undefined
            entry = []
        entry.push Offer
        robot.brain.data.offers = entry
        msg.send "Successfully added"
    catch
        msg.send "Error in understanding , sorry"
    finally
        msg.send "Error occured"

  robot.respond /remove offers/i, (msg) ->
    entry = []
    robot.brain.data.offers = entry