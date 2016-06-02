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

