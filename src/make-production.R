## Making production effect simulated data
library(tidyverse)

## McLeod (2011) - Exp.1, proportion of hits - Other vs. silent - but done b/subj
## Sample size
samsize <- 30
## Cohen's d = 0.5 (A medium effect)
dummya <- rnorm(samsize,.65,.18)
dummya[dummya > 1] <- 1
dummya[dummya < 0] <- 0
dummyb <- rnorm(samsize,.56,.18)
dummyb[dummyb > 1] <- 1
dummyb[dummyb < 0] <- 0
subj <- 1:(samsize*2)
cond <- rep(c("other", "silent"), each = samsize)
phit <- round(c(dummya, dummyb), 2)
efm <- data.frame(subj = subj, cond = cond, phit = phit)
write_csv(efm, "production.csv")  

## McLeod (2011) - now as w/subj
samsize <- 60
dummya <- rnorm(samsize,.65,.18)
dummya[dummya > 1] <- 1
dummya[dummya < 0] <- 0
dummyb <- dummya - rnorm(samsize,.09,.09)
dummyb[dummyb > 1] <- 1
dummyb[dummyb < 0] <- 0
subj <- rep(1:samsize, each = 2)
cond <- rep(c("other", "silent"), times = samsize)
phit <- round(c(dummya, dummyb), 2)
efmw <- data.frame(subj = subj, cond = cond, phit = phit)
write_csv(efmw, "production2.csv")  


########## OLD CODE ##########

## rm(list=ls())
library(tidyverse)

## Custom theme
eftheme <- function() {
  xlim(c(40, 170))
}


med1 <- efm %>%  ggplot(aes(val, colour=factor(group))) +
  ggtitle("Medium (d = 0.5)") + 
  geom_density(show.legend=FALSE, aes(y=..scaled..)) + 
  theme_void()  + 
  eftheme()

