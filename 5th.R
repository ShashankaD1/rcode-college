f=c(0,85,77,124,78,36,0)
lc=cumsum(f)
uc=1:7;for(i in 7:1){uc[i]=sum(f[7:i])}
uc
lbx=seq(499.5,1099.5,100)
lbx
ubx=seq(599.5,1199.5,100)
ubx
plot(ubx,lc,type="l",xlim=c(499.5,1199.5),xlab = "CI",ylab="cumfreq",main = "ogive",lwd=2)
lines(lbx,uc,lty=2,lwd=2)
