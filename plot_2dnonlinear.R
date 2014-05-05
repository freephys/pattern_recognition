
d <- read.table("data/2d_nonlinear.txt")

svg("figs/2d_nonlinear.svg")
par(mar=c(4.8, 4.8, 0.6, 0.6))
plot (d[301:600,], pch=17, col=rgb(0.2, 0.7, 0.3, 0.5), cex=1.5, cex.lab=1.7, cex.axis=1.7, xlab=expression(x[1]), ylab=expression(x[2]))
points (d[1:300,], pch=19, col=rgb(0.7, 0.2, 0.3, 0.5))
dev.off()


