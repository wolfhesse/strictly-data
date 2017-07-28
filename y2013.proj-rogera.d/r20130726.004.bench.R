
library(data.table)
library(plyr)
library(rbenchmark)

df <- data.frame(x = c(1,2,3,4,5,6,7,8), index = c('a', 'a', 'b', 'b', 'c', 'c','d','e'),control=c(1:8))
dt <- data.table(df)

plyr <- function() ddply(df, .(index), transform, z = x / sum(x))
av <- function() ave(df$x, df$index, FUN = function(z) z/sum(z))
t.apply <- function() unlist(tapply(df$x, df$index, function(x) x/sum(x)))
l.apply <- function() unlist(lapply(split(df$x, df$index), function(x){x/sum(x)}))
b.y <- function() unlist(by(df$x, df$index, function(x){x/sum(x)}))
agg <- function() aggregate(df$x, list(df$index), function(x){x/sum(x)})
d.t <- function() dt[, x/sum(x), by = index]

benchmark(plyr(), av(), t.apply(), l.apply(), b.y(), agg(), d.t(), 
          replications = 100, 
          columns = c("test", "elapsed", "relative"),
          order = "elapsed")

