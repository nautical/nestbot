# Description:
#   Get Current Offers running in store
#
# Commands:
#   hubot show offers - Display all current offers running in store
#

class Offer
  constructor: (@item, @offer, @validity) ->
    @time = new Date()

module.exports = (robot) ->
  robot.respond /show offers$/i, (msg) ->
    out = ""
    for offer in robot.brain.data.offers
        out += "--------\n"
        out += offer.item
        out += "\n"
        out += offer.offer 
        out += "\n"
        out += offer.validity
        out += "\n"
    msg.send out

  robot.respond /add (.*) offer on (.*) till (.*)/i, (msg) ->
    if robot.auth.hasRole(msg.envelope.user, "administrator")
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
    else
        msg.send "Not an admin"

  robot.respond /remove offers/i, (msg) ->
    if robot.auth.hasRole(msg.envelope.user, "administrator")
        entry = []
        robot.brain.data.offers = entry
        msg.send "Removed offers successfully"
    else
        msg.send msg.envelope.user
        msg.send "Not an admin"