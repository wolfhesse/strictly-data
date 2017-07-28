

library("RJSONIO", lib.loc="/home/alpha/R/i686-pc-linux-gnu-library/2.15")
library("RCurl", lib.loc="/home/alpha/R/i686-pc-linux-gnu-library/2.15")
text=eins=topics=docs=c()
text=getURL("http://service.yasssu.com/proxy_topic/?hitzewelle")
eins=fromJSON(text)
docs=eins$response$docs
for(doc in docs[]) topics=append(topics,doc$topics)
stopics=sort(topics)
TopicDataFrame = data.frame(topics=stopics)
TopicTable = table(TopicDataFrame)
barplot(sort(TopicTable,decreasing=TRUE)[1:20],horiz=TRUE,cex.names=.45, cex.axis=.2,las=1)

