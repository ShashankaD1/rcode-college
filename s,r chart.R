install.packages("qcc")
library(qcc)
data("pistonrings")

# Aggregate the data to get the mean diameter for each sample
agg_data <- aggregate(diameter ~ sample, data = pistonrings, mean)

# Attach the aggregated data to use it in the qcc function
attach(agg_data)

# Create a control chart using the qcc function
# Assuming you want an X-bar control chart with individual measurements for each sample
qcc_chart_xbar <- qcc(diameter, type = "xbar")

# Print the X-bar control chart
print(qcc_chart_xbar)

# Create a control chart for the standard deviation
qcc_chart_sd <- qcc(diameter, type = "S")

# Print the standard deviation control chart
print(qcc_chart_sd)

# Create a control chart for the range
qcc_chart_range <- qcc(diameter, type = "R")

# Print the range control chart
print(qcc_chart_range)

