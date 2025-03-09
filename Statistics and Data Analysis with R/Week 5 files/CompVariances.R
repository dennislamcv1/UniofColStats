# Comparison of Variances ####

# Data set #1 (Exam data)

library(readxl)
exam.data <- read_excel("MOOC Statistics/Part 3/Module 5/Exam data.xlsx")
exam.data


# Test assumption of normality
library(nortest)
qqnorm(UCB)
qqline(UCB)
ad.test(UCB)

qqnorm(CSM)
qqline(CSM)
ad.test(CSM)


# Data set #2 (Natural gas data)

gas.data <- read_excel("MOOC Statistics/Part 3/Module 5/Natural gas.xlsx")
gas.data

# Test assumption of normality

qqnorm(source1)
qqline(source1)
ad.test(source1)

qqnorm(source2)
qqline(source2)
ad.test(source2)


