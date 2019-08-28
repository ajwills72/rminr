
## Generate plausible-ish data from a word naming task
## Andy J. Wills.
## License: GPL 3

## subj - subject number
## sex - male, female
## medit - training type (meditate, relax, nothing)
## block - 1,2
## trial - trial number
## word - word presented
## pic - picture presented
## congru - congruency (cong, noncong, neutral)
## acc - correct response (1,0)
## rt - response time (ms)

#### Note: This script seems to screwup tidverse, end your R session before
### running anything else.
rm(list=ls())
library(fGarch)
library(tidyverse)

## Function to create one subject

make.one  <- function(medit, sex, subj, err.av, RT.av, RT.sd, RT.ben, sd.ben, RT.blk) {
    trials  <- 30
    ## List of items
    items <- c("horse", "star", "carrot", "anchor", "ball", "cake", "fork",
               "car", "hammer", "tree", "church", "stapler", "dog", "moon",
               "apple", "boat", "spoon", "bus", "drill", "cat", "cup", "plate",
               "shoe", "scissors", "pizza", "burger", "hat", "orange",
               "cherry", "lemon")
    
    ## Re-order items for incongruent trials
    ritems  <- items[order(sample(1:length(items), length(items), replace=FALSE))]

    ## Neutral trials
    nitems <- items[order(sample(1:length(items), length(items), replace=FALSE))]
    nitemsblank <- rep(NA, times = length(items))
    
    ## List of items
    word  <- c(items, items, nitems)
    pic  <- c(items, ritems, nitemsblank)

    ## Dummy trial type
    congru  <- c("cong", "incong", "neutral")

    ## Random trial order
    trial  <- sample(1:(trials*3), trials*3, replace=FALSE)
    
    ## Skewed normal RT for non-congruent trials
    noncong  <- round(rsnorm(trials, RT.av+RT.ben, RT.sd, xi = 6),0)
    
    ## Skewed normal RT for congruent trials
    cong  <- round(rsnorm(trials, RT.av, RT.sd * sd.ben, xi = 6),0)

    ## Skewed normal RT for neutral trials
    neutral  <- round(rsnorm(trials, RT.av+RT.ben/2,RT.sd * sd.ben, xi = 6),0)
    
    ## Build first part of dataframe
    data  <- data.frame(medit, sex, subj, trial, pic, word, congru)

    ## Add trial type
    data$congru[data$pic == data$word]  <- "cong"
    data$congru[data$pic != data$word]  <- "incong"
    data$congru[is.na(data$pic)]  <- "neutral"
    
    ## Add accuracy, RT
    data$acc  <- as.numeric(runif(trials*3, 0, 1) > err.av)
    data$rt  <- c(cong, noncong, neutral)

    ## Put trials in order
    data  <- data %>% arrange(trial)

    ## Add block
    data$block  <- rep(1:3, each=trials)
    data  <- data %>% select(subj, sex, medit, block, trial, word, pic, congru, acc, rt)

    ## Add some noise to block factor
    data$rt[data$block == 2]  <- data$rt[data$block == 2] +
        round(rsnorm(trials/2, RT.blk, RT.sd, xi = 6),0)
    data$rt[data$block == 3]  <- data$rt[data$block == 3] +
      round(rsnorm(trials/2, RT.blk, RT.sd, xi = 6),0)
    
    ## Return dataframe
    data
}

## Number of participants per group
N  <- 70

## Distribution of parameters across participants
err.av  <- rnorm(N, .05, .025)  # Mean participant errors
RT.av  <- rnorm(N, 500, 25)     # Mean participant RT in millisecond
RT.blk  <- rnorm(N, 0, 25)      # Mean participant RT difference for block factor
RT.sd <- rnorm(N, 50, 5)        # SD of participant RT
sd.ben  <- rnorm(N, .75, .1)    # SD multiplier for congurent trials

data  <- NULL
## Meditate, male
RT.ben  <- rnorm(N, 5, 100)      # Mean cost of incongruence
for(subj in 1:N) {
    onesub  <- make.one("meditate", "male", subj, err.av[subj], RT.av[subj],
                        RT.sd[subj], RT.ben[subj], sd.ben[subj], RT.blk[subj])
    data  <- rbind(data, onesub)
}

## Meditate, female
RT.ben  <- rnorm(N, 5, 100)      # Mean cost of incongruence
for(subj in 1:N) {
    onesub  <- make.one("meditate", "female", subj+N, err.av[subj],
                        RT.av[subj], RT.sd[subj], RT.ben[subj], sd.ben[subj], RT.blk[subj])
    data  <- rbind(data, onesub)
}


## Control,male 
RT.ben  <- rnorm(N, 50, 100)      # Mean cost of incongruence
for(subj in 1:N) {
    onesub  <- make.one("control", "male", subj+N*2, err.av[subj], RT.av[subj],
                        RT.sd[subj], RT.ben[subj], sd.ben[subj], RT.blk[subj])
    data  <- rbind(data, onesub)
}

## Control, female 
RT.ben  <- rnorm(N, 50, 100)      # Mean cost of incongruence
for(subj in 1:N) {
    onesub  <- make.one("control", "female", subj+N*3, err.av[subj], RT.av[subj],
                        RT.sd[subj], RT.ben[subj], sd.ben[subj], RT.blk[subj])
    data  <- rbind(data, onesub)
}


## Relax, male
RT.ben  <- rnorm(N, 45, 100)      # Mean cost of incongruence
for(subj in 1:N) {
  onesub  <- make.one("relax", "male", subj+N*4, err.av[subj], RT.av[subj],
                      RT.sd[subj], RT.ben[subj], sd.ben[subj], RT.blk[subj])
  data  <- rbind(data, onesub)
}

## Relax, female
RT.ben  <- rnorm(N, 55, 100)      # Mean cost of incongruence
for(subj in 1:N) {
  onesub  <- make.one("relax", "female", subj+N*5, err.av[subj],
                      RT.av[subj], RT.sd[subj], RT.ben[subj], sd.ben[subj], RT.blk[subj])
  data  <- rbind(data, onesub)
}


write_csv(data, "src/anova/wordnaming2.csv")



