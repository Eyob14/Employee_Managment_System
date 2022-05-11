exports.allAccess = (req, res) => {
    res.status(200).send("Public Contents");
}
exports.ownerBoard = (req, res) => {
    res.status(200).send("Owner Contents");
}