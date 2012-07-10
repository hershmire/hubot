# Description
#   BRB/AFK State manager
#
# Dependencies:
#   "<module name>": "<module version>"
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   `brb` or `be right back` - Tells hubot you'll be right back (defaults to 10min length)
#   `afk`                    - Tells hubot you'll be away from the keyboard for an indefinite amount of time
#
# Notes:
#   
#
# Author:
#   steckel

class HubotBRB
  constructor: (@robot) ->
    @away = {}
    @robot.respond /.*(brb|be right back)/gi, (msg) =>
      @msg = msg
      @setAway()

  setAway: (user) ->
    unless @away[@msg.message.user.name]?
      @away[@msg.message.user.name] = {}

      finishTime = (Math.round new Date().getTime() / 1000) + (10 * 60)
      timerInterval = setInterval =>
        console.log finishTime - (Math.round new Date().getTime() / 1000)
        if finishTime - (Math.round new Date().getTime() / 1000) is 0
          clearInterval timerInterval
          console.log "DONE!!!!"
      , 1000
        
      # myStopFunction = ->
      #   clearInterval myVar

      # @away[@msg.message.user.name] =
      #   timer : 10
      #   away  : setInterval
      @msg.send "See ya later #{@msg.message.user.name}..."

module.exports = (robot) ->
  new HubotBRB(robot)