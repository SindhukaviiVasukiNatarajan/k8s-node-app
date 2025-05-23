const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

const VERSION = "v1.0.0";  // You can change this later for testing

app.get('/', (req, res) => {
  res.send(`Hello from Node.js App - Version ${VERSION}`);
});

app.listen(PORT, () => {
  console.log(`App is running on port ${PORT}`);
});