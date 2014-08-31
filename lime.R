library(yhatr)
library(caret)

lime.df <- read.csv("data/data.csv")

lime.fit <- train(
    Juice.Volume ~ Lime.Weight + Lime.Circumference + Lime.Weight*Lime.Circumference,
    method = "glm",
    data=lime.df
)

model.require <- function() {

}

model.transform <- function(df) {
    df
}

model.predict <- function(df) {
    df
}