const db = require('../models');
const User = db.user;
exports.ownerBoard = (req, res) => {
    res.status(200).send("Owner Contents");
}
exports.approveEmployee = (req, res) => {
    User.findOne({
        where: {
            email: req.body.email
        }
    }).then(user => {
        user.update({ appoved: true })
        res.status(201).send({
            message: "user is updated successfully"
        })
    }).catch((err) => {
        res.status(400).send({
            message: "Can't approve the specified user"
        })
    })
};