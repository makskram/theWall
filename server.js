const express = require("express");
const path = require("path");
const mysql = require("mysql");

const connectionPool = mysql.createPool({
  host: process.env.DB_HOST || "localhost",
  user: process.env.DB_USER || "root",
  password: process.env.DB_PASS || "Mysq2021!",
  database: process.env.DB_NAME || "thewall",
});

const app = express();

app.use(express.json());

app.get("/api/bricks", (req, res) => {
  connectionPool.query("SELECT * FROM bricks", (err, data) => {
    if (err) {
      res.status(500).json(err);
    } else {
      res.json(data.map((el) => ({ id: el.id, text: el.content })));
    }
  });
});

app.post("/api/bricks", (req, res) => {
  const sql = "INSERT INTO bricks (content) VALUES (?)";
  connectionPool.query(sql, [req.body.text], (err, data) => {
    if (err) {
      res.status(500).json(err);
    } else {
      res.sendStatus(204);
    }
  });
});

app.use(express.static(path.join(__dirname, "client/build")));
app.get("*", (req, res) => {
  res.sendFile(path.join(__dirname, "client/build", "index.html"));
});

const port = process.env.PORT || 5000;

app.listen(port, () => {
  console.log(`Server is running on ${port}`);
});
