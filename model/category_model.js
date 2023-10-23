
const mongoose = require("mongoose");

const schema = mongoose.Schema;

const LeafCategoryDetails = schema({
    name: {
        type: String,
        required:true,
    },
})

const SubCategoryDetails = schema({
    name: {
        type: String,
        required:true,
    },
    imageUrl: {
        type: String,
        required:true,
    },
    isExpandable:{
        type:Boolean,
        required:true
    },
    leafCategory:[LeafCategoryDetails],
});

const CategoryDetails = schema({
    name: {
        type: String,
        required:true,
    },
    description: {
        type: String,
        required:true,
    },
    imageUrl: {
        type: String,
        required:true,
    },
    backgroundColor: {
        type: String,
        required:true,
    },

    subCategory:[SubCategoryDetails],

});

module.exports = mongoose.model("CategoryDetails",CategoryDetails);
