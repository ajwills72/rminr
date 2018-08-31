rm(list=ls())
library(tidyverse)
nav <- read_csv("navigate.csv")

navplot <- nav %>% ggplot(aes(x = Test, y = Percent, fill = Who)) + geom_col(position = "dodge")
navplot
navplot <- navplot + scale_fill_manual(values=c("peachpuff3","royalblue4"))
navplot
colours()

######
navplot <- nav %>% ggplot(aes(x = Who, y = Score, fill = Test)) + geom_col(position = "dodge")
navplot

navplot <- navplot + xlab("") + ylab("Percent")
navplot


######

####
nav$test <-factor(nav$test, levels = c("SBSOD", "Landmark", "Direction", "Order"))
navplot <- nav %>% ggplot(aes(x = who, y = score, fill = test)) + geom_col(position = "dodge")
navplot <- navplot + xlab("") + ylab("Percent")
navplot
###
