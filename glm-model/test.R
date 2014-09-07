source("./train.R")

test.df <- data.frame(Lime.Weight=c(70), Lime.Circumference=c(160))
prediction <- predict(lime.model, test.df)

## Calculate misclassification error for training data
    

## Calculate misclassification error for testing data
