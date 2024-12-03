const express = require('express');
const cors = require('cors');

const app = express();
app.use(cors()); // Enable CORS

app.use(express.json());

app.get('/tasks', (req, res) => {
  res.json([
    { id: 1, name: 'Task 1' },
    { id: 2, name: 'Task 2' },
    { id: 3, name: 'Task 3' },
  ]);
});

const PORT = 4000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
