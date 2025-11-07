const db = require('../config/db');

exports.getFoods = (req, res) => {
  db.query('SELECT * FROM foods', (err, results) => {
    if (err) throw err;
    res.json(results);
  });
};
