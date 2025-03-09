# Model Selection Strategies ####

# POLYNOMIAL MODEL

x <- c(1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10)
y <- c(5,4,7,9,11.5,14,17,13.5,30.5,29,31,34.5,36,35.5,38,39,44,40.5,50.5,47)
plot(x,y,col="darkred")

# Backward Elimination
# Start with full model:


step(model1, direction="backward") # Does the same thing!  Uses something called
# the AIC method, where P-value for retaining a term is approximately 0.1573.

final.model <- lm(y ~ I(x^3)+I(x^4)+I(x^5))

# Adding the model fit to the plot:
xp <- seq(0, 10, length.out=100)
yp <- predict(final.model,data.frame(x=xp))
lines(xp,yp,col="magenta")
# Add a legend
legend(1, 45, legend=c("Exp. Data", "Final Model"), fill = c("darkgreen","magenta"))
plot(final.model)


# MULTILINEAR MODEL

library(readxl)
life.expectancy <- read_excel("MOOC Statistics/Part 3/Module 6/Life Expectancy.xlsx")
life.expectancy

# install.packages("leaps")
library(leaps)
# use best subsets on first order model with no interactions:
leaps <- regsubsets(y ~ x1+x2+x3+x4+x5, data=life.expectancy, nbest=2)

# From "R in Action" by Robert I. Kabacoff:
subsTable <- function(obj, scale) {
  x <- summary(leaps)
  m <- cbind(round(x[[scale]],3), x$which[,-1])
  colnames(m)[1] <- scale
  m[order(m[,1]), ]
}

subsTable(leaps, scale="adjr2")

# use best subsets on first order model with all binary interactions:
leaps <- regsubsets(y ~ (.)^2, data=life.expectancy, nbest=2)
subsTable(leaps, scale="adjr2")

# Back to polynomial model:
x <- c(1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10)
y <- c(5,4,7,9,11.5,14,17,13.5,30.5,29,31,34.5,36,35.5,38,39,44,40.5,50.5,47)
polydata <- data.frame(x,y)
leaps <- regsubsets(y ~ x+I(x^2)+I(x^3)+I(x^4)+I(x^5), data=polydata, nbest=2)
subsTable(leaps, scale="adjr2")
# Same conclusion as with backward elimination