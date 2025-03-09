# Prediction Interval on Future Observation ####

# Approach 1: Use formulas - variance known case shown here

x <- c(154,129,84,105,189,97,114,92,177,134)


# Approach 2: lm (stats) - variance unknown case shown here

library(readxl)
data <- read_excel("MOOC Statistics/Part 3/Module 4/Air Tanker Drops.xlsx")
data
x <- data$TimeBtwnDrops
x

