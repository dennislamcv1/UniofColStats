# Hypothesis Tests on the Mean, Variance Unknown ####
# aka one-sample t-test

library(readxl)
data <- read_excel("MOOC Statistics/Part 3/Module 4/Air Tanker Drops.xlsx")
x <- data$TimeBtwnDrops
x

# H0: mu = 420
# H1: mu < 420

# Approach 1: Use formulas


# Approach 2: t.test (stats)


# Approach 3: tsum.test (BSDA) - Useful when all you have are sample statistics
