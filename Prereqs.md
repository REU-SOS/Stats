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

