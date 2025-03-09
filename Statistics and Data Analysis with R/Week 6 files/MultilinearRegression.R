# Multilinear Regression ####

library(readxl)
life.expectancy <- read_excel("MOOC Statistics/Part 3/Module 6/Life Expectancy.xlsx")
life.expectancy

# Create first order multilinear regression model:
model1 <- lm(y ~ x1+x2+x3+x4+x5, data=life.expectancy)
summary(model1)
# Or, equivalently:
model1 <- lm(y ~ ., data=life.expectancy)
summary(model1)

# Create multilinear regression model with all interactions:
model2 <- lm(y ~ .^2, data=life.expectancy)
summary(model2)

# Same as:
model2 <- lm(y ~ x1+x2+x3+x4+x5+x1:x2+x1:x3+x1:x4+x1:x5+x2:x3+x2:x4+x2:x5+x3:x4+x3:x5+x4:x5, data=life.expectancy)
summary(model2)

# Create partial model:
model3 <- lm(y ~ x1+x2+x5+x1:x2+x1:x5+x2:x5, data=life.expectancy)
summary(model3)
