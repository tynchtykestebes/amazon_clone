// Imports from packages
const express = require("express");
const mongoose = require("mongoose");
// Imports from other files
const authRouter = require("./routes/auth");
const adminRouter = require("./routes/admin");

// Init
const PORT = 3000;
const app = express();
const DB =
  "mongodb+srv://tynchtykestebes:tynchtyk123@cluster0.zxshtuo.mongodb.net/?retryWrites=true&w=majority";

// middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);

// Connections
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection Successful");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT}`);
});
