const express = require("express");
const router = express.Router();
const User = require("../model/user.model");
const jwt = require("jsonwebtoken");
const confing = require("./confing");

// Login Route
// Login Route
router.route("/login").post(async (req, res) => {
    console.log("login hit", req.body);

    try {
        const user = await User.findOne({ mobileNum: req.body.mobileNum });

        if (user !== null) {
            console.log("login");
            sendToken(req.body.mobileNum, "Login successful", res);
        } else {
            console.log("register");
            res.json({ msg: "Register" });
        }
    } catch (error) {
        console.error("Login error:", error);
        return res.status(500).json({ msg: "Error during login" });
    }
});

// Registration Route
router.route("/register").post(async (req, res) => {
    console.log("Received request body:", req.body);
    try {
        const newUser = new User({
            mobileNum: req.body.mobileNum,
            password: req.body.password,
            fullName: req.body.fullName,
            email: req.body.email,
            gender: req.body.gender,
            alternateMobileNumber: req.body.alternateMobileNumber,
            hint: req.body.hint
        });

        await newUser.save();
        sendToken(req.body.mobileNum, "Registration successfull", res);
    } catch (error) {
        console.error("Registration error:", error);
        return res.status(500).json({ msg: "Error while saving data" });
    }
});

     sendToken = (mobileNum, msg, res) => {
    let token = jwt.sign({ mobileNum: mobileNum }, confing.key);
    res.json({ token: token, msg: msg });
};

module.exports = router;
