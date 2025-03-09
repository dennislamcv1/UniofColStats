# ANOVA ####

# ONE-WAY ANOVA

library(readxl)
burrito.data <- read_excel("MOOC Statistics/Part 3/Module 6/Burritos.xlsx")
burrito.data

# Create box plot:
IllegalPetes <- burrito.data[burrito.data$Restaurant=="IllegalPetes",2]
Qdoba1 <- burrito.data[burrito.data$Restaurant=="Qdoba1",2]
Qdoba2 <- burrito.data[burrito.data$Restaurant=="Qdoba2",2]
Chipotle <- burrito.data[burrito.data$Restaurant=="Chipotle",2]
label = c("Chipotle","Illegal Petes","Qdoba #1","Qdoba #2")
boxplot(burrito.data$Mass ~ burrito.data$Restaurant, xlab="Restaurant",
        names=label, ylab="Mass (g)", col="slateblue")

# Perform one-way ANOVA:


# TWO-WAY ANOVA

library(readxl)
SAT.scores <- read_excel("MOOC Statistics/Part 3/Module 6/SAT Math Scores.xlsx")
SAT.scores

