# Comparison of Means, Variance Known ####

library(readxl)
hockey.sticks <- read_excel("MOOC Statistics/Part 3/Module 5/Hockey_sticks.xlsx")
hockey.sticks


# Testing the assumptions of normality:
qqnorm(A) # quantile-quantile plot, which is a type of probability plot
qqline(A)
# install.packages("nortest")
library(nortest)
ad.test(A)
qqnorm(B)
qqline(B)
ad.test(B)

# VARIANCE EQUAL CASE

# Approach #1: z.test (BSDA)


# Approach #2: Create user-defined function



# VARIANCE UNEQUAL CASE

# Approach #1: z.test (BSDA)


# Approach #2: User-defined function from above


