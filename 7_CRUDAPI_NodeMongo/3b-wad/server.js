const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const cors = require('cors');
const userRoutes = require('./routes/userRoutes');


const app = express();

// Middleware
app.use(bodyParser.json());
app.use(express.json());
app.use(cors());

// Connect to MongoDB
mongoose.connect('mongodb://localhost:27017/registrationDB')
  .then(() => console.log('MongoDB connected'))
  .catch(err => console.log(err));


// Use Routes
app.use('/api/users', userRoutes);

// Start Server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`Server running on port http://localhost:5000`));

app.get('/', (req, res) => {
  res.send('API is running...');
});
