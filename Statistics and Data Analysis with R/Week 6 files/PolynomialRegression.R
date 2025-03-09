# Polynomial Regression ####

library(readxl)
nitric.data <- read_excel("MOOC Statistics/Part 3/Module 6/Nitric Acid.xlsx")
nitric.data

x <- nitric.data$Composition
y <- nitric.data$HeatCapacity

plot(x, y, main="Heat Capacity (kJ/kg/K) vs. Nitric Acid Composition (wt%)", xlab="Nitric Acid wt%", 
     ylab="Heat Capacity (kJ/kg/K)", col="darkgreen")

# SECOND ORDER POLYNOMIAL FIT

# Building a second order polynomial regression model:
# second.order <- lm(y ~ x^2) # will not work
# second.order <- lm(y ~ x+x^2) # will not work
second.order <- lm(y ~ x+I(x^2))
summary(second.order)
#OR:
second.order <- lm(y ~ poly(x, 2, raw=TRUE))
summary(second.order)

# Significance of and confidence interval on the slope and intercept:
summary(second.order)
confint(second.order)

# How to extract values for coefficients:
summary(second.order)$coefficients
c <- summary(second.order)$coefficients["x","Estimate"] # coefficient of x in the model
summary(second.order)$coefficients["I(x^2)","t value"] # test statistic for the x^2 coefficient
summary(second.order)$coefficients["(Intercept)","Pr(>|t|)"] # P-value of the intercept

# Display the fitted values:
second.order$fitted.values

# Adding the model fit to the plot:
xp <- seq(0, 100, length.out=100)
yp <- predict(second.order,data.frame(x=xp))
lines(xp,yp,col="magenta")
# Add a legend
legend(60, 4, legend=c("Exp. Data", "Second Order Fit"), fill = c("darkgreen","magenta"))

# Analyze residuals:
plot(second.order)


# THIRD ORDER FIT

# Building a third order polynomial regression model:

third.order <- lm(y ~ x+I(x^2)+I(x^3))
# OR:
# third.order <- lm(y ~ poly(x, 3, raw=TRUE))
summary(third.order)

# Plotting the data and adding the model fit:
plot(x, y, main="Heat Capacity (kJ/kg/K) vs. Nitric Acid Composition (wt%)", xlab="Nitric Acid wt%", 
     ylab="Heat Capacity (kJ/kg/K)", col="darkgreen")
xp <- seq(0, 100, length.out=100)
yp2 <- predict(second.order,data.frame(x=xp))
lines(xp,yp2,col="magenta")
yp3 <- predict(third.order,data.frame(x=xp))
lines(xp,yp3,col="blue")
# Add a legend
legend(60, 4, legend=c("Exp. Data", "Second Order Fit", "Third Order Fit"), fill = c("darkgreen","magenta","blue"))

# Analyze residuals:
plot(third.order)

# Estimate for heat capacity at 62 wt% nitric acid:
predict(third.order, data.frame(x=62))

# 95% confidence interval on mean response at x = 50%:
predict(third.order, newdata=data.frame(x=50), interval='confidence')

# 95% prediction interval on a future observation at x = 35%:
predict(third.order, newdata=data.frame(x=35), interval='predict')
