const express = require("express");
const cors = require("cors");
const dotenv = require('dotenv').config();
var bcrypt = require("bcryptjs");

const app = express();
var corsOptions = {
    origin: "http://localhost:8081"
};

app.use(cors(corsOptions));
// parse requests of content-type - application/json
app.use(express.json());
// parse requests of content-type - application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: true }));

const db = require("./models");
const Role = db.role;
const User = db.user;
db.sequelize.sync({force: true}).then(() => {
    console.log("database is connected successfully");
    initial();
});

function initial() {
    Role.create({
        id: 1,
        name: "employee"
    });
    Role.create({
        id: 2,
        name: "manager"
    });
    Role.create({
        id: 3,
        name: "owner"
    });
    User.create({
        email: "admin@example.com",
        password: bcrypt.hashSync('123456', 6)
    }).then(user => {
        user.setRoles([3]).then(() => {console.log("owner was succesfully registered.")})
    })
}

require('./routes/auth.routes')(app);
require('./routes/employee.routes')(app);
require('./routes/manager.routes')(app);
require('./routes/owner.routes')(app);

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
});
