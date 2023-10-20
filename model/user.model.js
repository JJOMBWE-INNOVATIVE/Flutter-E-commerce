const mongoose = require("mongoose");

const schema = mongoose.Schema;
const User = schema({
    mobileNum:{
        type: String,
        required: true,
        unique: true,
    },

    password:{
        type: String,
        required:true,
    },
    fullName:{
        type: String,
    },
    email:{
        type: String,
    },
    gender:{
        type: String,
    },
    alternateMobileNumber:{
        type: String,
    },
    hint:{
        type: String,
    }

});

module.exports = mongoose.model("user",User);

