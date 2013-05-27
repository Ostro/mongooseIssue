connection = require('connection')

connection.connection.openMongoose (err)->
  model = require('model').model
  console.log err if err
  model.find {}, (err1,models)->
    console.log err1 if err1
    console.log models
    connection.connection.closeMongoose (-> console.log 'mongoose closed')


