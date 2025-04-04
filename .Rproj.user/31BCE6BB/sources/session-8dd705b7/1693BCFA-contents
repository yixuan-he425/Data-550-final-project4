# code/figure.R

# Read the heart dataset from the data folder
heart_data <- read.csv("../data/heart.csv", header = TRUE, stringsAsFactors = FALSE)

# Convert HeartDisease column to a factor with labels if needed
heart_data$HeartDisease <- factor(heart_data$HeartDisease,
                                  levels = c(0, 1),
                                  labels = c("No Heart Disease", "Heart Disease"))

# Load the ggplot2 package
library(ggplot2)

# Create a faceted histogram for the 'Age' variable by HeartDisease status
p <- ggplot(heart_data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "steelblue", color = "black") +
  facet_wrap(~ HeartDisease) +
  labs(
    title = "Distribution of Age by Heart Disease Status",
    x = "Age (years)",
    y = "Frequency"
  ) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))

# Print the plot
print(p)
