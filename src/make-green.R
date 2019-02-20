library(tidyverse)
nsubj <- 60
nrats <- 10 
urban <- round(rnorm(nsubj * nrats, 5, 2),0)
nature <- round(rnorm(nsubj * nrats, 5.15, 2),0)
score <- c(urban, nature)
score[score < 1] <- 1
score[score > 10] <- 10
Solution <- sample(1:(nsubj*2), nsubj*2, replace=FALSE)
Rater <- sample(1:(nsubj*2), nsubj*2, replace=FALSE)
Solution <- Solution + 104000
Rater <- Rater + 104000

Solution <- rep(Solution, each = nrats)
Rater <- rep(Rater, times = nrats)

Cond <- rep(c("Urban", "Nature"), each = nsubj * nrats)
data <- data.frame(Solution, Rater, Cond, score)
write_csv(data, "green.csv")

