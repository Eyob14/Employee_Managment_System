const authJwt = require("../middleware/authJwt");
const controller = require("../controllers/manager.controller");
const UserController = require("../controllers/employee.controller")

module.exports = function (app) {
    app.use(function (req, res, next) {
        res.header(
            "Access-Control-Allow-Headers",
            "x-access-token, Origin, Content-Type, Accept"
        );
        next();
    });
    app.get("/api/manager", [authJwt.verifyToken, authJwt.isManager], controller.managerBoard);
    app.get("/api/updateProfile", [authJwt.verifyToken, authJwt.isEmployee], UserController.get_updateProfile);
    app.put("/api/updateProfile", [authJwt.verifyToken, authJwt.isEmployee], UserController.post_updateProfile);
};