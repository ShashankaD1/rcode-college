midx = seq(12.5,112.5,25)
frequency = c(5,8,13,11,3)
y = rep(midx,frequency)
brk = seq(0,125,25)
hist(y,breaks=brk,xlab="sales",main="histogram",col="gray70")

