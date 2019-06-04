
## Generate plausible-ish data from a word naming task
## Andy J. Wills.
## License: GPL 3

## subj - subject number
## sex - male, female
## medit - meditation training
## block - 1,2
## trial - trial number
## word - word presented
## pic - picture presented
## congru - congruency (cong, noncong)
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

    ## List of items
    word  <- c(items, items)
    pic  <- c(items, ritems)

    ## Dummy trial type
    congru  <- c("cong", "incong")

    ## Random trial order
    trial  <- sample(1:(trials*2), trials*2, replace=FALSE)
    
    ## Skewed normal RT for non-congruent trials
    noncong  <- round(rsnorm(trials, RT.av+RT.ben, RT.sd, xi = 6),0)
    
    ## Skewed normal RT for congruent trials
    cong  <- round(rsnorm(trials, RT.av, RT.sd * sd.ben, xi = 6),0)

    ## Build first part of dataframe
    data  <- data.frame(medit, sex, subj, trial, pic, word, congru)

    ## Add trial type
    data$congru[data$pic == data$word]  <- "cong"
    data$congru[data$pic != data$word]  <- "incong"

    ## Add accuracy, RT
    data$acc  <- as.numeric(runif(trials*2, 0, 1) > err.av)
    data$rt  <- c(cong, noncong)

    ## Put trials in order
    data  <- data %>% arrange(trial)

    ## Add block
    data$block  <- rep(1:2, each=trials)
    data  <- data %>% select(subj, sex, medit, block, trial, word, pic, congru, acc, rt)

    ## Add some noise to block factor
    data$rt[data$block == 2]  <- data$rt[data$block == 2] +
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


write_csv(data, "src/anova/wordnaming.csv")



