const express = require("express");
const cors = require("cors");
const dotenv = require('dotenv').config();

const app = express();
var corsOptions = {
    origin: "http://localhost:8081"
};

app.use(cors(corsOptions));
// parse requests of content-type - application/json
app.use(express.json());
// parse requests of content-type - application/x-www-form-urlencoded
app.use(express.urlencoded({extended: true}));

const db = require("./models");
db.sequelize.sync({ force: false }).then(() => {
    console.log("database is connected successfully");
  });

// Simple test route
app.get("/", (req, res) => {
    res.json({
        message: "Welcome to the app"
    })
})

// set port, listen for requests
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
    console.log(`server is runnning on port ${PORT}`)
})
