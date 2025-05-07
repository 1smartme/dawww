const mongoose = require('mongoose');

const userSchema = new mongoose.Schema({
  name:     { type: String, required: true },
  email:    { type: String, required: true, unique: true },
  phone:    { type: String, required: true, match: /^[0-9]{10}$/ },
  course:   { type: String, required: true, enum: ['B.Tech', 'B.Sc', 'B.Com', 'MCA', 'MBA'] },
  year:     { type: String, required: true, enum: ['1st Year', '2nd Year', '3rd Year', 'Final Year'] },
  createdAt: { type: Date, default: Date.now }
});

module.exports = mongoose.model('User', userSchema);
