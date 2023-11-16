# Load qcc library
library(qcc)

# Given data
p.data <- c(20, 10, 15, 18, 19, 20, 17, 16, 14, 27, 16, 17)
n <- 100

# Create p-chart
qcc_p_chart <- qcc(p.data, type = "p", size = n)

# Given data for c-chart
c.data <- c(18, 12, 14, 13, 19, 22, 25, 24, 29, 27, 24, 28)

# Create c-chart
qcc_c_chart <- qcc(c.data, type = "c")

# Create np-chart
qcc_np_chart <- qcc(p.data, type = "np", size = n)

# Simulated data for p-chart with a data frame
defects <- as.integer(rnorm(50, 3, 11))
sample_size <- rep(100, 50)
df <- data.frame(defects, sample_size)

# Create p-chart for the simulated data
qcc_p_chart_simulated <- qcc(df$defects, df$sample_size, type = "p", data.name = "defects")

# Summary of the p-chart for the simulated data
summary(qcc_p_chart_simulated)

# Create np-chart for the simulated data
qcc_np_chart_simulated <- qcc(df$defects, df$sample_size, type = "np", data.name = "defects")

# Summary of the np-chart for the simulated data
summary(qcc_np_chart_simulated)

# Create u-chart for the simulated data
qcc_u_chart_simulated <- qcc(df$defects, df$sample_size, type = "u", data.name = "defects")

# Summary of the u-chart for the simulated data
summary(qcc_u_chart_simulated)

