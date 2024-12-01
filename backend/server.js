const express = require("express");

const app = express();
app.use(express.json());

// Mock data (no DB)
const tasks = [
  { id: 1, name: "Task 1" },
  { id: 2, name: "Task 2" },
  { id: 3, name: "Task 3" },
];

app.get("/tasks", (req, res) => {
  res.json(tasks);
});

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
