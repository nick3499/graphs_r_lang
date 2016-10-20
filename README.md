# r_scripts
## graph_01.R

```
#!/usr/bin/env R

x <- seq(-5, 5, 0.3)
y <- 2*x^2 + 5*x-8
plot(x, y, pch = 16, col = "red", xlim = c(-6, 6), ylim = c(-20, 70), main = expression(2*x^2 + 5*x - 8), xlab = "X" , ylab = "Y")
lines(x, y)
abline(h = 0)
abline(v = 0)
```

## graph_02.R
```
#!/usr/bin/env R

plot(c(3, 6, 9, 12), c(1, 4.3, 8.7, 12), pch = 16, col = "red", ylim = c(-2, 15), xlab = "3,6,9,12", ylab = "1,4.3,8.7,12")
lines(c(3, 6, 9, 12), c(1, 4.3, 8.7, 12), col = "purple4")
```

## graph_03.R
```
#!/usr/bin/env R

X <- c(1,5.5,10,14.5,19,23.5,28,32.5)
Y <- c(2,6.5,11,15.5,20,24.5,29,33.5)
plot(X, Y, pch = 16) 
plot(X, Y, type = "o", col = "red", xlab = "X", ylab = "Y") 
title(main = "Upward Trend", font.main = 2, col.main = "blue")
```
