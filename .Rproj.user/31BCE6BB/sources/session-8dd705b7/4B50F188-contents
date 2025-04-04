# code/table.R

# Read the heart dataset from the data folder
heart_data <- read.csv("../data/heart.csv", header = TRUE, stringsAsFactors = FALSE)

# Create a formatted table using the first 6 rows of the dataset
formatted_table <- head(heart_data)

# Print the table (for display in the report)
print(formatted_table)

# Also calculate a summary table (age distribution by HeartDisease)
library(dplyr)
age_distribution <- heart_data %>%
  group_by(HeartDisease) %>%
  summarise(
    Count = n(),
    Mean_Age = round(mean(Age, na.rm = TRUE), 2),
    Median_Age = median(Age, na.rm = TRUE),
    SD_Age = round(sd(Age, na.rm = TRUE), 2)
  )

print(age_distribution)
