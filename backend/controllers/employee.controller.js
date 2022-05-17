const db = require("../models")
const User = db.user;

exports.allAccess = (req, res) => {
    res.status(200).send("Public Contents");
}

exports.get_userBoard = (req, res) => {
    res.status(200).send("Employee contents");
}

exports.get_updateProfile = (req, res) => {
    res.status(200).send("Update profile page here")
}

exports.post_updateProfile = (req, res) => {
    let user = req.body.email;
    User.findOne({
        where: {
            email: user
        }
    }).then(user => {
        user.update({
            password: "new password"
        })
    }).catch((err) => {
        res.status(401).send({
            message: "can't update user status"
        })
    })
}
