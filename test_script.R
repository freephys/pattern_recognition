x.train <- read.csv("Data/train.csv", header=TRUE)
y.train <- as.factor(x.train[,1])
x.train <- x.train[,-1]

S <- cov(x.train)

