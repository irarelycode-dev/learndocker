const express = require("express");
const cors = require("cors");

const app = express();
const baseRouter = express.Router();

app.use(baseRouter);

baseRouter.get("/", (req, res) => {
    res.send("base router")
})

app.listen(5342, () => {
    console.log("running on port 5342")
})