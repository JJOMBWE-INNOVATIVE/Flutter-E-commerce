
const express = require("express");
const mongoose = require("mongoose");
require('dotenv').config();
const port = process.env.PORT || 3001;
const app = express();

mongoose.connect(`mongodb+srv://jjombwe8nathan:${process.env.mongoPASSWORD}@cluster0.lmdlptz.mongodb.net/my-database?retryWrites=true&w=majority`);

const connection = mongoose.connection; 
connection.once("open", () => {
    console.log("Mongoose connection successful");
});

// middleware
app.use(express.json());
const loginRoutes = require("./routes/login.routes");
const userDetailsRoutes = require("./routes/user_details.routes");
const uploadAllRoutes = require("./routes/products_details.routes");
const categoryDetailsRoute = require("./routes/category_details.routes");
app.use("/",categoryDetailsRoute);
app.use("/uploads",express.static("./uploads"));
app.use("/",loginRoutes);
app.use("/",userDetailsRoutes);
app.use("/",uploadAllRoutes);



app.route("/").get((req, res) => {
    res.json({ message: "Hello, the server is configured" });
});


app.listen(port, "0.0.0.0", () => {
    console.log("The server is running at port:", port);
});



// my-database.users
// mongodb+srv://jjombwe8nathan:3Jesus7christ8@cluster0.lmdlptz.mongodb.net/my-database?retryWrites=true&w=majority
