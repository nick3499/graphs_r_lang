#!/usr/bin/env R

X <- c(1, 2, 3, 4, 5, 6, 7, 8)
Y <- c(2, 6, 7, 10, 17, 19, 23, 29)
plot(X, Y, pch = 16) 
plot(X, Y, type = "o", col = "red", xlab = "MY X LABEL", ylab = "MY Y LABEL") 
title(main = "PLOT 3", font.main = 2, col.main = "blue")
