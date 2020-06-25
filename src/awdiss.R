## The final script
rm(list=ls())
## Put all packages at start
library(osfr)
library(tidyverse)

## Download data from OSF
proj  <- osf_retrieve_node("r7axw")
files  <- osf_ls_files(proj)
osf_download(files, conflicts = "skip")

## Load data into R
raw <- read_csv("data/DATA.csv")
colnames(raw) <- c("subj", "time", "key", "value")

## De-duplicate and filter to main-study participants
raw <- distinct(raw)
raw  <- raw %>% filter(subj > 161)

## Check for compliance with instructions
inspect  <- raw %>% filter(key == "ER") %>% filter(value == 0)
table(inspect$subj)

exclude  <- c(164, 166, 176, 199, 236, 239)
raw  <- raw %>% filter(!(subj %in% exclude))

raw$value[raw$key == "ER" & raw$value == 0]  <- 3


## Define function for baseline correction
base.correct  <- function(trial) {
    onset  <- cs$time[trial]
    full <- gsr %>% filter(time >= onset - 500 & time <= onset + 8000)
    precs  <- gsr %>% filter(time >= onset - 500 & time < onset)
    correct  <- mean(precs$value)
    full <- full %>% mutate(cval = value - correct)
    full <- full %>% mutate(rtime = time - onset)
    full  <- full %>% add_column(trial = trial, run = cs$value[trial])
    return(full)
}

## Get list of participants
subjs <- enframe(unique(raw$subj))

## Run preocessing across all trials and participants
sum.data  <- NULL
for(this.subj in subjs$value) {
    dat  <- raw %>% filter(subj == this.subj)
    gsr <- dat %>% filter(key == "GS")
    cs <- dat %>% filter(key == "CO")
    onep  <- NULL
    for(trial in 1:46) {
        onep  <- bind_rows(onep, base.correct(trial))
    }
    gsr.sum  <- onep %>%
        filter(rtime >= 0) %>%
        group_by(trial, run) %>%
        summarise(cval = mean(cval))
    expect <- dat %>%
        filter(key == "ER") %>%
        add_column(trial = 1:46) %>%
        select(subj, trial, value)
    comb.data  <- full_join(gsr.sum, expect, by = "trial")
    sum.data  <- bind_rows(sum.data, comb.data)
}

## Log transform
sum.data  <- sum.data %>% mutate(lcval = log(cval+1))

## Remove zero run length trials
sum.data  <- sum.data %>% filter(run != 0)

## Recode run as level
level.code  <- c(`-3` = 1, `-2` = 2, `-1` = 3, `1` = 1, `2` = 2, `3` = 3)
sum.data <- sum.data %>% mutate(level = recode(run, !!!level.code))

## Summarise to Levels
lvl.sum  <- sum.data %>% group_by(subj, level) %>% summarise(lcval = mean(lcval), expect = mean(value))
lvl.sum %>% group_by(level) %>% summarise(lcval = mean(lcval), expect = mean(expect))



## Some neat graphs
source("themeapa.R") 
base  <- lvl.sum %>% ggplot()
lns  <- geom_line(aes(x=level, y=expect, group=subj, colour=subj), alpha = .25)
vio  <- geom_violin(aes(x=level, group=level, y=expect), colour="grey", alpha = .5)
mdata  <- lvl.sum %>% group_by(level) %>% summarise(expect = mean(expect))
mline  <- geom_line(aes(x=level, y=expect), data = mdata, colour="black")
mdot  <- geom_point(aes(x=level, y=expect), data = mdata, colour="black")
eplot  <- base + lns + vio + mline + mdot + xlab("Level") +
    ylab("Expectancy rating") + ylim(1,5) + theme_APA +
    theme(legend.position="none")
eplot

base  <- lvl.sum %>% ggplot()
base
lns  <- geom_line(aes(x=level, y=lcval, group=subj, colour=subj), alpha = .25)
base + lns
vio  <- geom_violin(aes(x=level, group=level, y=lcval), colour="grey", alpha = .5)
base + lns + vio
mdata  <- lvl.sum %>% group_by(level) %>% summarise(lcval = mean(lcval))
mline  <- geom_line(aes(x=level, y=lcval), data = mdata, colour="black")
mdot  <- geom_point(aes(x=level, y=lcval), data = mdata, colour="black")
base + lns + mline + mdot
gsplot  <- base + lns + vio + mline + mdot + xlab("Level") +
    ylab("Mean log GSR (uS)") + theme_APA +
    theme(legend.position="none")
gsplot
eplot







## Linear regression
library(BayesFactor)

lvl.sum$subj  <- factor(lvl.sum$subj)
e.level  <- lmBF(expect ~ level + subj, data = lvl.sum, whichRandom = "subj")
e.subj  <- lmBF(expect ~ subj, data = lvl.sum, whichRandom = "subj")
e.level/e.subj

g.level  <- lmBF(lcval ~ level + subj, data = lvl.sum, whichRandom = "subj")
g.subj  <- lmBF(lcval ~ subj, data = lvl.sum, whichRandom = "subj")
g.level/g.subj
