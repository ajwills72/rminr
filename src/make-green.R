library(tidyverse)
nsubj <- 100
urban <- round(rnorm(nsubj, 5, 2),0)
green <- round(rnorm(nsubj, 5.1, 2),0)
score <- c(urban, green)
SRNrated <- sample(1:(nsubj*2), nsubj*2, replace=FALSE)
SRNrater <- sample(1:(nsubj*2), nsubj*2, replace=FALSE)
SRNrated <- SRNrated + 104000
SRNrater <- SRNrater + 104000
Cond <- rep(c("Urban", "Green"), each = nsubj)
data <- data.frame(SRNrated, SRNrater, Cond, score)
write_csv(data, "green.csv")

