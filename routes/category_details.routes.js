
const express = require("express");
const router = express.Router();
const CategoryDetails = require("../model/category_model");

router.route("/add").post((req, res) => {
    const categoryDetails = new CategoryDetails({
        ...req.body,
    });
    
    categoryDetails.save().then(()=>{
        res.json("category added succesfully");
    }).catch((error)=>{
        res.status(500).json(error); 
    })

});

router.route("/getCategory").get(async(req, res) =>{
    try {
        const result = await CategoryDetails.find().exec();
        return res.json({
          data: result,
        });
      } catch (error) {
        return res.status(409).json(error);
      }
})
  
module.exports = router;





