const jwt = require('jsonwebtoken');
const config = require('../config/auth.config');
const db = require('../models');
const User = db.user;

verifyToken = (req, res, next) => {
    let token = req.headers["x-access-token"];
    jwt.verify(token, config.secret, (err, decoded) => {
        if (err) {
            return res.status(401).send({
                message: "Unauthorized!"
            });
        }
        req.userId = decoded.id;
        next();
    });
};

isOwner = (req, res, next) => {
    User.findByPk(req.userId)
        .then(user => {
            user.getRoles()
                .then(roles => {
                    for (let i = 0; i < roles.length; i++) {
                        if (roles[i].name === "owner") {
                            next();
                            return;
                        }
                    }
                    res.status(403).send({
                        message: "Require Admin Role!"
                    });
                    return;
                });
        });
};

isManager = (req, res, next) => {
    User.findByPk(req.userId)
        .then(user => {
            user.getRoles()
                .then(roles => {
                    for (let i = 0; i < roles.length; i++) {
                        if (roles[i].name == "manager") {
                            next();
                            return;
                        }
                    }
                    res.status(403).send({
                        message: "Require Manager Role!"
                    });
                    return;
                });
        });
}

const authJwt = {
    verifyToken: verifyToken,
    isOwner: isOwner,
    isManager: isManager
};
module.exports = authJwt;