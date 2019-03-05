## IRR data set on animal behaviour
## Motion categories from my head
## Location categories from Phil Gee
rm(list=ls())
library(tidyverse)
ntime <- 20


behav <- c("pacing", "sleeping", "standing", "lying", "running")
behav.r1 <- behav[round(runif(ntime, 1, length(behav)), 0)]
behav.r2 <- behav.r1
pag <- .6

for(i in 1:length(behav.r1)) {
  if(runif(1,0,1) > pag) {
    behav.r2[i] <- behav.r2[round(runif(1, 1, length(behav.r2)), 0)]
  }
}

loc <- c("zone_1", "zone_2", "zone_3", "zone_4")
loc.r1 <- loc[round(runif(ntime, 1, length(loc)), 0)]
loc.r2 <- loc.r1
pag <- .8

for(i in 1:length(loc.r1)) {
  if(runif(1,0,1) > pag) {
    loc.r2[i] <- loc.r2[round(runif(1, 1, length(loc.r2)), 0)]
  }
}

time <- rep(1:10, times = 2)
period <- rep(c("180", "10"), each = 10)

rats <- data.frame(time, period, behav.r1, behav.r2, loc.r1, loc.r2)

write_csv(rats,"animals.csv")

