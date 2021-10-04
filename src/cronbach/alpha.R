install.packages("psych")
library(psych)
data <- read.csv("dataset.csv")
alpha(data)
