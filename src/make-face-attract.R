## Generate plausible-ish data for facial attractiveness experiment.
rm(list=ls())
nfaces = 100
nsubj = 250
attmean = 5.4
attsd = 1.1
subsd = 1.5

att <- rnorm(nfaces, attmean, attsd)

data <- NULL
for(face in 1:nfaces) {
  sdata <- rnorm(nsubj, att[face], subsd)
  data <- c(data,sdata)
}

data <- data.frame(cbind(rep(1:nsubj, times = nfaces), 0, rep(1:nfaces, each = nsubj), round(data, 0)))
colnames(data) <- c("StudentID", "TrialNum", "Stimulus", "Rating")

library(tidyverse)
data <- data %>% arrange(StudentID)

trials <- NULL
for(subj in 1:nsubj) {
  tsample <- sample(1:nfaces)
  trials <- c(trials, tsample)
}

data$TrialNum <- trials

data <- data %>% arrange(StudentID, TrialNum)

write_csv(data, "src/faceattract.csv")

