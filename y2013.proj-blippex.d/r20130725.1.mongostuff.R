

mongo <- mongo.create()
if (mongo.is.connected(mongo)) {
  buf <- mongo.bson.buffer.create()
  mongo.bson.buffer.append(buf, "name", "Joe")
  mongo.bson.buffer.append(buf, "age", 22L)
  b <- mongo.bson.from.buffer(buf)
  mongo.insert(mongo, "test.people", b)
}