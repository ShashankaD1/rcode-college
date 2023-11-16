c1=1995:2000 #vector of years
c2=c(15,25,27,28,26,26.6) #vector of sales
sales.year=data.frame(year=c1,sales=c2)
sales.year#print the table
attach(sales.year)
barplot(sales,xlab = "Year",ylab = "Sales",main="bar",col="white")
