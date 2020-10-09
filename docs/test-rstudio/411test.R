# Exploring data
library(tidyverse)
cpsdata <- read_csv("http://www.willslab.org.uk/cps2.csv")
cpsdata %>% summarise(mean(income))
cpsdata %>% summarise(mean(hours, na.rm = TRUE))
cpsdata %>% ggplot(aes(income)) + geom_histogram(binwidth=20000)
cpsdata %>% ggplot(aes(income)) + geom_histogram(binwidth=20000) + theme_light()
cpsdata %>% ggplot(aes(income)) + geom_histogram(fill = 'yellow', binwidth=20000) + theme_dark()
cpsdata %>% ggplot(aes(income)) + geom_histogram(binwidth=20000) + 
  xlab('insert a x-axis label here') + ylab('insert a y-axis label here')

# Group differences
cpsdata %>% summarise(median(income))
cpsdata %>% group_by(sex) %>% summarise(median(income))
52558 * 100 / 61746
cpsdata %>% group_by(sex) %>% summarise(sd(income))
cpsdata %>% ggplot(aes(income)) + geom_density(aes(y=..scaled..)) 
cpsdata %>% ggplot(aes(income, colour=factor(sex))) + geom_density(aes(y=..scaled..)) 
cpsdata %>% group_by(sex) %>% summarise(max(income))
1908742 / 52558
cpslow <- cpsdata %>% filter(income < 150000)
library(effsize)
cohen.d(cpslow$income ~ cpslow$sex)

# Evidence
t.test(cpsdata$income ~ cpsdata$sex)
library(BayesFactor)
ttestBF(formula = income ~ sex, data = data.frame(cpsdata))
