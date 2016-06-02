.libPaths( c( .libPaths(), "./lib") )

library(minerva)
library(ggplot2) 
library(reshape2) 
library(RMySQL)

# Get data from a database
connection <- dbConnect(MySQL(), user = 'root', password = '', host = '127.0.0.1', dbname='ProductHunt')
f.query <- dbSendQuery(connection, "SELECT votes_count, comments_count FROM Posts")
f.results = fetch(f.query, n=-1)

# Get a histogram for votes_count
info <- hist(f.results[,1])

# Print out information from histogram.
info

# This is a neat trick to print out a histogram for all attributes of your data.
allHistograms <- melt(f.results[,c(1:2)])
   ggplot(allHistograms,aes(x = value)) +
   facet_wrap(~variable,scales = "free_x") +
   geom_histogram()
