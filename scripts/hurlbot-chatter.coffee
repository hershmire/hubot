# Hurlbot Chatter
#
# Train Hubot to banter with Hurlbot
#

module.exports = (robot) ->
  robot.hear /Hi, I'?m online\b/i, (msg) ->
    msg.reply "Yeah, yeah, you're online. We get it."

