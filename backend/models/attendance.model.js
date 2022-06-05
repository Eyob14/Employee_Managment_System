module.exports = (sequelize, Sequelize) => {
    const Attendance = sequelize.define('attendance', {
        date: { type: Sequelize.DATEONLY, defaultValue : new Date()},
        present: {
            type: Sequelize.BOOLEAN
        }
    });
    return Attendance;
}