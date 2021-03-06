mongoose = require "mongoose"

configuration=
  development:
    address: "localhost"
    port: 27017
    dbName: "myDB"
    applicationAddress: 'localhost'
    applicationPort : 3000

configuration = configuration[process.env.NODE_ENV] || configuration.development
mongoosedb = mongoose.connection


openMongoose = (callback)->
  connectionString = ""
  if(configuration.user?)
    connectionString = "mongodb://#{configuration.user}:#{configuration.password}@#{configuration.address}:#{configuration.port}/#{configuration.dbName}"
  else
    connectionString = "mongodb://#{configuration.address}:#{configuration.port}/#{configuration.dbName}"
  mongoosedb.open connectionString, (err)->
    if err
      console.log "Mongoose connection fail"
      callback(err)
    else
      console.log "Mongoose connection OK"
      console.log mongoose
      callback()


closeMongoose = (callback)->
  mongoosedb.close ->
    callback()


exports.openMongoose = openMongoose
exports.closeMongoose = closeMongoose
exports.conf = configuration
