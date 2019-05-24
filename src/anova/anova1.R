rm(list=ls())
## Stage 1 revision
library(tidyverse)
cpsdata <- read_csv(url("http://www.willslab.org.uk/cps2.csv"))
library(BayesFactor)
## For documentation on BayesFactor, type 'BFmanual()'
ttestBF(formula = income ~ sex, data = data.frame(cpsdata))
t.test(cpsdata$income ~ cpsdata$sex)

## Stage 2: Same thing, different way

### Load data
### Coltypes is needed because anovaBF is fussy about variable types
namdat  <- read_csv("wordnaming.csv", col_types = "ffffffffii")

### For now, we'll just look at the incongruent trials
namdati  <- namdat %>% filter(cond == "incong")

### Produce a subject-level summary
subsum  <- namdati %>% group_by(subj, medit) %>% summarise(rt = mean(rt))

## Was there an effect of meditation?
ttestBF(formula = rt ~ medit, data = data.frame(subsum))
t.test(subsum$rt ~ subsum$medit)

## Now, a different way to ask R to do _exactly_ the same things
anovaBF(formula = rt ~ medit, data = subsum)
library(afex)
## For documentation on afex, see http://singmann.org/anova-in-r-afex-may-be-the-solution-you-are-looking-for/
aov_car(formula = rt ~ medit + Error(subj), data = subsum)

## We're going to use this recipe from now on, because it allows us to do a
## bunch of other things, too.

## New thing #1: Repeated-measures tests
## Are incongruent trials slower than congruent trials?

### Let's just look at the control group
datctrl  <- namdat %>% filter(medit == "control")

### And, again, let's produce a subject-level summary
ctrlsum  <- datctrl %>% group_by(subj, cond) %>% summarise(rt = mean(rt))

### Now, let's do the BF test
anovaBF(formula = rt ~ cond + subj, data = ctrlsum, whichRandom = "subj")
#### Line 1 is our BF

### And, for historical interest, the NHST
aov_car(formula = rt ~ Error(subj/cond), data = ctrlsum)

## New thing #2: Interactions
## Does meditation reduce interference (Incong - Cong becomes smaller)?
## Or does it just make you faster at everything?

## Again, produce a subject-level summary
allsum  <- namdat %>% group_by(subj, medit, cond) %>% summarise(rt = mean(rt))

## BF interactions
## This will take at least one minute to run, so it's worth storing the output...
bf  <- anovaBF(formula = rt ~ medit*cond + subj, data = allsum, whichRandom = "subj")

### ...and then displaying it
bf

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

bf[4]/bf[3]
## So the BF for the interaction is about 19.5

## Right, now the old-fashioned way
aov_car(formula = rt ~ medit + Error(subj/cond), data = allsum)

## Pulling this all together, we'd write something like

## There was a main effect of meditation, BF = 6.17, F(1, 278) = 8.98, p <
## .005, and a main effect of congruency, BF = 344, F(1, 278) = 17.13, p <
## .0001. These two factors interacted, BF = 19.5, F(1, 278) = 10.35, p = .001.

## New thing 2a: Interaction with two b/subj factors
## Effect of meditation and biological sex on RT on incongruent trials

## Subject-level summary
allsum2  <- namdati %>% group_by(subj, medit, sex) %>% summarise(rt = mean(rt))

## BF ANOVA
## Wholly b/subj BF ANOVAs tend to be quick to run, but we still
## store the result so we can work out the interaction
bfa  <- anovaBF(formula = rt ~ medit*sex, data = allsum2)
bfa[4]/bfa[3]

## And here's the old-fashioned way again...
aov_car(formula = rt ~ medit*sex + Error(subj), data = allsum2)

## and the summary...

## There was a significant effect of meditation, BF = 15, F(1, 276) = 10.07, p
## = .002. The effect of biological sex was non-significant, with Bayesian
## evidence for the null, BF = .14, F(1, 276) = .07, p = .79. The interaction
## was non-significant, although the Bayesian evidence was inconclusive, BF =
## 0.39, F(1, 276) = 1.71, p = .19.

## New thing 2b: Interaction with two repeated measures
## Effect of congruency and test block on reaction time

## Subject-level summary
allsum3  <- namdat %>% group_by(subj, cond, block) %>% summarise(rt = mean(rt))

## BF ANOVA
bfb  <- anovaBF(formula = rt ~ cond*block + subj, data = allsum3, whichRandom = "subj")
bfb
bfb[4]/bfb[3]

## NHST ANOVA
aov_car(formula = rt ~ Error(subj/cond*block), data = allsum3)

## Summary text

## There was a significant effect of block, BF = 8.8 x 10^8, F(1, 279) = 16.52,
## p < .0001. The effect of block was nonsignificant with Bayesian evidence for
## the null, BF = .07, F(1, 279) = .04, p = .85. The interaction was also
## nonsignificant, with Bayesian evidence for the null, BF = 0.11, F(1, 279) =
## 3.20, p = .07.

## New thing 2c: More than two factors

## Running BF ANOVA with more than two factors is beyond the scope of this workshop. It's
## both very computationally intensive, and hard to interpret, unless you start using the
## lmBF command to build your own ANOVA models.

## If you want to just run NHST, with more than two factors, though -- that's pretty easy:

## Subject-level summary
allsum4  <- namdat %>% group_by(subj, sex, medit, cond, block) %>% summarise(rt = mean(rt))

## NHST ANOVA
aov_car(formula = rt ~ sex*medit + Error(subj/cond*block), data = allsum4)

