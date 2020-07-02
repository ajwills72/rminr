## Making effect size exampls with realistic sample sizes
## rm(list=ls())
library(tidyverse)
source("multiplot.R")

## Custom theme
eftheme <- function() {
  xlim(c(40, 170))
}

## Sample size
samsize <- 100

## Cohen's d =1 (A large effect)
dummya <- rnorm(samsize,100,15)
dummyb <- rnorm(samsize,115,15)
group <- rep(c("Group A", "Group B"), each = samsize)
val <- c(dummya, dummyb)
efl<- as_tibble(cbind(group, val))
efl$val <- as.numeric(efl$val)
large1 <- efl %>%  ggplot(aes(val, colour=factor(group))) +
  ggtitle("Large (d = 1)") + 
  geom_density(show.legend=FALSE, aes(y=..scaled..)) + 
  theme_void()  + 
  eftheme()

## Cohen's d =1 (A large effect)
dummya <- rnorm(samsize,100,15)
dummyb <- rnorm(samsize,115,15)
group <- rep(c("Group A", "Group B"), each = samsize)
val <- c(dummya, dummyb)
efl<- as_tibble(cbind(group, val))
efl$val <- as.numeric(efl$val)
large2 <- efl %>%  ggplot(aes(val, colour=factor(group))) +
  ggtitle("Large (d = 1)") + 
  geom_density(show.legend=FALSE, aes(y=..scaled..)) + 
  theme_void()  + 
  eftheme()

## Cohen's d =1 (A large effect)
dummya <- rnorm(samsize,100,15)
dummyb <- rnorm(samsize,115,15)
group <- rep(c("Group A", "Group B"), each = samsize)
val <- c(dummya, dummyb)
efl<- as_tibble(cbind(group, val))
efl$val <- as.numeric(efl$val)
large3 <- efl %>%  ggplot(aes(val, colour=factor(group))) +
  ggtitle("Large (d = 1)") + 
  geom_density(show.legend=FALSE, aes(y=..scaled..)) + 
  theme_void()  + 
  eftheme()

## Cohen's d = 0.5 (A medium effect)
dummya <- rnorm(samsize,100,15)
dummyb <- rnorm(samsize,107.5,15)
group <- rep(c("Group A", "Group B"), each = samsize)
val <- c(dummya, dummyb)
efm <- as_tibble(cbind(group, val))
efm$val <- as.numeric(efm$val)
  
med1 <- efm %>%  ggplot(aes(val, colour=factor(group))) +
  ggtitle("Medium (d = 0.5)") + 
  geom_density(show.legend=FALSE, aes(y=..scaled..)) + 
  theme_void()  + 
  eftheme()

## Cohen's d = 0.5 (A medium effect)
dummya <- rnorm(samsize,100,15)
dummyb <- rnorm(samsize,107.5,15)
group <- rep(c("Group A", "Group B"), each = samsize)
val <- c(dummya, dummyb)
efm <- as_tibble(cbind(group, val))
efm$val <- as.numeric(efm$val)

med2 <- efm %>%  ggplot(aes(val, colour=factor(group))) +
  ggtitle("Medium (d = 0.5)") + 
  geom_density(show.legend=FALSE, aes(y=..scaled..)) + 
  theme_void()  + 
  eftheme()

## Cohen's d = 0.5 (A medium effect)
dummya <- rnorm(samsize,100,15)
dummyb <- rnorm(samsize,107.5,15)
group <- rep(c("Group A", "Group B"), each = samsize)
val <- c(dummya, dummyb)
efm <- as_tibble(cbind(group, val))
efm$val <- as.numeric(efm$val)

med3 <- efm %>%  ggplot(aes(val, colour=factor(group))) +
  ggtitle("Medium (d = 0.5)") + 
  geom_density(show.legend=FALSE, aes(y=..scaled..)) + 
  theme_void()  + 
  eftheme()

## Cohen's d = 0.2 (A small effect)
dummya <- rnorm(samsize,100,15)
dummyb <- rnorm(samsize,103,15)
group <- rep(c("Group A", "Group B"), each = samsize)
val <- c(dummya, dummyb)
efs <- as_tibble(cbind(group, val))
efs$val <- as.numeric(efs$val)
  
small1 <- efs %>%  ggplot(aes(val, colour=factor(group))) +
  ggtitle("Small (d = 0.2)") + 
  geom_density(show.legend=FALSE, aes(y=..scaled..)) + 
  theme_void()  + 
  eftheme()

## Cohen's d = 0.2 (A small effect)
dummya <- rnorm(samsize,100,15)
dummyb <- rnorm(samsize,103,15)
group <- rep(c("Group A", "Group B"), each = samsize)
val <- c(dummya, dummyb)
efs <- as_tibble(cbind(group, val))
efs$val <- as.numeric(efs$val)

small2 <- efs %>%  ggplot(aes(val, colour=factor(group))) +
  ggtitle("Small (d = 0.2)") + 
  geom_density(show.legend=FALSE, aes(y=..scaled..)) + 
  theme_void()  + 
  eftheme()

## Cohen's d = 0.2 (A small effect)
dummya <- rnorm(samsize,100,15)
dummyb <- rnorm(samsize,103,15)
group <- rep(c("Group A", "Group B"), each = samsize)
val <- c(dummya, dummyb)
efs <- as_tibble(cbind(group, val))
efs$val <- as.numeric(efs$val)

small3 <- efs %>%  ggplot(aes(val, colour=factor(group))) +
  ggtitle("Small (d = 0.2)") + 
  geom_density(show.legend=FALSE, aes(y=..scaled..)) + 
  theme_void()  + 
  eftheme()


multiplot(small1, small2, small3, med1, med2, med3, large1, large2, large3, cols = 3)
