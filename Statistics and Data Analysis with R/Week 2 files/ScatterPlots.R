# Basic Plotting

# Basic scatter plot

x <- seq(1,10,1)
y <- c(1,2.5,3,5,7.5,8,8.5,9.5,11,14)


# Adding a grid


# Adding a title and axis labels
plot(x,y,main="Utility Costs",
     xlab="Average number of daily toilet flushes",ylab="Monthly utility bill/person ($)")

# Tailoring the marker style and size


# What about filled markers?


# What about filled markers with different line color?


# Adding lines to scatter plot


# Changing the x- and y-scales


# Multiple series on the same plot
library(readxl)
dairy.products <- read_excel("MOOC Statistics/Part 3/Module 2/Dairy Products.xlsx")


plot(yr,icecream,type="o",xlab="Year",ylab="Consumption (lb/person)",
     main="Dairy Product Consumption",col="red",ylim=c(2,20))


# Adding a legend
legend(x=1980,y=13,legend=c("Ice Cream","Yogurt"),col=c("red","blue"),lty=1,pch=1) 
legend("bottomright",inset=0.05,legend=c("Ice Cream","Yogurt"),col=c("red","blue"),lty=1)

# Other options
JohnsonJohnson
scatter.smooth(JohnsonJohnson)
