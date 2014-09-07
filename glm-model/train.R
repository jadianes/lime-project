source("./io.R")

##  Prepare train and test data
train.ind <- sample(1:dim(lime.df)[1],size=dim(lime.df)[1]/2,replace=F)
train.lime.df <- lime.df[train.ind,]
test.lime.df <- lime.df[-train.ind,]

##  Fit model
lime.model <- lm(
    Juice.Volume ~ Lime.Weight + Lime.Circumference + Cut.Type,
    data=lime.df  # TODO: eventually move to train.lime.df
)

