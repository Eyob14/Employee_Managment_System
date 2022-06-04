const db = require('../models');
const User = db.user;
const Attendance = db.attendance;


exports.createAttendance = (req, res) => {
    const id = req.params.id;
    console.log(id);
    Attendance.create({
        date: req.body.date,
        present: req.body.present
    })
        .then(attendance => {
            User.findByPk(id)
                .then(user => {
                    attendance.addUser(user)
                        .then(() => {
                            console.log("attendance created");
                            res.status(201).send({
                                message: "attendance was registered successfully for user" + id
                            });
                        })
                        .catch(err => {
                            res.status(400).send({
                                message: err.message || "cannot register user attendance" + id
                            });
                        });
                })
                .catch(err => {
                    res.status(500).send({
                        message: err.message || "cannot register user attendance"
                    });
                });
        })
}

//get the list of attendances for a particular user
//attendance history of the user
exports.getAttendanceHistoryOfUser = (req, res) => {
    const id = req.params.id;
    User.findOne({
        where: { id: id },
        include: [{
            model: Attendance,
            required: true
        }]
    }).then(data => {
        var attendances = data.attendances;


        let result = [];

        console.log("*************************************************");
        for (let j = 0; j < attendances.length; j++) {
            let attendance = {
                id: attendances[j].dataValues.id,
                date: attendances[j].dataValues.date,
                present: attendances[j].dataValues.present
            }
            result.push(attendance);
        }
        console.log("*************************************************");
        let answer = []
        console.log(today);
        for (let i = 0; i < result.length; i++) {
            if (result[i].date === today && result[i].present === false) {
                continue;
            }
            else {
                answer.push(result[i]);
            }
        }
        res.status(200).send(answer);
    }).catch(err => {
        res.status(500).send({
            message: err.message || "cannot retrieve attendance"
        });
    })
}

//get list todays attendance 
exports.getTodayAttendanceOfAllUsers = (req, res) => {
    User.findAll({
        include: [{
            model: Attendance,
            required: true,
            where: { date: req.body.date }
        }]
    }).then(data => {
        let result = [];
        for (let i = 0; i < data.length; i++) {
            let attendance = {
                id: data[i].attendances[0].dataValues.id,
                email: data[i].email,
                present: data[i].attendances[0].dataValues.present
            }
            result.push(attendance);
        }
        res.status(200).send(result);
    }).catch(err => {
        res.status(500).send({
            message: err.message || "cannot retrieve attendance"
        });
    })
}

//creates an attendance for a single user
exports.getTodayAttendanceOfUser = (req, res) => {
    const id = req.params.id;
    // const date = new Date();
    // const day = date.getDate();
    // const month = date.getMonth() + 1;
    // const year = date.getFullYear();
    // const today = year + '-' + month + '-' + day;
    User.findOne({
        where: { id: id },
        include: [{
            model: Attendance,
            required: true,
            where: { date: req.body.date }
        }]
    }).then(data => {
        console.log(data.attendances[0].dataValues);
        result = {
            id: data.attendances[0].dataValues.id,
            date: data.attendances[0].dataValues.date,
            present: data.attendances[0].dataValues.present
        }
        console.log("good job")
        res.status(200).send(result);
    }).catch(err => {
        res.status(500).send({
            message: err.message || "cannot retrieve attendance"
        });
    });
}

//update today's attendance using the specific id of the attendance
exports.updateAttendance = (req, res) => {
    const id = req.params.id;
    Attendance.findOne({
        where: { id: id }
    }).then(attendance => {
        attendance.update({
            present: req.body.present
        }).then(() => {
            res.status(200).send({
                message: "attendance was updated successfully"
            });
        }).catch(err => {
            res.status(500).send({
                message: err.message || "cannot update attendance"
            });
        });
    }).catch(err => {
        res.status(500).send({
            message: err.message || "cannot update attendance"
        });
    });
}

//delete today's attendance using the specific id of the attendance
exports.deleteAttendance = (req, res) => {
    const id = req.params.id;
    Attendance.destroy({
        where: { id: id },
        include: [{
            model: User,
            required: true
        }]
    }).then(() => {
        res.status(200).send({"message": "attendance was deleted successfully"});
    }).catch(err => {
        res.status(500).send({"message": err.message || "cannot delete attendance"});
    });
}




//delete all attendances of a particular user using his id
exports.deleteAttendanceHistoryOfUser = (req, res) => {
    const id = req.params.id;
    User.findOne({
        where: { id: id },
        include: [{
            model: Attendance,
            required: true
        }]
    }).then(user => {
        user.attendances.forEach(attendance => {
            attendance.destroy().then(() => {
                res.status(200).send({
                    message: "attendance was deleted successfully"
                });
            }).catch(err => {
                res.status(500).send({
                    message: err.message || "cannot delete attendance"
                });
            });
        });
    }).catch(err => {
        res.status(500).send({
            message: err.message || "cannot delete attendance"
        });
    });
}