year_stud=matrix(c(2810,890,540,3542,1363,471,4301,1663,652,5362,2071,895,6593,2752,1113),byrow=TRUE,ncol=3)
rownames(year_stud)=c("1996","1997","1998","1999","2000")
colnames(year_stud)=c("Humanity","Science","Commerce")
year_stud
total_stud=margin.table(year_stud,1)#to prepare marginals
total_stud
barplot(total_stud,col="white",main="barchart")
barplot(t(year_stud),col=c("white","gray80","black"),main="sub-divided",beside=FALSE)
legend(locator(1),legend=c("hu","se","cum"),fill=c("white","gray80","black"),horiz=TRUE)
barplot(t(year_stud),col=c("white","gray80","black"),main="multiple bar chart",beside=TRUE)
legend(locator(1),legend=c("hu","se","cum"),fill=c("white","gray80","black"),cex=0.5)

