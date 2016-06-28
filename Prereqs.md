[Prereqs](https://github.com/REU-SOS/Stats/blob/master/Prereqs.md#prereqs) | [Summary](https://github.com/REU-SOS/Stats/blob/master/Summary.md#summary) | [Tests](https://github.com/REU-SOS/Stats/blob/master/Tests.md#tests) | [Viz](https://github.com/REU-SOS/Stats/blob/master/Viz.md#viz)

# Prereqs

#### Installing R and RStudio


Mac 

```
brew tap homebrew/science
brew install R
# R Studio

```

Windows

```
choco install r.project -y
choco install r.studio -y
# choco package doesn't add path for r.project
setx /M PATH "%PATH%;C:\Program Files\R\R-3.3.0\bin"
# Need to open new cmd window to get refreshed script.
```


#### Library

Installing libraries.

```
Rscript install.R 
```

#### Loading Data from MySQL or CSV

See [LoadFromCSV](https://github.com/REU-SOS/Stats/blob/master/src/loadDataFromCSV.R)  
See [LoadFromSQL](https://github.com/REU-SOS/Stats/blob/master/src/loadDataFromSQL.R)

To load data from your MySQL Database
```
Rscript loadDataFromSQL.R
```

To load from CSV (you must have data in data/posts.csv)
```
Rscript loadDataFromCSV.R
```

Both of these scripts will output a file called Rplots.pdf, which will contain a histogram summary of data.

