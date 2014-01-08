
train <- read.csv("Data/train.csv", header=TRUE)
y.train <- as.factor(train[,1])
x.train <- train[,-1]

