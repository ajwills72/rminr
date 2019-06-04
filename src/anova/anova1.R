## Some demonstrations of Bayesian and NHST ANOVA in R
## Andy J. Wills.
## License: GPL 3

rm(list=ls())
## Stage 1 revision
library(tidyverse)
cpsdata <- read_csv(url("http://www.willslab.org.uk/cps2.csv"))
library(BayesFactor)
## For documentation on BayesFactor, type 'BFmanual()'
cpsdata %>% ggplot(aes(income, colour=factor(sex))) + geom_density(aes(y=..scaled..)) 
ttestBF(formula = income ~ sex, data = data.frame(cpsdata))
t.test(cpsdata$income ~ cpsdata$sex)

## Stage 2: Same thing, different way

### Load data
namdat  <- read_csv("wordnaming.csv")

### Tell R that some of the columns are factors
### Anything that is going to be used as a factor (i.e. an IV) in your later analysis
### has to be set up here. Note that the individual being tested (the subject number)
### is also a factor in your analysis so you have to include that too.

namdat$subj <- factor(namdat$subj)
namdat$sex <- factor(namdat$sex)
namdat$medit <- factor(namdat$medit)
namdat$block <- factor(namdat$block)
namdat$congru <- factor(namdat$congru)

### For now, we'll just look at the incongruent trials
namdati  <- namdat %>% filter(congru == "incong")

### Produce a subject-level summary
subsum  <- namdati %>% group_by(subj, medit) %>% summarise(rt = mean(rt))

## Was there an effect of meditation?
subsum %>% ggplot(aes(rt, colour=medit)) + geom_density(aes(y=..scaled..)) 
ttestBF(formula = rt ~ medit, data = subsum)
t.test(subsum$rt ~ subsum$medit)

## Now, a different way to ask R to do _exactly_ the same things

## Run a Bayesian ANOVA
anovaBF(formula = rt ~ medit, data = subsum)

## Run an NHST ANOVA
library(afex)
## http://singmann.org/anova-in-r-afex-may-be-the-solution-you-are-looking-for/
aov_car(formula = rt ~ medit + Error(subj), data = subsum)

## We're going to use this recipe from now on, because it allows us to do a
## bunch of other things, too.

## New thing #1: Repeated-measures tests
## Are incongruent trials slower than congruent trials?

### Let's just look at the control group
datctrl  <- namdat %>% filter(medit == "control")

### And, again, let's produce a subject-level summary
ctrlsum  <- datctrl %>% group_by(subj, congru) %>% summarise(rt = mean(rt))

### Graph...
ctrlsum %>% ggplot(aes(rt, colour=congru)) + geom_density(aes(y=..scaled..))

### ...but any repeated-measures test is on the difference scores, so for a
### more relevant plot we need to calculate those.

## Difference plot
ctrldiff  <- spread(ctrlsum, congru, rt) %>% mutate(diff = incong - cong)
ctrldiff %>% ggplot(aes(diff)) + geom_density(aes(y=..scaled..))

## Now, let's do the BF test
## This will take some seconds to run.
anovaBF(formula = rt ~ congru + subj, data = ctrlsum, whichRandom = "subj")
#### Line 1 is our BF

### And, for historical interest, the NHST
aov_car(formula = rt ~ Error(subj/congru), data = ctrlsum)

## New thing #2: Interactions
## Does meditation reduce interference (Incong - Cong becomes smaller)?
## Or does it just make you faster at everything?

## Again, produce a subject-level summary
allsum  <- namdat %>% group_by(subj, medit, congru) %>% summarise(rt = mean(rt))

## Graph it. 
allsum %>% ggplot(aes(rt, colour=congru, linetype=medit)) + geom_density(aes(y=..scaled..))

## Again, any within-subjects factor will be analysed as a difference so it
## makes sense to plot that. It also makes it a lot easier to visualise an
## interaction
alldiff  <- spread(allsum, congru, rt) %>% mutate(diff = incong - cong)
alldiff %>% ggplot(aes(diff, colour=medit)) + geom_density(aes(y=..scaled..))

## BF interactions
## This will take at least one minute to run, so it's worth storing the output...
allsum.bf  <- anovaBF(formula = rt ~ medit*congru + subj, data = allsum, whichRandom = "subj")

### ...and then displaying it
allsum.bf

## Interpreting the output.
## There are now four BF:
## Recall that BF are a ratio of evidence for H1 versus H0.

## [1]
## H1: Meditation has an effect on RT
## H0: Meditation has no effect on RT

## [2]
## H2: Congruency affects RT
## H0: Congruency does not affect RT

## [3]
## H3: Meditation and congruency both affect RT, and those effects are additive
##     (i.e. there is not an interaction)
## H0: Neither meditation nor congruency affect RT

## [4]
## H4: Meditation and congruency affect RT in a non-additive manner
##     (i.e. there is an interaction)
## H0: Neither meditation nor congruency affect RT

## SO HOW GOOD IS THE EVIDENCE FOR AN INTERACTION, THEN?  This is again a Bayes
## Factor, but not one reported in that table, which compares each hypothesis
## against the null hypothesis.  What you need to do is compare H4 with
## H3. Fortunately, this is easy to do:

allsum.bf[4]/allsum.bf[3]
## So the BF for the interaction is about 280

## Right, now the old-fashioned way
aov_car(formula = rt ~ medit + Error(subj/congru), data = allsum)

## Pulling this all together, we'd write something like

## There was a main effect of meditation, BF = 37.6, F(1, 278) = 12.81, p =
## .0004, and a main effect of congruency, BF = 9000, F(1, 278) = 25.05, p <
## .0001. These two factors interacted, BF = 281, F(1, 278) = 15.99, p < .0001.

## New thing 2a: Interaction with two b/subj factors
## Effect of meditation and biological sex on RT on incongruent trials 

## Subject-level summary
allsum2  <- namdati %>% group_by(subj, medit, sex) %>% summarise(rt = mean(rt))

## Graph it. 
allsum2 %>% ggplot(aes(rt, colour=sex, linetype=medit)) + geom_density(aes(y=..scaled..))

## BF ANOVA
## Wholly b/subj BF ANOVAs tend to be quick to run, but we still
## store the result so we can work out the interaction
allsum2.bf  <- anovaBF(formula = rt ~ medit*sex, data = allsum2)
allsum2.bf
allsum2.bf[4]/allsum2.bf[3]

## And here's the old-fashioned way again...
aov_car(formula = rt ~ medit*sex + Error(subj), data = allsum2)

## and the summary...

## There was a significant effect of meditation, BF = 165, F(1, 276) = 15.39, p
## = .0001. The effect of biological sex was significant under NHST, F(1, 276) = 4.11, 
## p = .04, but the Bayesian evidence was inconclusive, BF = 0.83.
## The interaction was non-significant, F(1, 276) = 1.59, p = .21, although the 
## Bayesian evidence was again inconclusive, BF = 0.36, 

## New thing 2b: Interaction with two repeated measures
## Effect of congruency and test block on reaction time

## Subject-level summary
allsum3  <- namdat %>% group_by(subj, congru, block) %>% summarise(rt = mean(rt))

## Graphing with two repeated-measures is 'interesting'...
allsum3 %>% ggplot(aes(rt, colour=congru, linetype=block)) + geom_density(aes(y=..scaled..))

## We can start by taking a difference for one factor, and plotting two
## distributions...
alldiff3  <- spread(allsum3, congru, rt) %>% mutate(diff = incong - cong)
alldiff3 %>% ggplot(aes(diff, linetype=block)) + geom_density(aes(y=..scaled..))

## In this case, they look pretty similar, but still it's worth remembering
## that an interaction is a difference of differences, so the appropriate
## distribution for an analysis of an within-subjects interaction is also a
## difference of differences.

## So let's calculate that, and plot it.
ddiff  <- alldiff3 %>%
    select(subj, block, diff) %>%
    spread(block, diff) %>%
    mutate(diffofdiff = `1` - `2`)

## Note: It's generally not such a great idea to use numbers to label columns
## but that's what we did with block number. To tell R than when we say 1 here, we mean
## the column called 1, not the number 1, we have to put the number inside backticks.
## This key is towards the top left of a UK keyboard.

ddiff %>% ggplot(aes(diffofdiff)) + geom_density(aes(y=..scaled..))

## BF ANOVA
## This is again going to take at least a minute to run.
allsum3.bf  <- anovaBF(formula = rt ~ congru*block + subj, data = allsum3, whichRandom = "subj")
allsum3.bf
allsum3.bf[4]/allsum3.bf[3]

## NHST ANOVA
aov_car(formula = rt ~ Error(subj/congru*block), data = allsum3)

## Summary text

## There was a significant effect of congruence, BF = 7.1 x 10^10, F(1, 279) = 23.27,
## p < .0001. The effect of block was nonsignificant with Bayesian evidence for
## the null, BF = .08, F(1, 279) = 1.93, p = .17. The interaction was also
## nonsignificant, with Bayesian evidence for the null, BF = 0.11, F(1, 279) =
## 3.04, p = .08.

## New thing 2c: More than two factors

## Running BF ANOVA with more than two factors is beyond the scope of this workshop. It's
## both very computationally intensive, and hard to interpret, unless you start using the
## lmBF command to build your own ANOVA models.

## If you want to just run NHST, with more than two factors, though -- that's pretty easy:
## (just not very easy to interpret - no 4 way ANOVA is)

## Subject-level summary
allsum4  <- namdat %>% group_by(subj, sex, medit, congru, block) %>% summarise(rt = mean(rt))

## NHST ANOVA
aov_car(formula = rt ~ sex*medit + Error(subj/congru*block), data = allsum4)

