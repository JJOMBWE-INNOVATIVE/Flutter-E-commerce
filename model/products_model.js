const mongoose = require("mongoose");

const schema = mongoose.Schema;
const Product_details = schema({

        name: {
            type: String,
            required:true,
        },
        desc: {
            type: String,
            required:true,
        },
        wishlisted: {
            type: String,
        },
        actual_price: {
            type: String,
            required:true,
        },
        discounted_price: {
            type: String,
            required:true,
        },
        discount: {
            type: String,
            required:true,
        },
        category:{
            type: String,
            required:true,
        },
        sub_category: {
            type: String,
            required:true,
        },
        type: {
            type: String,
            required:true,
        },
        genre: {
            type: String,
            required:true,
        },
        brand: {
            type: String,
            required:true,
        },
        image_url:{
            type: String,
            required:true,
        },
        rating: {
            type: String,
        },

});

module.exports = mongoose.model("Product_details",Product_details);