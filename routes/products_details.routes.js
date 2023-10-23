const express = require("express");
const router = express.Router();
const Product_details = require("../model/products_model");
const multer = require("multer");
const csv = require("csvtojson");
const fs = require("fs");

if (!fs.existsSync("./uploads")) {
  fs.mkdirSync("./uploads");
}

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, "./uploads");
  },
  filename: (req, file, cb) => {
    cb(null, file.originalname);
  },
});

const upload = multer({
  storage,
});

router.route("/uploadAll").post(upload.single("csvFile"), async (req, res) => {
  // Check if the CSV file exists
  if (!fs.existsSync(req.file.path)) {
    return res.status(404).json({ error: "CSV file not found" });
  }

  try {
    const jsonArray = await csv().fromFile(req.file.path);

    // Insert data into the database
    await Product_details.insertMany(jsonArray);
    return res.json("Added successfully");
  } catch (error) {
    return res.status(500).json({ error: "Internal server error" });
  }
});


router.route("/getAll").get(async (req, res) => {
    try {
      const result = await Product_details.find().exec();
      return res.json({
        data: result,
      });
    } catch (error) {
      return res.status(405).json(error);
    }
  });
  



module.exports = router;
