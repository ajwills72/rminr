library(tidyverse)
nsubj <- 60
nrats <- 10 
urban <- round(rnorm(nsubj * nrats, 5, 2),0)
green <- round(rnorm(nsubj * nrats, 5.15, 2),0)
score <- c(urban, green)
score[score < 1] <- 1
score[score > 10] <- 10
SRNrated <- sample(1:(nsubj*2), nsubj*2, replace=FALSE)
SRNrater <- sample(1:(nsubj*2), nsubj*2, replace=FALSE)
SRNrated <- SRNrated + 104000
SRNrater <- SRNrater + 104000

SRNrated <- rep(SRNrated, each = nrats)
SRNrater <- rep(SRNrater, times = nrats)

Cond <- rep(c("Urban", "Green"), each = nsubj * nrats)
data <- data.frame(SRNrated, SRNrater, Cond, score)
write_csv(data, "green.csv")

