# graphs_r_lang
## Plotting R (Language) Graphs

### graph_01.R

```
#!/usr/bin/env R

x <- seq(-5, 5, 0.3)
y <- 2*x^2 + 5*x-8
plot(x, y, pch = 16, col = "red", xlim = c(-6, 6), ylim = c(-20, 70), main = expression(2*x^2 + 5*x - 8), xlab = "X" , ylab = "Y")
lines(x, y)
abline(h = 0)
abline(v = 0)
```

### graph_02.R
```
#!/usr/bin/env R

plot(c(3, 6, 9, 12), c(1, 4.3, 8.7, 12), pch = 16, col = "red", ylim = c(-2, 15), xlab = "3,6,9,12", ylab = "1,4.3,8.7,12")
lines(c(3, 6, 9, 12), c(1, 4.3, 8.7, 12), col = "purple4")
```
