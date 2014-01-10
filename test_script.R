x.train <- read.csv("Data/train.csv", header=TRUE)
y.train <- as.factor(x.train[,1])
x.train <- x.train[,-1]

S <- cov(x.train)

ic.0 <- which(y.train == 0)
ic.1 <- which(y.train == 1)
ic.2 <- which(y.train == 2)
ic.3 <- which(y.train == 3)
ic.4 <- which(y.train == 4)
ic.5 <- which(y.train == 5)
ic.6 <- which(y.train == 6)
ic.7 <- which(y.train == 7)
ic.8 <- which(y.train == 8)
ic.9 <- which(y.train == 9)

ic.list <- list(
 ic.0, ic.1, ic.2, ic.3, ic.4, ic.5, ic.6, ic.7, ic.8, ic.9
)

chk.2dlist <- lapply(ic.list, 
 function(x) list(
  sample(1:length(x), 25, replace=T), 
  sample(1:length(x), 25, replace=T), 
  sample(1:length(x), 25, replace=T), 
  sample(1:length(x), 25, replace=T)
 )
)

cov.mats <- lapply(chk.2dlist, function (x.l) lapply(x.l, cov))

mean.2dlist <- lapply(chk.2dlist, function(x) lapply(x, function (x.df) apply(x.df, 2, mean)))
