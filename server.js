const express = require("express");
const mysql = require("mysql2");
const cors = require("cors");

const app = express();
app.use(cors());

// DB CONNECTION
const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "your_password",
  database: "your_database_name"
});

db.connect(err => {
  if (err) {
    console.error("DB connection failed:", err);
  } else {
    console.log("Connected to database");
  }
});

// API: GET TASKS
app.get("/tasks", (req, res) => {
  const sql = "SELECT * FROM shutdown_tasks";

  db.query(sql, (err, result) => {
    if (err) {
      res.status(500).send(err);
    } else {
      res.json(result);
    }
  });
});

app.listen(3000, () => {
  console.log("Server running on http://localhost:3000");
});
