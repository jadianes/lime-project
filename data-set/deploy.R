source("./io.R")
library(yhatr)

model.require <- function() {

}

model.transform <- function(df) {
    df
}

model.predict <- function(df) {
    lime.df[df$fromRow:df$toRow,]
}

config <- read.csv("../config.file.csv")

yhat.config <- c(
    username=as.character(config$USERNAME),
    apikey=as.character(config$APIKEY),
    env="http://cloud.yhathq.com/"
)

yhat.deploy("limeData")