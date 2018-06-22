# Absolute Beginners' Cheat Sheet
_Andy Wills_

## Getting help
If you want to do almost anything in R, you can just google "something in R". For example, want to produce a graph different to the ones you've been taught in class? Search "graphs in R". One of the first results will be the [R Graph Gallery](https://www.r-graph-gallery.com/), with lots of examples you can adapt. Similarly, if the output you're seeing includes the word 'error', copy that output into google and search for it. There's a huge, friendly, community of R users out there, so it's likely someone has already put the answer to your problem online. 

**Note:** 'Google' here means any internet search engine. For example, you could also use [DuckDuckGo](https://duckduckgo.com/), which works just as well as Google, but respects your privacy, too.

____


## Begin

`library(tidyverse)` - Load a package before you use it. 

In the sections below, a word in **bold** after the heading indicates the R package you need to load. So, for example, in the _Load_ section, you need to load the _tidyverse_ package.

### Installing packages

If you've installed R on your personally-owned machine, you need to install the package before you can use it:

```
options("repos" = "https://mran.microsoft.com/snapshot/2018-05-01")
install.packages("tidyverse")
```

____


## Load
Package: **tidyverse**

`dframe <- read_csv("file.csv")` - Read data from a CSV file into a data frame called `dframe`.

____

## Filter
Package: **tidyverse**

`fdata <- dframe %>% filter(expression)`

Replace `data` with the name of your data frame. Replace `expression` with some instructions that tell R what data _you want to keep_ (see below). The filtered data will be put in a data frame called `fdata`.

### Examples

| Command | Meaning  | Example expression |
| ------ | ------------ | -------  |
| `==`   | Equal to | `filter(sex == "male")` |
| `!=`   | NOT equal to | `filter(job != "nopay")` |
| `>`    | Greater than | `filter(income > 0)` |
| `<`    | Less than    | `filter(income < 5000)` |
| `&`    | AND  | `filter(education == "grade-school" & sex == "male")` |
| `|`    | OR   | `filter(education == "master" | education == "doctor")` |

____

## Summarise
Package: **tidyverse**

`dframe %>% summarise(mean(DV))`

Replace `dframe` with the name of your data frame, and `DV` with the name of the column you want to look at (e.g. income). 

To calculate for each group in your data, use `group_by(IV)`.

`dframe %>% group_by(IV) %>% summarise(mean(DV))`

Replace `IV` with the name of the column that says which group each participant is in (e.g. `sex`).

### Summary commands
Replace `mean` with one of these to get a different summary:

| Command | Meaning |
| ------- | ------- |
| `median` | median |
| `sd` | standard deviation |
| `max` | maximum value |
| `min` | minimum value |

### Missing data

If the column you want to summarise has some missing data (shown as `NA`), you will need to tell R to ignore the missing data. For example: `mean(DV, na.rm = TRUE)`

____

## Plot
Package: **tidyverse**

Replace `dframe` with the name of your data frame, and `DV` with the name of the column of data you want to plot. 

### Histogram

`dframe %>% ggplot(aes(DV)) + geom_histogram(binwidth=X)`

Replace `X` with how wide you want your bars to be. For examples, if you want different bars for 0-9, 10-19, 20-29, etc., then `binwidth=10`.

### Scaled density plot

`dframe %>% ggplot(aes(DV, colour=factor(IV))) + geom_density(aes(y=..scaled..))`

Replace `IV` with the name of the column that contains your grouping variable (e.g. sex).

### Axis labels
Add labels to your x-axis and y-axis with these commands:

`xlab('Text to appear as the x-axis label')`

`ylab('Text to appear as the y-axis label')`

### Example

`cpsdata %>% ggplot(aes(income)) + geom_histogram(binwidth=20000) + xlab('x axis') + ylab('y axis')`

____

## Analyse

Replace `dframe` with the name of your data frame. Replace `DV` with the name of the column containing the data you want to look at (e.g. income). Replace `IV` with the name of the column containing your grouping variable (e.g. sex). 

_Note:_ All the commands below expect you to have exactly two levels in your grouping variable (e.g. male, female). If you have more than two (e.g. year9, year10, year11) you will have to _filter_ your data until it has just two levels (e.g. year9, year11). 

### Effect size
Package: **effsize**

`cohen.d(dframe$DV ~ dframe$IV)`

### Between-subjects t-test

#### Bayesian 
Package: **BayesFactor**

`ttestBF(formula = DV ~ IV, data = data.frame(dframe))`

#### Traditional
`t.test(dframe$DV ~ dframe$IV)`

___

This material is distributed under a [Creative Commons](https://creativecommons.org/) licence. CC-BY-SA 4.0. 

_version: 0.2_
