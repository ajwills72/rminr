## The two Open Sesame experiments used to create these files are:
## facialproto_short.osexp
## Lexcicaldecision.osexp
## I've put them in the docs folder.

## Developing commands for preprocessing worksheet
library(tidyverse)
dat <- read_csv("rawdata/subject-11.csv")
spec(dat)

## Over 100 columns, so the first job is to tidy this up to the smallest set of
## columns that fully represents the data. Don't include the same info in more than
## one column.

## phase - phase
## live_row - trial
## type - trial type
## faceno - face number
## shifttype - vert/horiz
## xshift
## yshift
## response
## response_time

subj <- dat %>% select(phase, live_row, type, faceno, xshift, yshift, response,
                        response_time)

## Better names: short, lower case
colnames(subj) <- c("phase", "trial", "type", "face", "x", "y", "resp", "rt")

## Better trial numbering
subj$trial <- subj$trial + 1

## Summarizing
test <- subj %>% filter(phase == "test")
test %>% group_by(type) %>% summarize(resp = mean(resp), rt = mean(rt))

## Loading in all the participants
rm(list=ls())
fnams <- list.files("rawdata", pattern = "csv", full.names=TRUE)
alldat <- NULL
for(fnam in fnams) {
    onesubj <- read_csv(fnam)
    subj <- substr(fnam, 17, 18)
    onesubj <- cbind(subj, onesubj)
    alldat <- rbind(alldat, onesubj)
}
alldat <- as_tibble(alldat)

## Note this code assumes all subject numbers are two-digit. So, start with
## subject 10, not subject 1.

## Column selection
alldat <- alldat %>% select(subj, phase, live_row, type, faceno, xshift, yshift,
                            response, response_time)

## Better names: short, lower case
colnames(alldat) <- c("subj", "phase", "trial", "type", "face", "x", "y",
                      "resp", "rt")

## Better trial numbering
alldat$trial <- alldat$trial + 1

## Saving out - let's not. Keep complete analysis pipeline.

## Summarizing for analysis
test <- alldat %>% filter(phase == "test")
test.sum <- test %>% group_by(subj, type) %>%
    summarize(resp = mean(resp), rt = mean(rt))

## Overall summary
test.sum %>% group_by(type) %>% summarize(resp = mean(resp), rt = mean(rt))

## Now, try it with this data set

## It's lexical decision. Write R code to preprocess the raw data into a
## dataframe that contains _only_ columns for subject number, phase
## (i.e. practice yes or no), trial, stimulus word, type (word or nonword),
## reaction time, and accuracy (1 or 0).

## Then summarise this data by participant, and from that report mean correct
## reaction time for words and nonwords across the whole sample of people
## (i.e. RTs from only those trials on which they were correct).

## The data is in lexdec

## Loading in all the participants
rm(list=ls())
library(tidyverse)
fnams <- list.files("lexdec", pattern = "csv", full.names=TRUE)
alldat <- NULL
for(fnam in fnams) {
    onesubj <- read_csv(fnam)
    subj <- substr(fnam, 16, 17)
    onesubj <- cbind(subj, onesubj)
    alldat <- rbind(alldat, onesubj)
}
alldat <- as_tibble(alldat)

## Column selection
alldat <- alldat %>% select(subj, practice, live_row, category, target, correct,
                            response_time)

## Better names
colnames(alldat) <- c("subj", "practice", "trial", "type", "word", "acc", "rt")

## Better trial numbering
alldat$trial <- alldat$trial + 1

## Summarizing for analysis
test <- alldat %>% filter(practice == "no") %>% filter(acc == 1) 
test.sum <- test %>% group_by(subj, type) %>%
    summarize(rt = mean(rt))

## Overall summary
test.sum %>% group_by(type) %>% summarize(rt = mean(rt))
