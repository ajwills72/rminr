### Frequency/chi-saure data set on friendship
library(tidyverse)

## Shared Act - young > old ; Iceland < Others; no gender
## Helping - old > young; Iceland < Others; no gender
## Trust - old > young; Iceland > Others; no gender
## Feelings - old > young: Iceland < Others; no gender

## Ages - 7, 9, 12, 15
## Gender - male female
## Culture - China, Russia, Iceland
## Let's go for 160 per culture, so 20 per cell

## See chi-scratch.ods for ggeneration of the following frequency table
freq <- read_csv("src/chi-scratch.csv")
colnames(freq) <- c("age", "gender", "culture", "Shared Act", "Helping", "Trust", "Feelings")

## Add some random noise
N <- nrow(freq)
freq$`Shared Act` <- freq$`Shared Act` + sample(0:2, N, replace = TRUE)
freq$Helping <- freq$Helping + sample(0:2, N, replace = TRUE)
freq$Trust <- freq$Trust + sample(0:2, N, replace = TRUE)
freq$Feelings <- freq$Feelings + sample(0:2, N, replace = TRUE)

## Convert to long format
freq.long <- gather(freq, key = "code", value = "count", "Shared Act", "Helping", "Trust", "Feelings")

## Convert to cases
age <- rep(freq.long$age, freq.long$count)
gender <- rep(freq.long$gender, freq.long$count)
culture <- rep(freq.long$culture, freq.long$count)
coded <- rep(freq.long$code, freq.long$count)

N <- length(coded)
subj <- sample(1:N, N, replace = FALSE)

## Make into plausible-ish data frame
data <- data.frame(subj, age, gender, culture, coded)
data <- arrange(data, subj)

## Write out
write_csv(data, "chi.csv")

### Student commands
rm(list=ls())
library(tidyverse)
data <- read_csv("chi.csv")
freq <- table(data$coded)
freq
# data.frame(freq) %>% ggplot(aes(x = Var1, y = Freq)) + geom_col()

freq / sum(freq)
cont <- table(data$culture, data$coded)
cont
mosaicplot(cont)

library(BayesFactor)
contingencyTableBF(cont, sampleType = "jointMulti", fixedMargin = "row")
chisq.test(cont)
