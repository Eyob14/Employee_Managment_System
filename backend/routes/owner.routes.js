const authJwt = require("../middleware/authJwt");
const controller = require("../controllers/owner.controller");
const UserController = require("../controllers/employee.controller")

module.exports = function (app) {
    app.use(function (req, res, next) {
        res.header(
            "Access-Control-Allow-Headers",
            "x-access-token, Origin, Content-Type, Accept"
        );
        next();
    });
    app.get(
        "/api/owner",
        [authJwt.verifyToken, authJwt.isOwner],
        controller.ownerBoard
    );
    app.get(
        "/api/owner/updateProfile",
        [authJwt.verifyToken, authJwt.isOwner],
        UserController.get_updateProfile
    );
    app.put(
        "/api/owner/approve",
        [authJwt.verifyToken, authJwt.isOwner],
        UserController.post_updateProfile
    );
    app.get(
        "/api/owner/approve",
        [authJwt.verifyToken, authJwt.isOwner],
        controller.approveEmployee
    );
};