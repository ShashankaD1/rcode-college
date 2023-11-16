data("AirPassengers")
AP=AirPassengers
str(AP)
head(AP)
ts(AP,frequency=12,start=c(1949,1))
plot(AP)
decomp=decompose(AP)
decomp$figure
plot(decomp$figure,type='b',xlab="month",ylab="seasonality Index")
plot(decomp)
decomp$trend
trend_adjust=AP-decomp$trend
plot(trend_adjust)
season_adjust=AP-decomp$seasonal
plot(season_adjust)
