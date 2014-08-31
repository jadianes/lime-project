source("./train")
library(yhatr)

model.require <- function() {
    library(caret)
}

model.transform <- function(df) {
    df
}

model.predict <- function(df) {
    df
}

yhat.config <- c(
    username="{ USERNAME }",
    apikey="{ APIKEY }",
    env="http://cloud.yhathq.com/"
)

yhat.deploy("limeClusters")