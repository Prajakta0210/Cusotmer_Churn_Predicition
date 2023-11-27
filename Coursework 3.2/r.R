# Load necessary libraries
library(plotly)

# Assuming telcom is your data frame, replace it with your actual data frame
# Calculate the correlation matrix
correlation <- cor(telcom)

# Get column names for tick labels
matrix_cols <- colnames(correlation)

# Convert correlation matrix to array
corr_array <- as.matrix(correlation)

# Plotting
trace <- plot_ly(z = corr_array,
                 x = matrix_cols,
                 y = matrix_cols,
                 type = "heatmap",
                 colorscale = "Viridis",
                 colorbar = list(title = "Pearson Correlation coefficients", titleside = "right")
)

layout <- list(title = "Correlation matrix",
               autosize = FALSE,
               height = 720,
               width = 800,
               margin = list(r = 0, l = 210, t = 25, b = 210),
               yaxis = list(tickfont = list(size = 9)),
               xaxis = list(tickfont = list(size = 9))
)

# Create a plot
fig <- plot_ly(trace, layout = layout)

# Display the plot
fig