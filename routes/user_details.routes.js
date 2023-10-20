const express = require("express");
const router = express.Router();
const User = require("../model/user.model");
const jwt = require("jsonwebtoken");
const confing = require("./confing");
const middleware = require("./middleware");

router.route("/user-details").get(middleware.checkToken, async (req, res) => {
    console.log(req.decoded);
    try {
        const result = await User.findOne({ mobileNum: req.decoded.mobileNum }).exec();
        return res.status(200).json({ msg: "Successfull", result: result });
    } catch (error) {
        console.error("Error while fetching user details:", error);
        return res.status(500).json({ msg: "Error", result: error });
    }
});

module.exports = router;
