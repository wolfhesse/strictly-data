
library("RJSONIO")
library("RCurl")
rm(tt)
tt=c()
tt$text=tt$eins=tt$topics=tt$docs=c()

tt$url.orig="http://service.yasssu.com/proxy_topic/?hitzewelle"
tt$url='http://192.168.0.15:5984/sim_topics/573c235a53053810c366ac0166000b6d'

tt$text=getURL(tt$url)
write(tt$text,file="tt.text.json")
tt$eins=fromJSON(tt$text)


tt$docs=tt$eins$response$docs
for(tmp.doc in tt$docs[]) tt$topics=append(tt$topics,tmp.doc$topics)
tt$stopics=sort(tt$topics)
df.TopicDataFrame = data.frame(topics=tt$stopics)
tt$TopicTable = table(df.TopicDataFrame)

barplot(sort(tt$TopicTable,decreasing=TRUE)[1:10],horiz=FALSE,cex.names=.45, cex.axis=.2)

pie(tt$TopicTable)
