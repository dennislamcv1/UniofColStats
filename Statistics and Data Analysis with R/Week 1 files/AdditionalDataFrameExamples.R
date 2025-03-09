# Additional Data Frame Examples

#Example 1

x <- c(1,2,3)
y <- c(4,5,6)
z <- c(7,8,9)
A <- matrix(c(x,y,z),nrow=3,ncol=3) # Creates 3x3 matrix
A

A <- as.data.frame(A) # Converts A to a data frame
A
rownames(A) <- c("First","Second","Third")
A
colnames(A) <- c("Larry","Curly","Moe")
A
is.data.frame(A)


# Example 2

assignment.1 <- c(8,9.5,10,9,8.5)
assignment.2 <- c(10,10,9,10,9.5)
assignment.3 <- c(7.5,9.5,10,8,9.5)
assignment.4 <- c(10,8,8,8.5,9)
student.names <- c("Jenny","Chris","Pat","Logan","Mila")
HW.scores <- data.frame(student.names,assignment.1,assignment.2,assignment.3,assignment.4)
HW.scores
# Change column names
colnames(HW.scores) <- c("Student", "HW1", "HW2","HW3","HW4")
HW.scores

# OR, better when the data frame is created:
HW.scores <- data.frame(Student = student.names, 
                        HW1 = assignment.1,
                        HW2 = assignment.2,
                        HW3 = assignment.3,
                        HW4 = assignment.4)
HW.scores


# Change indices to use students, not 1-5

library(tidyverse)
HW.scores <- column_to_rownames(HW.scores, var="Student")
HW.scores


# Adding an assignment
assignment.5 <- c(9.5,8,10,8.5,9.5)
HW.scores["HW5"] <- assignment.5
HW.scores
