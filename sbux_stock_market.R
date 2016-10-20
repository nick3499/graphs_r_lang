#!/usr/bin/env R

data_url <- 'sbuxPrices.csv'  # assign .csv data to data_url

# read data_url into sbux_df
sbux_df <- read.csv(data_url, header=T, stringsAsFactors=F)

# check data frame
print(str(sbux_df))  # structure
print(head(sbux_df))  # first lines
print(tail(sbux_df))  # last lines
class('Date')  # character

# drop=F maintains vertical column
# assign Adj.Close to closing_prices
closing_prices <- sbux_df[, 'Adj.Close', drop=F]
print(closing_prices)

# assign Date indices
date_1 <- which(sbux_df$Date=="3/1/1994")
date_2 <- which(sbux_df$Date=="3/1/1995")
dated_prices <- sbux_df$Adj.Close[date_1:date_2]
print(dated_prices)

# assign Adj.Close to sbux_prices_df
sbux_prices_df <- sbux_df[, "Adj.Close", drop=FALSE]

# assign Date object dates as rownames (indices)
rownames(sbux_prices_df) <- sbux_df$Date
head(sbux_prices_df)

# assign date indices
price_1 <- sbux_prices_df["3/1/1994", 1]
price_2 <- sbux_prices_df["3/1/1995", 1]
print(price_1)
print(price_2)

# plot Adj.Close column
plot(sbux_df$Adj.Close, type = "l", col="blue", lwd=2, 
     ylab="Adjusted Close", 
     main="Monthly Closing Price of Starbucks (SBUX)")
     legend(x='topleft', legend='Starbucks (SBUX)', 
     lty=1, lwd=2, col='blue')

# assign Adj.Close column to sbux_prices_df
sbux_prices_df <- sbux_df[, "Adj.Close", drop=FALSE]

# assign total number of rows to n
n <- nrow(sbux_prices_df)

# assign simple return to sbux_ret
sbux_ret <- (sbux_prices_df[2:n,1] - sbux_prices_df[1:(n-1), 1])/sbux_prices_df[1:(n-1), 1]
class(sbux_ret) # numeric

# dates as column names
names(sbux_ret) <- sbux_df$Date[2:n]
head(sbux_ret)
sbux_ccret <- log(sbux_prices_df[2:n, 1])-log(sbux_prices_df[1:(n-1), 1])
names(sbux_ccret) <- sbux_df[2:n, 1]
head(sbux_ccret)

# Compare the simple and cc returns
head(cbind(sbux_ret, sbux_ccret))

# plot monthly returns
plot(sbux_ret, type="l", col="blue", lwd=2, ylab="Return", 
     main="Monthly Returns on Starbucks (SBUX)")
abline(h=0)  # horizontal zero line
legend(x="bottomright", legend=c("Simple", "CC"), lty=1, lwd=2, 
       col=c("blue", "red"))
# line: continuously compounded returns
lines(sbux_ccret, type="l", col="red", lwd=2)

sbux_gret <- sbux_ret+1  # gross returns
sbux_fv <- cumprod(sbux_gret)  # future values
# plot evolution of the $1 invested in SBUX as a function of time
plot(sbux_fv, type="l", col="blue", lwd=2, ylab="Dollars (USD)", 
     main="Future Value (FV): $1 Invested in Starbucks (SBUX)")

# sbux dataframe
index1 <- which(sbux_df$Date=="12/1/2004")
index2 <- which(sbux_df$Date=="12/1/2005")
sbux <- sbux_df$Adj.Close[index1:index2]
names(sbux) <- sbux_df[index1:index2, 'Date']

(sbux[2]-sbux[1])/sbux[1]  # monthly return
log(sbux[2])-log(sbux[1])  # continuously compunded monthly return
r <- (sbux[2]-sbux[1])/sbux[1]
     (1+r)^12-1  # simple monthly return

# simple annual return
rets <- (sbux[2:length(sbux)]-sbux[1:(length(sbux)-1)])/sbux[1:(length(sbux)-1)]
gross_rets <- 1+rets
cumprod(gross_rets)-1

# annual continuously compounded return
log(sbux[length(sbux)])-log(sbux[1])
