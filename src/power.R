## Commands on which to build statistical power worksheet
rm(list=ls())

## Load tidyverse, load data
library(tidyverse)
prod <- read_csv("production.csv")

## Absolute Beginners revision
prod %>% group_by(cond) %>% summarise(mean(phit))
prod %>% ggplot(aes(phit, colour=factor(cond))) + geom_density(aes(y=..scaled..))
library(effsize)
cohen.d(prod$phit ~ prod$cond)
##library(BayesFactor, quietly = TRUE)
##ttestBF(formula = phit ~ cond, data = data.frame(prod))

## Power calculation
library(pwr)

pwr.t.test(d = 1, power = .95, sig.level = .01, type = "two.sample",
           alternative = "greater")

## Cohen's d on a w/subj version
prod2 <- read_csv("production2.csv")
prod2 %>% group_by(cond) %>% summarise(N = n(), mean = mean(phit))
cohen.d(prod2$phit ~ prod2$cond)


pwr.t.test(d = .5, power = .8, sig.level = .05, type = "paired",
           alternative = "greater")

## Power / sample size graph

pwr.n <- function(d, type) {
    result <- pwr.t.test(power = .8, d = d, sig.level = .05, type = type, alternative="two.sided")
    ceiling(result$n)
}

set <- seq(.5, 1, .1)
bs.grph <- NULL
for(d in set) {
    bs.grph <- c(bs.grph, pwr.n(d, "two.sample") * 2)
}
bs.graph <- tibble(d = set, N = bs.grph, type = "Between")

ws.grph <- NULL
for(d in set) {
    ws.grph <- c(ws.grph, pwr.n(d, "paired"))
}
ws.graph <- tibble(d = set, N = ws.grph, type = "Within")

power.graph <- bind_rows(bs.graph, ws.graph)

power.graph %>% ggplot(aes(x = d, y = N, color = factor(type))) + geom_line() + geom_point()

    y(seq(0, 360, 10))
