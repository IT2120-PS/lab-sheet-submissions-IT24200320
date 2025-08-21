setwd("C:\\Users\\it24200320\\Desktop\\IT24200320")
getwd()

branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")

boxplot(branch_data$Sales_X1,
        main = "Boxplot for Sales",
        ylab = "Sales",
        col = "lightblue",
        horizontal = FALSE)
cat("Five-Number Summary for Advertising:\n")
print(summary(branch_data$Advertising_X2))

cat("IQR for Advertising:\n")
print(IQR(branch_data$Advertising_X2))

find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_val <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR_val
  upper_bound <- Q3 + 1.5 * IQR_val
  x[x < lower_bound | x > upper_bound]
}
outliers_years <- find_outliers(branch_data$Years_X3)
cat("Outliers in Years (Years_X3):\n")
print(outliers_years)

