source("./train.R")

test.df <- data.frame(Lime.Weight=c(70), Lime.Circumference=c(160), Juice.Volume=c(35), Lime.Age=c(4), Lime.Origin=c("Mexico"))
prediction <- predict(lime.tree.model, test.df)

## Calculate misclassification error for training data


## Calculate misclassification error for testing data

