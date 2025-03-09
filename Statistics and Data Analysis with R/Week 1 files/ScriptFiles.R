# Using Script Files

# The following is code that we used in "Basic Calculations in R" (a few minor changes)
# to show you how we can use it in a script file

x <- 5
y <- 10
x+y
z <- x+y
z
print(z) # alternative to above line
y*z

# Order of operations
2+3*4
# vs
(2+3)*4

5+6^2/3
# vs
(5+6)^2/3

rm(x) # remove a single variable

x <- c(10,20,30,40,50,60,70)
y <- c(1,2.5,3.8,3.4,4.8,5.1,6.2)
x
y

plot(x,y,type="b",lty=2,col="red",xlab="Time",ylab="Stock Price")
