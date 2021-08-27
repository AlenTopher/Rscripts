Author: Christopher Terry Date: Purpose: Calculating correletion coefficent value

#Load library
library("ggpubr")

# Load sample date
my_data <- mtcars

# Correlation value and plotting
ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

# Generating a correlation vaue without plotting

res <- cor.test(my_data$wt, my_data$mpg, method = "pearson")

