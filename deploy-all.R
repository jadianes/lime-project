cat("Deploying data set...")
setwd("./data-set")
source("deploy.R")
cat("DEPLOYED!","\n")

cat("Deploying GLM Juice.Volume predictor...")
setwd("../glm-model")
source("deploy.R")
cat("DEPLOYED!","\n")

cat("Deploying Tree Cut.Type classifier...")
setwd("../tree-model")
source("deploy.R")
cat("DEPLOYED!","\n")

setwd("..")