#!/usr/bin/env R

x <- seq(-5, 5, 0.3)
y <- 2*x^2 + 5*x-8
plot(x, y, pch = 16, col = "red", xlim = c(-6, 6), ylim = c(-20, 70), main = expression(2*x^2 + 5*x - 8), xlab = "X" , ylab = "Y")
lines(x, y)
abline(h = 0)
abline(v = 0)
