# Analyzing your project data
_Andy Wills, Paul Sharpe, Stuart Spicer, Ben Whalley_

## Before you start...

Before starting this exercise, you should have had a brief introduction to getting and using RStudio -- [Introduction to RStudio](intro-rstudio.html). You should also have also completed the workshop exercises for [Exploring Data](exploring-incomes.html), [Group Differences](group-differences.html), and [Evidence](evidence.html). If not, take a look these earlier worksheets before continuing.

## Contents

- [Exercise](#ex1)
- [Downloading files from RStudio Online](#download)

## Exercise

First, you're going to need to load your own data. The [Entering Data by Hand](entering-data-by-hand.html) worksheet explains how to do this, so take a look at that now. Once you've read it and done it, add this command to the next line of your script:

`p411data <- read_csv("psyc411data.csv")`

If you gave your CSV file a different name, change the name inside the quote marks accordingly

In order to analyse the data from your experiment, you need to use the commands you've learned up until now. The things you'll need to do are:

1. Produce an appropriately-labelled density plot of your dependent variable, with one line for each of your between-subject groups.

2. Calculate your effect size.

3. Perform a between-subjects t-test.

4. Perform a Bayesian t-test.

**Write a script to do these analyses on your data.**

### Example script

Here's what such a script looks like for the gender pay gap analyses.

```
## Load packages 
library(tidyverse)
library(effsize)
library(BayesFactor)

## Load data
cpsdata <- read_csv("cps2.csv")

## Produce density plot
cpsdata %>% ggplot(aes(income, colour=factor(sex))) + geom_density(aes(y=..scaled..)) +
  xlab("Income in US Dollars") + ylab("Density")

## Calculate effect size
cohen.d(cpsdata$income ~ cpsdata$sex)

## Perform t-test
t.test(cpsdata$income ~ cpsdata$sex)

## Perform Bayesian t-test
ttestBF(formula = income ~ sex, data = data.frame(cpsdata))
```

<a name="download"></a>

### Downloading files from RStudio Online

In order to use files from RStudio Online in other applications (e.g. Microsoft Office, LibreOffice), you'll need to download them. Here's how:

1. Click on the 'Files' tab in RStudio Online, and click the tick box to select your file (it will have whatever filename you just gave it.). 

2. Click on "More" (next to the little blue gear wheel), and then "Export...". 

3. Click "Download". The file will now be in the Downloads folder of your computer. 

___

This material is distributed under a [Creative Commons](https://creativecommons.org/) licence. CC-BY-SA 4.0. 


