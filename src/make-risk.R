## Make plausible-ish risk questionnaire data
## Figures based on Blais & Weber (2006, JDM)
## https://www.sas.upenn.edu/~baron/journal/06005/jdm06005.htm
rm(list=ls())
library(tidyverse)

onesub <- function(SRN, who) {
  ethical  <- round(rnorm(4, 26.7, 6.4)/4,0)
  ethqu <- c(6, 9, 10, 30) # 4
  financial  <- round(rnorm(5, 25.3, 7.3)/5,0)
  finqu <- c(3, 8, 12, 14, 18) # 5
  healqu <- c(5, 17, 20, 23, 26) # 5
  health <- round(rnorm(5, 27.0, 6.6)/5,0)
  socialqu <- c(1, 7, 21, 22, 27, 28) # 6
  social <- round(rnorm(6, 16.4, 6.7)/6,0)
  recqu <- c(2, 11, 13, 19, 24, 25) # 6
  recreation <- round(rnorm(6, 25.8, 6.9)/6,0)
  rating <- c(ethical, financial, health, social, recreation)
  rating[rating > 7] <- 7
  rating[rating < 1] <- 1
  group <- c(rep("ethical", 4), rep("financial", 5), 
             rep("health", 5), rep("social", 6), 
             rep("recreation", 6))
  qu <- c(ethqu, finqu, healqu, socialqu, recqu)
  data <- data.frame(SRN, who, group, qu, rating)
  data <- data %>% arrange(qu)
  return(data)
  }

data <- onesub(1003728, "you")
write_csv(data, "riskrat.csv")

rating.old <- round(data$rating - rnorm(26, 1, 1),0)
rating.old[rating.old > 7] <- 7
rating.old[rating.old < 1] <- 1
data$rating <- rating.old
data$who <- "other"
write_csv(data, "riskrat-other.csv")


bigdta <- NULL
for(subj in 1:200) {
  data <- onesub(1003728 + subj, "you")
  data.old <- data
  data.old$rating <- round(data.old$rating - rnorm(26, 1, 1),0)
  data.old$rating[data.old$rating > 7] <- 7
  data.old$rating[data.old$rating < 1] <- 1
  data.old$who <- "other"
  bigdta <- rbind(bigdta, data, data.old)
}

write_csv(bigdta, "riskrat-all.csv")

##############

## Stuff for students
rm(list=ls())
library(tidyverse)
risk <- read_csv("riskrat.csv")
risk %>% group_by(group) %>% summarise(mean(rating))

other <- read_csv("riskrat-other.csv")
risk <- rbind(risk, other)
risk %>% group_by(who) %>% summarise(mean(rating))

risk.all <- read_csv("riskrat-all.csv")
risk.all <- risk.all %>% filter(who == "you")

me <- risk %>% summarise(mean(rating))

risk.all %>% ggplot(aes(rating)) + 
  geom_density(aes(y=..scaled..), adjust = 2, fill = "lightblue") + 
  xlim(1, 7) +
  geom_vline(xintercept = as.numeric(me), colour = "red")


