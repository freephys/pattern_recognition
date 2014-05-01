

d<- read.table("learning_curve.txt")

miny <- min(d[,3:5])
maxy <- max(d[,3:5])

svg("learning_curve.1.svg")
par(mar=c(4.9, 4.9, 0.5, 0.5))


plot(d$V2, d$V3, col="steelblue", pch=19, xlab="Trainig size ratio", ylab="Classification error rate", cex.axis=1.8, cex.lab=1.8, ylim=c(miny, maxy), cex=2)
lines(d$V2, d$V3, col="steelblue", pch=19, lwd=4)> points(d$V2, d$V4, col="green", pch=17, cex=2, lwd=4)

points(d$V2, d$V4, col="darkgreen", pch=17, cex=2, lwd=4)
lines(d$V2, d$V4, col="darkgreen", pch=17, cex=2, lwd=4)

points(d$V2, d$V5, col="darkred", pch=15, cex=2, lwd=4)
lines(d$V2, d$V5, col="darkred", pch=15, cex=2, lwd=4)

dev.off()
