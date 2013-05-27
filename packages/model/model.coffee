mongoose = require 'mongoose'

console.log mongoose

schema = mongoose.Schema(
  value : String
)

model = mongoose.model(
  'model'
  schema
)

exports.model = model