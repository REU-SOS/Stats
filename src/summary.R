.libPaths( c( .libPaths(), "./lib") )

library(minerva)
library(ggplot2) 
library(reshape2) 
library(RMySQL)

# Get data from a database
connection <- dbConnect(MySQL(), user = 'root', password = '', host = '127.0.0.1', dbname='ProductHunt')
f.query <- dbSendQuery(connection, "SELECT id, votes_count, comments_count FROM Posts")
f.results = fetch(f.query, n=-1)

#x<-rnorm(10)
x <- f.results[,2]

print("mean")
mean(x)

print("median")
median(x)

# Get minimum and maximum
print("min and max:")
range(x)

### Other summary

print("variance")
var(x)

#Standard deviation
print("standard deviation:")
sd(x)

#Tukey's five number summary, useful for boxplots
print("fivenum:")
fivenum(x)

# Interquartile range
print("interquartile range:")
IQR(x)

# Compute sample quantiles
print("quantiles:")
quantile(x)


