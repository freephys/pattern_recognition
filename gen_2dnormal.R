
library(MASS)


sigma1=matrix(c(0.07, 0.02, 0.02, 0.04), nrow=2)
d1 <- mvrnorm(n=500, c(0.5, 1.3), sigma1)


sigma2=matrix(c(0.1, -0.03, -0.03, 0.05), nrow=2)
d2 <- mvrnorm(n=500, c(-1.1, 1.6), sigma2)

sigma3=matrix(c(0.05, -0.001, -0.001, 0.1), nrow=2)
d3 <- mvrnorm(n=500, c(-2, 1.0), sigma3)


d <- read.table("data/2d_nonlinear.txt")


svg("figs/2dnorm.svg", width=10, height=5)
par(mar=c(4.7, 4.7, 0.6, 0.6), mfrow=c(1,2))
plot(d1, pch=19, col=rgb(0.2, 0.8, 0.3, 0.5), cex=1, cex.lab=1.4, cex.axis=1.2, xlab=expression(x[1]), ylab=expression(x[2]), xlim=c(min(c(d1[,1], d2[,1], d3[,1])), max(c(d1[,1], d2[,1], d3[,1]))), ylim=c(min(c(d1[,2], d2[,2], d3[,2])), max(c(d1[,2], d2[,2], d3[,2]))))
points(d2, pch=17, col=rgb(0.8, 0.2, 0.3, 0.5), cex=1)

points(d3, pch=15, col=rgb(0.2, 0.2, 0.8, 0.5), cex=1)

plot (d[301:600,], pch=17, col=rgb(0.7, 0.2, 0.3, 0.5), cex=1, cex.lab=1.4, cex.axis=1.2, xlab=expression(x[1]), ylab=expression(x[2]))
points (d[1:300,], pch=19, col=rgb(0.2, 0.7, 0.3, 0.5))


dev.off()
