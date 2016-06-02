
ifelse(!dir.exists("./lib"), dir.create("./lib"), FALSE)

install.packages("minerva", repos="http://cran.rstudio.com/", lib="./lib")
install.packages("MASS", repos="http://cran.rstudio.com/", lib="./lib")
install.packages("ggplot2", repos="http://cran.rstudio.com/", lib="./lib")
install.packages("reshape2", repos="http://cran.rstudio.com/", lib="./lib")
install.packages("RMySQL", repos="http://cran.rstudio.com/", lib="./lib")
install.packages("lsr", repos="http://cran.rstudio.com/", lib="./lib")
