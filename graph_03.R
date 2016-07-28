#!/usr/bin/env R

X <- c(1, 5.5, 10, 14.5, 19, 23.5, 28, 32.5)
Y <- c(2, 6.5, 11, 15.5, 20, 24.5, 29, 33.5)
plot(X, Y, pch = 16)
plot(X, Y, type = "o", col = "red", xlab = "X", ylab = "Y")
title(main = "Upward Trend", font.main = 2, col.main = "blue")
