text=eins=topics=docs=c()
text=getURL("http://service.yasssu.com/proxy_topic/?dispute")
eins=fromJSON(text)
docs=eins$response$docs
for(doc in docs[]) topics=append(topics,doc$topics)
stopics=sort(topics)
TopicDataFrame = data.frame(topics=stopics)
TopicTable = table(TopicDataFrame)
barplot(sort(TopicTable,decreasing=TRUE)[1:20],horiz=TRUE,cex.names=.6 5, cex.axis=.6,las=1)