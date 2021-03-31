library(tidyverse)
iq.data  <- tibble(SRN = 1001:1285, ID = round(rnorm(n = 285, mean = 113, sd = 8), 0))
write_csv(iq.data, "iqdata.csv")
