#!/usr/bin/env R

y <- c(6, 17, 4, 14, 5, 18, 6, 19, 27, 6, 16, 27)
pdf("hist_01.pdf")
hist(y, col = "midnightblue")
dev.off()
