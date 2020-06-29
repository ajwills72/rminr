# Research Methods in R
_2019 Edition._

_Research Methods in R_ is a set of guides on how to use R as your central research methods tool. The target audience is psychology undergraduate students. _Research Methods in R_ is [Creative Commons](https://creativecommons.org/), so you are free to reuse these materials and adapt them as you wish, as long as you attribute them to their authors, and as long as your modifications have a Creative Commons licence.

The advantages of R over other software packages are discussed [here](why-r-student.html). Many psychology degree programmes have switched to R over the last few years, here is a partial [list](rminrinpsy.html).

## List of guides

1. [Absolute Beginners' Guide to R](#beginners)

2. [Putting R to Work](#rtowork)

3. [A Very Brief Guide to R](#vbgtr)

4. [Research Methods in Practice (Quantitative section)](#rmip)

5. [Intermediate Guide to R](#rmip) 

6. [Going further with R](#gfwr) (work in progress)

7. [Case studies](#studies) (work in progress)

## 1. Absolute Beginners' Guide to R
<a name="beginners"></a>

A series of worksheets on using R for data analysis in psychology. No previous knowledge of R, or of psychology, is assumed. 

* [Introduction to RStudio](intro-rstudio.md). How to get RStudio, and a basic introduction to the software.

* [Exploring data](exploring-incomes.html). Means, medians, and histograms. 

* [Group differences](group-differences.html). Means and standard deviations, by group. Filtering data. Effect size.

* [Evidence](evidence.html). Introduction to p values. Traditional between-subjects t-test. Bayesian between-subjects t-test.

* [Using RStudio projects](using-projects.html). Creating a new project. Using an R script. Analysing your own data. 

* [Entering data by hand](entering-data-by-hand.html). Entering data into a spreadsheet. Saving data into your RStudio project.

* [Calculating your module mark](modmark.html). How to calculate a final module mark from your component marks, using R.

* [Inter-rater reliability](irr.html). Percentage agreement. Cohen's kappa. 

* [Relationships](chi.html). Frequency and contingency tables. Mosaic plots. Traditional chi-square test. Bayesian test. 

* [Relationships, part 2](corr.html). Density plots. Scatter plots. Correlation co-efficient. Bayesian and traditional tests. 

* [Cheat sheet](cheat-sheet.html). Everything we've covered so far, condensed. 

* [Other resources](resources.html). A list of other Creative Commons resources about using R. 

## 2. Putting R to work
<a name="rtowork"></a>

These are mainly further practice in the skills learned in _Absolute Beginners'_. Where the exercises contain completely new skills, these are shown in **bold**. Where the excercises extend a skill you've already been taught, these are shown in _italics_. The exercises become somewhat more difficult as you go down the list. 

If you are a current undergraduate student at Plymouth University, you should complete the accompanying Psych:EL (Psychology: Experiential Learning) activity first, in order to generate your own set of data. If you're not, you can download sample data files [here](rtoworkdata.html).

* [Autobiographical memory](memories.html). Entering data by hand, _histograms_.

* [Face recognition](face-recog.html). Means, _filtering data_, and a **bar graph**.

* [Spatial navigation](navigate.html). More on **bar graphs**.

* [Response compatibility](response-compatibility.html). Means, filtering data, standard deviations, and density plots.

* [Visual illusions](illusions.html). Filtering data, means, **violin plot**, Bayesian t-test.

* [Facial attractiveness](face-attract.html). Means, standard deviations, **inter-quartile range**, and _density plots_. 

* [Police lineup](lineup.html). Contingency table, mosaic plot, Bayesian contingency test, means, density plot, Bayesian t-test

* [Risk taking](risk-rat.html). Means, **combining data frames**, filtering data, and _density plots_.

* [Animal Welfare](lions.html). Percentage agreement, Cohen's kappa, contingency tables, _bar charts_.

* [Creativity and the environment](green.html). **Preprocessing**, means, density plots, effect size, Bayesian t-test.

* [Political psychology](brexit.html). Means, filtering data, _summarising data_, density plots, effect size, Bayesian t-test, traditional t-test. 

## 3. A Very Brief Guide to R

<a name="vbgtr"></a>

The _Absolute Beginners' Guide to R_ and _Putting R to Work_ provide, between them, about 20 hours of introductory material. For those in a hurry, the _Very Brief Guide to R_ covers the most critical material from those two courses in about four hours.

* [Using RStudio](using_rstudio.html): Brief introduction to the software

* [Exploring data](vbg_explore.html): Loading data, calculating means

* [Group differences](vbg_groups.html): Grouping, density plots, filtering.

* [Evidence, part 1](vbg_evidence.html): Bayesian and traditional t-tests 

* [Evidence, part 2](vbg_corr.html): Bayes and traditional correlation, scatterplot


## 4. Research Methods in Practice (Quantitative section)

<a name="rmip"></a>

These are intermediate-level materials, designed to follow on from _An Absolute Beginners' Guide to R_ and _Putting R to work_ (or from _A Very Brief Guide to R_, if you're in a hurry). They are maintained by Ben Whalley on a separate site,
but have been designed to fit in here in this sequence of materials. Only the _quantitative_ section of Ben's site contains information concerning the usage of R.

- [Research Methods in Practice](https://benwhalley.github.io/rmip/overview-quantitative.html): Data handling, [fitting lines](https://benwhalley.github.io/rmip/regression.html) - _scatterplot with best fit line_ , multiple regression.

## 5. Intermediate Guide to R

<a name="rmip"></a>

These are intermediate-level materials, designed to follow on from _An Absolute Beginners' Guide to R_ and _Putting R to work_ (or from _A Very Brief Guide to R_, if you're in a hurry). They  provide analysis methods for conducting realistic, high-quality studies in psychology. They are aimed at a second-year undergraduate audience.

- [Revision](revision.html): A quick recap of key information covered in earlier courses.

- [Statistical power](power.html): How to calculate the statistical power of experiments. 

- [Data preprocessing](preproc.html): Getting data from lab-based (OpenSesame)
  experiments into a format closer to something you can actually analyse, in
  five steps: loading, selecting, filtering, summarising, and combining.

- [Within-subject differences](anova1.html): Data preprocessing (pivoting and
  mutating). One-factor within-subject Bayesian ANOVA.

- [Understanding interactions](anova2.html): Learn what an interaction is, and
  learn how to do line plots at the same time.

- [Factorial differences](anova3.html): Two-factor Bayesian ANOVA (one within,
  one between)

## 6. Going further with R
<a name="gfwr"></a>

These are slightly more advanced materials, aimed at a final-year undergraduate psychology audience.

- [Traditional ANOVA](more-on-anova.html): Just in case someone insists you use
  the older, p-value based, approach to ANOVA ... and you don't feel like
  saying 'no'.

- [Factorial differences, part 2](anova4.html): More on two-factor Bayesian ANOVA.

- [Better graphs](better-graphs.html): Producing publication-quality graphs in R.

The following materials are currently being developed, so on clicking these
links, you may find just notes, or incomplete worksheets.

- [Other resources](gfwr-other.html): Links to external resources.

- [Better tables](better-tables.html): Producing publication-quality tables in R.

- [Preprocessing scales](preproc-scales.html): _Handling missing data_, **calculating scale scores**, **tidying survey data**, **reverse scoring items**.

- [Analysing scales](analyse-scales.html): **Cronbach's alpha**.

- [Traditional non-parametric tests](non-parametric.html): **Mann-Whitney U**.

<a name="studies"></a>

## 7. Case studies
These are full preprocessing and analysis pipelines, based on final-year undergraduate psychology projects.

- [The effects of negative mental imagery on self-esteem](cs-self-esteem.html): _Preprocessing scales_, _analysing scales_, **recoding factor levels**, _1-way ANOVA_, _2-way mixed ANOVA_.

- [The Perruchet Effect](awdiss.html): **Downloading from OSF**, **De-duplicating data**, **Excluding participants**, _line graphs_, **baseline correction of neuroscience data**, **functions**, _loops_, _merging data frames_, **list of participant numbers**, **log transforms**, _recoding data_, **decent graphs for within-subject designs**, **Bayesian linear regression for within-subjects designs**.

- [Reliability of Targets in a Picture Naming Task](cs-picture-naming.html): **Reading data from Excel**, _Bayesian t-tests_, _functions_, **generating a table of statistics**, _correlations_, **raincloud plots**, **Mann-Whitney U test**

____

#### Source code

These teaching materials were generated using a combination of Markdown and RMarkdown. The full source code is available on [github](https://github.com/ajwills72/rminr). 

___

#### Licence
This material is distributed under a [Creative Commons](https://creativecommons.org/) licence. CC-BY-SA 4.0. 

Parts of this material have been adpated from these other Creative Commons materials:

* May, J. (2018). [Getting Results with R](https://github.com/jon-may/GettingResultsinR).
* Whalley, B. (2018). [Just Enough R](https://benwhalley.github.io/just-enough-r/).
* Wills, A. (2015). [R for Experimental Psychologists](http://www.willslab.org.uk/rbook.html).

____

#### Acknowledgements

Thanks to the following people for their feedback and advice on these materials:

Jackie Andrade, Eleanor Andrade May, Martyn Atkins,
Patric Bach, Dale Barr, Chris Berry,
Laura Charlton,
Lisa DeBruine, 
Charlotte Edmunds,
Emily Filewood,
Giorgio Ganis, Phil Gee, Michaela Gummerum,
Yaniv Hanoch, Cathryn Harries, Courtney Hooton,
Angus Inkster,
Jasmin Jones, Peter Jones, 
Laith Kahn, 
Chris Longmore,
Jon May, Anthony Mee, Chris Mitchell, Millie Monks,
Karol Nedza,
Alyson Norman,
Charlie Reynolds, Matt Roser,
Paul Sharpe, Alastair Smith, Julian Stander, 
Sylvia Terbeck,
Michael Verde,
Clare Walsh, Ben Whalley.


