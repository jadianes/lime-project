the Lime project
================

[yhat](http://www.yhathq.com) models for a lime juicing dataset

### How to deploy  

Each model is contained in a particular folder that itself contains a script `deploy.R`. They are intend to be run from the folder itself, so we need to change the working directory before runing the script. For example:  

    setwd("./data-set")
    source("deploy.R")

will deploy the `data-set` model. Of course, we need to modify the `deploy.R` script with our *yhat* credentials. They are spected to be found in the file `config.file.csv` in the parent folder.  

### Current models

`limeData`  
An interface to the raw dataset. Required input parameters:
*  `fromRow` first row to be retrieved from the dataset (inclusive)
*  `toRow` last row to be retrieved from the dataset (inclusive)

### Ongoing models

`limeGlm`
Multivariate linear regression model to predict juice volume.  

`limeClusters`
kMeans clustering to identify types of limes.  


