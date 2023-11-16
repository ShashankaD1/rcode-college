pie.tax=c(6526,7108,2568,560,763)
names(pie.tax)=c("Excise","customs","corporation","Income","other")
pie(pie.tax,main = "piechart",col=c("white","black","gray80","gray50","gray70"))
