

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

legend(x=0.2, y=9.4, col=c("steelblue", "darkgreen", "darkred"), lwd=4, pch=c(19, 17, 15), pt.cex=1.5, legend=c("MLE", "Parzen Window", "1-NN"), box.col="white", box.lwd=0, cex=1.7)

dev.off()
