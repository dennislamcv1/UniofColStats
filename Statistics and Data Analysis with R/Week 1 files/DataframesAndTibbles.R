# Data Frames and Tibbles

Month <- c("January","February","March","April","May","June","July","August",
           "September","October","November","December")
Jimmy <- c(290,310,420,280,370,440,480,430,300,260,410,250)
Sue <- c(250,310,390,400,320,480,470,310,410,410,340,210)
John <- c(280,320,420,300,450,320,450,380,390,310,380,350)
Sally <- c(260,390,380,350,390,360,390,480,290,380,320,340)
Gilbert <- c(330,240,360,280,360,520,390,390,350,380,270,230)
sales <- data.frame(Month,Jimmy,Sue,John,Sally,Gilbert)


sales[2] # by default, if only have one index, it refers to column index; stores as data frame
sales["Jimmy"] # same as above, a data frame
sales$Jimmy # outputs as a vector (the above are data frames)

sales[3,] # displays all items of row 3 (March) (data frame)
sales[3] # displays all items of column 3 (data frame)
sales[,3] # displays all items of column 3 but as a vector

sales[1,3] # displays single item (row 1, column 3)
sales[,1:2] # displays the first two columns
sales[1:2,] # displays first two rows
sales[1:2] # by default, if only have one index, it refers to column
sales[c(3,4,5)] # displays columns 3, 4, and 5
sales[c("Sue","John","Sally")] # alternative to display month and gilbert columns

sales[-c(2,4)] # Removes columns 2 and 4
sales[-c("John","Gilbert")] # doesn't work


library(tidyverse)
sales <- column_to_rownames(sales, var="Month")

# Convert data frame to tibble
# install.packages("tibble")
library(tibble)
sales.tibble <- as_tibble(sales)


# Editing the data in a data frame or tibble

