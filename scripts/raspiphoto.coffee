
module.exports = (robot) ->
	child_process = require("child_process")
	robot.respond /(take photo)/i, (msg) ->
		child_process.exec 'raspistill -hf -vf -w 480 -h 360 -o img.jpg && curl -F file=@/home/pi/raspbot/img.jpg -F channels=XXX -F token=YYY https://slack.com/api/files.upload'
		msg.send "photo taken"
