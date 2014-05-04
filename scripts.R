

d <- c(7.55, 7.33, 7.11, 11.33)

svg("figs/error.1.svg")
par(mar=c(0.7, 4.8, 1, 1))
barplot(d, cex.axis=1.8, cex.lab=1.8, col="steelblue", ylab="Classificatoin Error")
text(x=0.7, y=2, "True Density", cex=1.6, srt=90)
text(x=1.84, y=2, "MLE Density", cex=1.6, srt=90)
text(x=3.14, y=2.3, "Parzen Window", cex=1.6, srt=90)
text(x=4.3, y=2.3, "1-NN classification", cex=1.6, srt=90)

dev.off()

