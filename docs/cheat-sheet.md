# Quick reference guide
_Andy Wills_

## About this guide

This is not intended to be a stand-alone guide. It will not make much sense unless you've completed the worksheets. However, once you have done the worksheets, it becomes a handy quick reference guide to all the main commands you have learned about.

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
options("repos" = "https://mran.microsoft.com/snapshot/2020-06-29")
install.packages("tidyverse")
```

____


## Power calculations
Package: **pwr**

`pwr.t.test(n = ?, type = ?, power = ?, d = ?, alternative = ?, sig.level = ?)`

Replace all but one the question marks with the appropriate options, and remove the thing you want to calculate. For example:

`pwr.t.test(type = "paired", power = .8, d = .5, alternative="two.sided", sig.level = .05)`

will tell you how many participants you need to run for 80% power assuming an effect size of `d = .5`, a within-subjects design (`paired`), a nondirectional (`two.sided`) hypothesis, and a signifiance level of `.05`. Another option for `type` is `two.sample` (between-subjects), and another option for `alternative` is `less` (one-tailed test).

____

## Listing files in a directory

The command:

`list.files("rawdata", "csv", full.names=TRUE)`

lists all the files in the directory `rawdata` than contain `csv` in their filename. The option `full.names=TRUE` returns the full file name, including the path e.g. `rawdata/1.csv` rather than `1.csv`.

____


## Load
Package: **tidyverse**

`dframe <- read_csv("file.csv")` - Read data from a CSV file into a data frame called `dframe`.


____

## Renaming columns

Rename the columns of your data frame like this:

`colnames(dframe) <- c("col1", "col2", "col3")`


____


## Combining data frames

The command:

`alldat <- bind_rows(dat, dat2)`

takes the data frame `dat`, pastes the datframe `dat2` at the bottom of it, and puts the combined data into `alldat`.


___

## Pivot

To make a long-format data file wider, use

`dframe2 <- dframe %>% pivot_wider(names_from = colX, values_from = colY)`

Replace `colX` with the column in `dframe` that contains the names of the columns you want to create in `dframe2`. Replace `colY` with the column in `dframe` that contains the values you want to appear in those columns.


____

## Mutate

To create a new column in `dframe` called `colZ`, which is calculated by taking the values in `colX` and subtracting the values in `colY`, use:

`dframe <- dframe %>% mutate(colZ = colX - colY)`



____

## Filter
Package: **tidyverse**

`fdata <- dframe %>% filter(expression)`

Replace `dframe` with the name of your data frame. Replace `expression` with some instructions that tell R what data _you want to keep_ (see below). The filtered data will be put in a data frame called `fdata`.

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

## Select
Package: **tidyverse**

`sdata <- dframe %>% select(expression)`

Replace `dframe` with the name of your data frame. Replace `expression` with some instructions that tell R which columns of the data frame _you want to keep_ (see below). The selected data will be put in a data frame called `sdata`.

### Examples

`select(rating1, rating2)` - Select the two columns called `rating1` and `rating2`.

____

## Summarise
Package: **tidyverse**

`dframe %>% summarise(mean(DV))`

Replace `dframe` with the name of your data frame, and `DV` with the name of the column you want to look at (e.g. income). 

To calculate for each group in your data, use `group_by(IV)`.

`dframe %>% group_by(IV) %>% summarise(mean(DV))`

Replace `IV` with the name of the column that says which group each participant is in (e.g. `sex`).

You can get multiple summaries at once like this:

`dframe %>% summarise(ingroup = mean(ingroup), outgroup = mean(outgroup))`


### Summary commands
Replace `mean` with one of these to get a different summary:

| Command | Meaning |
| ------- | ------- |
| `median` | median |
| `sd` | standard deviation |
| `max` | maximum value |
| `min` | minimum value |
| `IQR` | inter-quartile range |

### Missing data

If the column you want to summarise has some missing data (shown as `NA`), you will need to tell R to ignore the missing data. For example: `mean(DV, na.rm = TRUE)`

Alternatively, you can remove the missing data from the data frame:

`dframe  <- dframe %>% drop_na()`

____

## Tabulate

Replace `dframe` with the name of your data frame. Replace `IV` with the name of your independent variable. 

### Frequency tables

`table(dframe$IV)` - Count number of rows in your data frame for each level of your IV. Example: `table(dframe$gender)` gives the number of rows (often the number of participants) of each gender.

### Contingency tables

`table(dframe$IV1, dframe$IV2)` - Count number of rows in your data frame for each combination of the independent variables `IV1` and `IV2`. 

____

## Plot
Package: **tidyverse**

Replace `dframe` with the name of your data frame, and `DV` with the name of the column of data you want to plot. 

### Histogram

`dframe %>% ggplot(aes(DV)) + geom_histogram(binwidth=X)`

Replace `X` with how wide you want your bars to be. For examples, if you want different bars for 0-9, 10-19, 20-29, etc., then `binwidth=10`.

### Scaled density plot

`dframe %>% ggplot(aes(DV, colour=factor(IV))) + geom_density(aes(y=..scaled..), adjust = 1)`

Replace `IV` with the name of the column that contains your grouping variable (e.g. sex). Increase the value of `adjust` to get a smoother plot. 

### Violin plot

A violin plot is a density plot rotated through 90 degrees and mirrored to make it symmetrical:

`dframe %>% ggplot(aes(x=DV, y=IV)) + geom_violin()`

### Scatterplot

`dframe %>% ggplot(aes(x = var1, y = var2)) + geom_point() `

`var1` and `var2` are the names of the columns in your data frame containing the x- and y- values of your points.

### Add a vertical line

Add a vertical line to your plot using:

`geom_vline(xintercept = 4.35, colour = "black")`

Replace `4.35` with the position on the x-axis you want the vertical line to cross, and `black` with the colour you want the line to be.

### Bar graph

`grpmeans %>% ggplot(aes(x = IV, y = DV)) + geom_col()`

Replace `grpmeans` with a data frame that contains one row for each bar you want to plot. Replace `IV` with the column that contains the x-axis labels for those bars. Replace `DV` with the column that contains the values you want to plot.

If you want to have more than one bar graph on the same axes, you can use a second `IV` to do this, by using it to set the fill colour

`grpmeans %>% ggplot(aes(x = IV1, y = DV, fill = IV2)) + geom_col(position = "dodge")`

Set the colours of bars in a bar plot using:

`scale_fill_manual(values=c("yellow","black"))`

List the available colours using `colours()`

### Line graph

These work much the same way as bar graphs. For example, for a graph of dots connected by lines, where one IV is on the x-axis and the other is shown by the colour of the line, use:

```
grpmeans %>%
    ggplot(aes(x = IV1, y = DV, group = IV2)) +
    geom_line(aes(colour=IV2)) +
    geom_point(aes(colour=IV2))
```

This is a fairly standard plot for illustrating the results of two-factor experiments, particularly where the interaction between factors is of interest (an interaction is illustrated by the lines not being parallel).


### Axis labels
Add labels to your x-axis and y-axis with these commands:

`xlab('Text to appear as the x-axis label')`

`ylab('Text to appear as the y-axis label')`

### Axis limits
Limit the range of the x-axis or y-axis with these commands:

`xlim(0, 10)` - Limit the x-axis to the range 0-10.

`ylim(-5, 100)` - Limit the x-axis to the range -5 to +100.

### APA style

1. Load the APA style from my website:

`source("http://www.willslab.org.uk/rminr/theme-apa.R")`

2. Add `+theme_APA()` to your command e.g.

`grpmeans %>% ggplot(aes(x = IV, y = DV)) + geom_col() + theme_APA()`


### Mosaic plot

`mosaicplot(cont)` - Visualize a contingency table. Replace `cont` with the contigency table of your data e.g. `cont <- table(dframe$IV1, dframe$IV2)`

____

## Analyse

Replace `dframe` with the name of your data frame. Replace `DV` with the name of the column containing the data you want to look at (e.g. income). Replace `IV` with the name of the column containing your grouping variable (e.g. sex). For correlation and similar, replace `var1` and `var2` with your two variables.

_Note:_ All the commands below expect you to have exactly two levels in your grouping variable (e.g. male, female). If you have more than two (e.g. year9, year10, year11) you will have to _filter_ your data until it has just two levels (e.g. year9, year11). 

### Effect size
Package: **effsize**

`cohen.d(dframe$DV ~ dframe$IV)`

### Correlation

#### Calculate

`cor(dframe$var1, dframe$var2)` - Standard (Pearson) correlation

`cor(dframe$var1, dframe$var2, method="spearman")` - Rank (Spearman) correlation

`cor(dframe$var1, dframe$var2, method="kendall")` - Kendall's tau correlation

#### Bayesian test
Package: **BayesFactor**

`correlationBF(dframe$var1, dframe$var2)`

#### Traditional test

`cor.test(dframe$var1, dframe$var2)`

`cor.test(dframe$var1, dframe$var2, alternative = "greater")` - One-tailed test (correlation is positive)

`cor.test(dframe$var1, dframe$var2, alternative = "less")` - One-tailed test (correlation is negative)

### Between-subjects t-test

#### Bayesian 
Package: **BayesFactor**

`ttestBF(formula = DV ~ IV, data = data.frame(dframe))`

#### Traditional
`t.test(dframe$DV ~ dframe$IV)`


### One-factor ANOVA

#### Bayesian
Package: **BayesFactor**

```
anovaBF(formula = DV ~ IV + subj,
        data = data.frame(dframe),
        whichRandom = "subj")
```

Replace `dframe` with the name of your data frame. Replace `DV` with the column in that data frame that contains the dependent variable. Replace `IV` with the column that contains the independent variable. Make sure you have a column called `subj` that contains the participant IDs. **Before running the above command**, ensure `IV` and `subj` are _factors_:

```
dframe$IV <- factor(dframe$IV)
dframe$subj <- factor(dframe$subj)
```

### Two-factor ANOVA 

Two-factor ANOVA is basically the same command as a one-factor ANOVA:

#### Bayesian
Package: **BayesFactor**

```
bf <- anovaBF(formula = DV ~ IV1*IV2 + subj,
              data = data.frame(dframe), whichRandom = "subj")
bf
bf[4] / bf[3]
```

The command `bf` gives the main effects on the first two lines - `[1]` and `[2]`. In order to calculate the BF for the interaction, you divide the fourth line by the third line - `bf[4] / bf[3]`.



### Inter-rater reliablity
Package: **irr**

`agree(dframe)` - Percentage agreement between raters, one rater per column in `dframe`

`kappa2(dframe)` - Cohen's kappa measure of inter-rater reliability, one rater per column in `dframe`.

### Chi-square test

These commands use a contingency table, generated as described above, e.g. `cont <- table(dframe$IV1, dframe$IV2)`

#### Bayesian
Package: **BayesFactor**

`contingencyTableBF(cont, fixedMargin = "rows", sampleType = "indepMulti")`

In the above command, the assumption is that the _rows_ of the contingency table is what the experimenter manipulated, and the _columns_ are what was measured. For example, in a study of cross-cultural friendship styles, friendship style is what is measured, and so should be on the columns. If that is not the case for your data, see the [more on relationships](chi-extended.html) worksheet.

#### Traditional

`chisq.test(cont)`




___

This material is distributed under a [Creative Commons](https://creativecommons.org/) licence. CC-BY-SA 4.0. 


