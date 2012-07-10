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

module.exports = (robot) ->
  robot.respond /.*(brb|be right back)/i, (msg) ->
    msg.send "See ya later..."