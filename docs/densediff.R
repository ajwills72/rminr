rm(list = ls()) # clear the environment
library(tidyverse)
words <- read_csv("wordnaming2.csv")
wordctrl <- words %>% filter(medit == "control")
wordctrlCI <- wordctrl %>% filter(congru != "neutral")
wordctrlCIsum <- wordctrlCI %>% group_by(subj, congru) %>% summarise(rt = mean(rt))
ctrl <- wordctrlCIsum %>% pivot_wider(names_from = congru, values_from = rt)
ctrldiff <- ctrl %>% mutate(diff = incong - cong)