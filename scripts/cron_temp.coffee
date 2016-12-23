CronJob = require("cron").CronJob

module.exports = (robot) ->
	new CronJob(
		cronTime: "0 */30 * * * *"
		onTick: () ->
			exec = require('child_process').exec
			exec "python /home/pi/BME280/Python27/bme280_sample.py", (err, stdout, stderr) ->
				if err
					console.log err
				else
					robot.send {room: "general"}, stdout
				return
		start: true
	)
