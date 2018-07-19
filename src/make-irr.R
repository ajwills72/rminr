### Frequency/chi-saure data set on friendship




## IRR data set on friendship
## Categories from Gummerum & Keller (2008)
library(tidyverse)
content <- c("Shared Act", "Helping", "Trust", "Feelings")

nsubj <- 5
subj1 <- 56
pag <- .6

rater1 <- content[round(runif(nsubj, 1, length(content)), 0)]
rater2 <- rater1

for(i in 1:length(rater1)) {
  if(runif(1,0,1) > pag) {
    rater2[i] <- content[round(runif(1, 1, length(content)), 0)]
  }
}

subj <- subj1:(subj1+nsubj-1)

rats <- data.frame(subj, rater1, rater2)

write_csv(rats,"irr.csv")

