# Author:
#   Mandar Juvekar
#
# Description:
#   Generate random numbers.
#
# Commands:
#   hubot random
#   hubot random between <bound1> and <bound2>
#   hubot random <bound1> <bound2>

module.exports = (robot) ->
    robot.respond /random$/i, (res) ->
        res.reply("Random number between 0 and 1: #{Math.random()}")

    robot.respond /random between (\d+) and (\d+)/i, (res) ->
        if parseInt(res.match[1]) > parseInt(res.match[2])
            lower = parseInt(res.match[2])
            upper = parseInt(res.match[1])
        else
            lower = parseInt(res.match[1])
            upper = parseInt(res.match[2])
        rand = Math.floor(Math.random() * (upper - lower + 1) + lower)
        res.reply("Random number between #{lower} and #{upper}: #{rand}")

    robot.respond /random (\d+)\s(\d+)/i, (res) ->
        if parseInt(res.match[1]) > parseInt(res.match[2])
            lower = parseInt(res.match[2])
            upper = parseInt(res.match[1])
        else
            lower = parseInt(res.match[1])
            upper = parseInt(res.match[2])
        rand = Math.floor(Math.random() * (upper - lower + 1) + lower)
        res.reply("Random number between #{lower} and #{upper}: #{rand}")