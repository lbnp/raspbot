var RaspiCam = require("raspicam");

var camera = new RaspiCam({mode: "photo", output: "img.jpg", timeout: 1});

camera.on("exit", function() {console.log("finished"); camera.stop()});
camera.start();
