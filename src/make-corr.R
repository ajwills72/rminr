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
dominance <- 10 - ingroup + rnorm(N, 0, 1)

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

## Save data
write_csv(bigdata,"corr.csv")
rm(list=ls())

## Student commands

## Load
library(tidyverse)
data <- read_csv("corr.csv")

## Summarise by group
gdata <- data %>% 
  group_by(grp) %>%
  summarise(ingroup = mean(ingroup),
            outgroup = mean(outgroup),
            dominance = mean(dominance))

## Density plot

## In group
in.density <- gdata %>% ggplot(aes(ingroup)) + geom_density(aes(y=..scaled..))
in.density + xlim(1, 10)

## Out group
out.density <- gdata %>% ggplot(aes(outgroup)) + geom_density(aes(y=..scaled..))
out.density + xlim(1, 10)

## Scatter plot
in.out.scatter <- gdata %>% ggplot(aes(x = ingroup, y = outgroup)) + geom_point() 
in.out.scatter + xlim(1,10) + ylim(1,10)

## Correlation co-efficient
cor.test(gdata$ingroup, gdata$outgroup)

library(BayesFactor)
correlationBF(gdata$ingroup, gdata$outgroup)

## Exercise 1
dom.density <- gdata %>% ggplot(aes(dominance)) + geom_density(aes(y=..scaled..))
dom.density + xlim(1, 10)
in.dom.scatter <- gdata %>% ggplot(aes(x = ingroup, y = dominance)) + geom_point() 
in.dom.scatter + xlim(1,10) + ylim(1,10)
cor.test(gdata$ingroup, gdata$dominance)
correlationBF(gdata$ingroup, gdata$dominance)

## What correlations look like

coreg <- function(r, scale) {
  samples = 25
  library(MASS)
  data <- mvrnorm(n=samples, mu=c(0, 0), Sigma=matrix(c(1, r, r, 1), nrow=2), empirical=TRUE)
  data <- (data + 2.5) * 2
  data[,2] <- data[,2] / scale
  data <- as.data.frame(data)
  data %>% ggplot(aes(x = V1, y = V2)) + geom_point(shape=1) +
  theme_minimal() + xlab("") + ylab("") + xlim(0, 10) + ylim(0, 10) +
  ggtitle(paste("r = ", r))
}


source("src/multiplot.R")
multiplot(coreg(0, 1), coreg(.6, 1), coreg(.2, 1.2), coreg(.8, 1), coreg(.4, 0.6), coreg(1, 1.8), cols = 3)

multiplot(coreg(0), coreg(-.6), coreg(-.2), coreg(-.8), coreg(-.4), coreg(-1), cols = 3)


multiplot(coreg(1, .5), coreg(1, 1), coreg(1, 4), coreg(1, 8), cols = 2)

