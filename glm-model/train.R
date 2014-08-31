library(caret)

source("../data/io.R")


train.ind = sample(1:dim(lime.df)[1],size=dim(lime.df)[1]/2,replace=F)
train.lime.df = lime.df[train.ind,]
test.lime.df = lime.df[-train.ind,]

lime.model <- train(
    Juice.Volume ~ Lime.Weight + Lime.Circumference + Lime.Weight*Lime.Circumference,
    method = "glm",
    data=train.lime.df
)

