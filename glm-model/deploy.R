source("./train.R")
library(yhatr)

model.require <- function() {
    library(caret)
}

model.transform <- function(df) {
    df
}

model.predict <- function(df) {
    df$pred <- predict(lime.model, newdata=df)
    df
}

config <- read.csv("../config.file.csv")

yhat.config <- c(
    username=as.character(config$USERNAME),
    apikey=as.character(config$APIKEY),
    env="http://cloud.yhathq.com/"
)

yhat.deploy("limeGlm")