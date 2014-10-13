source("./io.R")

##  Prepare train and test data
train.ind <- sample(1:dim(lime.df)[1],size=dim(lime.df)[1]/2,replace=F)
train.lime.df <- lime.df[train.ind,]
test.lime.df <- lime.df[-train.ind,]

##  Fit tree model
lime.tree.model <- tree(
    Cut.Type~., 
    lime.df[,2:7]  # TODO: eventually move to train.lime.df
)

