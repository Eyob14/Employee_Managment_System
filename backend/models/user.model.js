module.exports = (sequelize, Sequelize) => {
    const User = sequelize.define('users', {
        email: {
            type: Sequelize.STRING
        },
        password: {
            type: Sequelize.STRING
        },
        appoved: {
            type: Sequelize.BOOLEAN
        },
        attendance: {
            type: Sequelize.INTEGER
        }
    });
    return User;
}