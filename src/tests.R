.libPaths( c( .libPaths(), "./lib") )

library(minerva)
library(ggplot2) 
library(reshape2) 
library(RMySQL)
library(lsr)

# Get data from a database
connection <- dbConnect(MySQL(), user = 'root', password = '', host = '127.0.0.1', dbname='ProductHunt')
f.query <- dbSendQuery(connection, "SELECT id, votes_count, comments_count FROM Posts")
f.results = fetch(f.query, n=-1)

#x<-rnorm(10)
x <- f.results[,2]
y <- f.results[,3]

# Does post get a significantlly different amount of votes and comments?
mean(x)
mean(y)
t.test(x,y,paired=TRUE) 

# What's the effect size
cohensD(x,y)