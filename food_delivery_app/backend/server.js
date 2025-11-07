const express = require('express');
const cors = require('cors');
const mysql = require('mysql2');
const dotenv = require('dotenv');
const foodRoutes = require('./routes/foodRoutes');

dotenv.config();
const app = express();
app.use(cors());
app.use(express.json());

app.use('/api/foods', foodRoutes);

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
