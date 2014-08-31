source("./train")
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

yhat.config <- c(
    username="{ USERNAME }",
    apikey="{ APIKEY }",
    env="http://cloud.yhathq.com/"
)

yhat.deploy("limeModel")