
module.exports = (robot) ->
	child_process = require("child_process")
	robot.respond /(temperature)/i, (msg) ->
		child_process.exec 'python /home/pi/BME280/Python27/bme280_sample.py', (err, stdout, stderr) ->
			if err
				msg.send err
			else
				msg.send stdout
