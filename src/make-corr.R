rm(list=ls())
library(tidyverse)
N <- 25 #number of groups

## Ingroup
ingroup <- rnorm(N, 7, 1.5)
ingroup <- ingroup[order(ingroup)]

## Outgroup
outgroup.low <- rep(1, N *.8)
outgroup.high  <- runif(N * .2, min = 2, max = 10)
outgroup <- c(outgroup.low, outgroup.high)
rm(outgroup.low, outgroup.high)

## Dominance
dominance <- 10 - ingroup + rnorm(N, 0, 2)

group = 1:N
data <- data.frame(group, ingroup, outgroup, dominance)

## So, that's a single member per group. Now let's make individuals
## in that group vary slightly from each other

groupN <- 8 # N per group

bigdata <- NULL
for(grp in 1:N) {
  temp <- data[grp,]
  ingroup <- rnorm(groupN,temp$ingroup,0.5)
  outgroup <- rnorm(groupN,temp$outgroup,0.5)
  dominance <- rnorm(groupN,temp$dominance,0.5)
  expand <- data.frame(grp, ingroup, outgroup, dominance)
  bigdata <- rbind(bigdata,expand)
}

## Capping and rounding
bigdata$ingroup <- round(bigdata$ingroup, 0)
bigdata$ingroup[bigdata$ingroup < 1] <- 1
bigdata$ingroup[bigdata$ingroup > 10] <- 10

bigdata$outgroup <- round(bigdata$outgroup, 0)
bigdata$outgroup[bigdata$outgroup < 1] <- 1
bigdata$outgroup[bigdata$outgroup > 10] <- 10

bigdata$dominance <- round(bigdata$dominance, 0)
bigdata$dominance[bigdata$dominance < 1] <- 1
bigdata$dominance[bigdata$dominance > 10] <- 10

## SRN
SRN.start <- 1001780
SRN <- SRN.start:((N*groupN)+SRN.start-1)

bigdata <- cbind(SRN,bigdata)

## Quick checks
data <- bigdata

grp.data <- data %>% 
  group_by(grp) %>% 
  summarise(ingroup = mean(ingroup), 
            outgroup = mean(outgroup), 
            dominance = mean(dominance))

hist(grp.data$ingroup)
hist(grp.data$outgroup)
plot(grp.data$ingroup, grp.data$outgroup)
plot(grp.data$ingroup, grp.data$dominance)
