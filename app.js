const express = require("express"); // Install express framework
const app = express(); // Create express app
const path = require("path");
const port = 80; // Set port variable

app.get("/", (req, res) => {
  // Create get request on '/' to respond with team name
  //res.send("NoLogic");
  res.sendFile(path.join(__dirname + "/layouts/index.html"));
});

app.listen(port, () => {
  // Set port for app to serve up on
  console.log("Philip server is running");
});
