library(caret)

source("../data/io.R")

lime.model <- train(
    Juice.Volume ~ Lime.Weight + Lime.Circumference + Lime.Weight*Lime.Circumference,
    method = "glm",
    data=lime.df
)

