## Script converts Michaela's SPSS SAV file into an R long file
## It then simplifies the data set to make it suitable for the
## non-hierarchical analyses we cover in Absolute Beginners.

## For simplicity, workshop exercise assumes only one category per child.  Only
## 20% of children have that, so our original idea to replace the != 1 with a
## random category would make the data almost all random.  My next thought was
## to just select the 20% of children whose data we can use, but that leaves us
## with very small samples in some cases. So, instead, I used the frequencies
## to generate a lot more cases.  This destroys the hierachical nature of the
## data, and also still results in very uneven sample sizes aross cultures. But
## that can be handled by then randomly sampling 200-ish of each culture.

## Of course, none of this is sensible analysis strategy, it's just a way of
## creating a pseudo-realistic data set for teaching purposes. This is pretty
## much the same approach as I took with the 'incomes' data set in Part 1. What
## we end up with is a data set with a realistically large size and messiness,
## and which captures some key properties of the real data from which it was
## drawn.

library(tidyverse)                            # Standard package for RMINR
library(haven)                                # Package to read SPSS data

cont  <- read_sav("Contall.sav")              # Read SAV file

cont$age <- as_factor(cont$age)               # Turn age into a factor
cont$sex <- as_factor(cont$sex)               #
cont$culture <- as_factor(cont$culture)       #

cont$length <- zap_labels(cont$length)        # Turn length into number
cont$trust <- zap_labels(cont$trust)          #
cont$activity <- zap_labels(cont$activity)    #
cont$feelings <- zap_labels(cont$feelings)    #
cont$norms <- zap_labels(cont$norms)          #
cont$helping <- zap_labels(cont$helping)      #
cont$idn <- zap_labels(cont$idn)              #

## Convert from SPSS wide format to R long format
lcont  <- cont %>% gather(key = "coded", value = "count", length:helping)

## Remove all the categories that weren't present for each individual
lcont  <- lcont %>% filter(count == 1)

## Give each case a unique but randomly allocated subject number
lcont$subj  <- sample(1:nrow(lcont), nrow(lcont), replace = FALSE)

## Order by culture, and subject number
lcont  <- lcont %>% arrange(culture, subj)

## Take a same-sized sample of each culture.
china  <- lcont %>% filter(culture == "China") 
china  <- china[1:196,]
iceland  <- lcont %>% filter(culture == "Iceland") 
iceland  <- iceland[1:196,]
russia  <- lcont %>% filter(culture == "Russia")
russia  <- russia[1:196,]
egerm  <- lcont %>% filter(culture == "East Germany")
egerm  <- egerm[1:196,]

## Combine into a single data frame
scont  <-  rbind(china, iceland, russia, egerm)

## Pick and rename the columns we need
scont   <- scont %>% select(subj, age, gender = sex, culture, coded)

## Check the frequencies on each variable
table(scont$gender)
table(scont$age)
table(scont$culture)

## Check contingency tables students will be asked to look at
table(scont$culture, scont$coded)
table(scont$gender, scont$coded)

## Save out file
write_csv(scont, "chi.csv")
