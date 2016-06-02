.libPaths( c( .libPaths(), "./lib") )

library(minerva)
library(ggplot2) 
library(reshape2) 

# Get data from a CSV
f.results = read.csv("data/posts.csv", header=TRUE, sep=";", quote="\"")

# Get a histogram for votes_count
info <- hist(f.results[,7])

# Print out information from histogram.
info

# This is a neat trick to print out a histogram for all attributes of your data.
allHistograms <- melt(f.results[,c(7:8)])
   ggplot(allHistograms,aes(x = value)) +
   facet_wrap(~variable,scales = "free_x") +
   geom_histogram()
