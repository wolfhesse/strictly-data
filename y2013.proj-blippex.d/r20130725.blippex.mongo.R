# with limit
cur=mongo.find(mongo,"search.data_dump",limit=1000L)
while(mongo.cursor.next(cur))
  write(mongo.bson.to.list(mongo.cursor.value(cur))$root,"roots.lst",append=TRUE)

# without limit
cur=mongo.find(mongo,"search.data_dump")
while(mongo.cursor.next(cur))
  write(mongo.bson.to.list(mongo.cursor.value(cur))$root,"roots.lst",append=TRUE)