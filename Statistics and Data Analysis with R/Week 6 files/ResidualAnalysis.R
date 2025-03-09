# Residual Analysis ####

library(readxl)
coffee.data <- read_excel("MOOC Statistics/Part 3/Module 6/Coffee Sales.xlsx")
coffee.data

x <- coffee.data$MaxTemp
y <- coffee.data$CoffeeConsumption
first.order <- lm(y ~ x)
summary(first.order)

plot(x, y, main="Coffee Consumption vs. Max Temperature", xlab="Max Temperature (F)", 
     ylab="Coffee Consumption (lb)", col="blue")


# Determine residuals



# OR:
plot(first.order, which=1) # Residuals vs Fitted Plot
# shows us that the residuals goes from negative to positive to negative
plot(first.order, which=2) # Q-Q Plot
# shows us that the residuals are fairly normally distributed (can use ad.test above)
plot(first.order, which=3) # Scale-Location Plot
# shows us that the variance stays about the same (homoscedasticity)
plot(first.order, which=5) # Residuals vs. Leverage Plot
# shows us if there are any outliers

# Third Order Model

third.order <- lm(y ~ x+I(x^2)+I(x^3))
summary(third.order)
yp3 <- predict(third.order, data.frame(x=xp))
plot(x, y, main="Coffee Consumption vs. Max Temperature", xlab="Max Temperature (F)", 
     ylab="Coffee Consumption (lb)", col="blue")
lines(xp,yp, col="red")
lines(xp,yp3, col="darkgreen")
legend(40,30, legend=c("Exp. Data", "First Order Fit","Third Order Fit"), fill=c("blue","red","darkgreen"))
plot(third.order)

