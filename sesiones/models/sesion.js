var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var sesionSchema = new Schema({
  token: String
});

module.exports = mongoose.model('Sesion', sesionSchema);
