# Exercise 8
# Number 1
# Once you are in the same directory as your file of interest, define the file by replacing "file.csv" with the file you want
file <- "file.csv" 
# Replace "n" with the number of lines you want to retrieve
num_lines <- n  
# Read the file
# May need to adjust parameters if your file is not a .csv file
data <- read.csv(file)
# Subset the data to get the top lines, just like a head function would do in bash
top_lines <- data[1:num_lines, ]
# Print the selected lines so that they show up in the terminal
print(top_lines)

# Number 2
# Read the data from 'iris.csv'
iris_data <- read.csv("iris.csv")
# Print the last 2 rows in the last 2 columns to the R terminal
last_2_rows <- tail(iris_data, 2)
last_2_rows_last_2_columns <- last_2_rows[, (ncol(last_2_rows)-1):ncol(last_2_rows)]
print(last_2_rows_last_2_columns)
# Get the number of observations for each species included in the data set
observations_per_species <- table(iris_data$Species)
print(observations_per_species)
# Get rows with Sepal.Width > 3.5
sepal_width_gt_3.5 <- iris_data[iris_data$Sepal.Width > 3.5, ]
print(sepal_width_gt_3.5)
# Write the data for the species setosa to comma-delimited file named 'setosa.csv'
setosa_data <- iris_data[iris_data$Species == "setosa", ]
write.csv(setosa_data, file = "setosa.csv", row.names = FALSE)
# Calculate mean, minimum, and maximum of Petal.Length for observations from virginica
virginica_data <- iris_data[iris_data$Species == "virginica", ]
mean_petal_length <- mean(virginica_data$Petal.Length)
min_petal_length <- min(virginica_data$Petal.Length)
max_petal_length <- max(virginica_data$Petal.Length)
print(paste("Mean Petal.Length for virginica:", mean_petal_length))
print(paste("Minimum Petal.Length for virginica:", min_petal_length))
print(paste("Maximum Petal.Length for virginica:", max_petal_length))