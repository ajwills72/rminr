## Make plausible-ish questionnaire data
## Figures based on Ho et al. (2015, JPSP)

rm(list=ls())
library(tidyverse)

onesub <- function(SRN, brexit) {
  if(brexit) {
    cond <- "leave"
    inc <- 0.1 
  } else {
    cond <- "remain"
    inc <- 0
  }

  dom <- round(rnorm(16,2.5 + inc, 1.3), 0)
  dom[dom < 1] <- 1
  dom[dom > 7] <- 7
  auth <- round(rnorm(30, 3.8 + inc, 1.2), 0)
  auth[auth < 1] <- 1
  auth[auth > 7] <- 7
  rating <- c(dom, auth)

  type <- c(rep("dom", 16), rep("auth", 30))
  qu <- c(1:16, 1:30)
  data <- data.frame(SRN, cond, type, qu, rating)
  return(data)
}

data <- onesub(1003728, FALSE)
write_csv(data, "brexit.csv")

bigdta <- NULL
## Remainders
for(subj in 1:140) {
  data <- onesub(1003728 + subj, FALSE)
  bigdta <- rbind(bigdta, data)
}
## Leavers
for(subj in 141:200) {
  data <- onesub(1003728 + subj, TRUE)
  bigdta <- rbind(bigdta, data)
}

write_csv(bigdta, "brexit-all.csv")

