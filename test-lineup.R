library(tidyverse)
lup <- read_csv("lineup.csv")

testify <- table(lup$Cond, lup$Q2)
testify
library(BayesFactor)
contingencyTableBF(testify, sampleType = "indepMulti", fixedMargin = "rows" )
chisq.test(testify)



chisq.test(lup$Cond, lup$Q2)

## Notes to MV:

## It seemed like there was quite a lot of analysis that could be done here,
## perhaps a bit more than would be ideal for a relatively short activity. So I cut
## things down a bit:

## (1) I couldn't see the point of the frequency plot of pictures chosen - the perp is not
## amongst the set of photos, so what question does this answer? (Other than possibly
## some sort of image salience thing, which doesn't seem that crucial in the context
## of a Stage 1 exercise). They also have a lot of practice of frequency plots in other,
## earlier exercises. So I dropped this bit.

## (2) Some DVs are binary, others continuous. This requires different tests, which is good
## at this last-quarter of Stage 1 timing, but I also didn't want to overload them.

Q3*, Q4, Q5**, Q7, Q9 - continuous
Q2*, Q6, Q8** - binary


## Q2, Q6, Q8 are binary DVs. Probably not a good idea to teach students to analyse
## binary DVs with a t-test. A more appropriate test here would be a contingency 
## chi-square, which they would have been taught, but