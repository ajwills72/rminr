# Research Methods in R
_2021 Edition._


_Research Methods in R_ is a set of guides on how to use R as your central research methods tool. They are written by various authors, and curated by [Andy Wills](https://www.andywills.info). The target audience is psychology undergraduate students. _Research Methods in R_ is [Creative Commons](https://creativecommons.org/), so you are free to reuse these materials and adapt them as you wish, as long as you attribute them to their authors, and as long as your modifications have a Creative Commons licence. They come with absolutely no warranty of any kind.

_Note to teachers_: These materials have been tested against R version 4.1.0 (released 18th May 2021), and the most recent version of packages that were available on [MRAN](https://mran.microsoft.com/) on the 17th June 2021.

## Curriculum map

To see how a subset of these resources is used in undergraduate psychology teaching, click below:

- [University of Plymouth](maps/plymouth-map.html)

## List of guides

### Introductory quides

Start with **ONE** of these three options:

- Long, easy-going introduction
    - [Absolute Beginners' Guide to R](#beginners)
    - [Putting R to Work](#rtowork)

- Somewhat shorter introduction
    - [LifesavR](http://benwhalley.github.io/lifesavR/)

- Even shorter introduction
    - [A Very Brief Guide to R](#vbgtr)

### Intermediate guides

Next, go through **BOTH** of these guides.

- [Research Methods in Practice](#rmip)

- [Intermediate Guide to R](#rmip)

### Advanced guide

- [Going further with R](#gfwr)


<a name="gen"></a>

## General resources

1. [Why R?](why-r-student.html) Discussion of the advantages of R over other software packages.

1. [Pedagogy](course-phil.html) Discussion of philosophy of teaching and learning underlying these materials (mainly aimed at teachers).

1. [Who is using R?](rminrinpsy.html) Partial list of psychology degree
   programmes around the world than use R.

1. [Other resources](resources.html). A list of other Creative Commons resources about using R.

1. [Calculating your module mark](modmark.html). How to calculate a final module mark from your component marks, using R.

1. [Dealing with common errors](common-errors.html). List of commonly-encountered errors and how to solve them.

1. [Case studies](#studies)


## Absolute Beginners' Guide to R
<a name="beginners"></a>

A series of worksheets on using R for data analysis in psychology. No previous knowledge of R, or of psychology, is assumed.

### Part 1

* [Introduction to RStudio](intro-rstudio.md). A basic introduction to the software.

* [Exploring data](exploring-incomes.html). Means, medians, and histograms.

    * [More on tibbles](more-on-tibbles.html). Deeper explanation of 'tibbles' in R.

    * [Means and medians](mean-median.html). Some slides on the difference between a mean and a median.

* [Group differences](group-differences.html). Means and standard deviations, by group. Filtering data. Effect size.

* [Evidence](evidence.html). Introduction to p values. Traditional between-subjects t-test. Bayesian between-subjects t-test.

    * [More on t-tests](more-on-t.html). Further information on traditional t-tests, and confidence intervals.

    * [More on Bayes Factors](more-on-bf.html). A more detailed discussion of Bayes Factors.

* [Analyzing your project data](using-projects.html). Analysing your own data.

* [Entering data by hand](entering-data-by-hand.html). Entering data into a spreadsheet. Saving data into your RStudio project.

### Part 2

* [Inter-rater reliability](irr.html). Percentage agreement. Cohen's kappa.

    * [More on Cohen's kappa](more-on-kappa.html). A discussion of some potentially surprising outputs from a Cohen's kaapa calculation.

* [Relationships](chi.html). Frequency and contingency tables. Mosaic plots. Traditional chi-square test. Bayesian test.

    * [More on relationships](chi-extended.html). Extension material on chi-square calculations, including issues surrounding ordered variables (e.g. age), the interpretation of large contingency tables, and a further explanation of the output of the Bayesian chi-square test.

* [Relationships, part 2](corr.html). Density plots. Scatter plots. Correlation co-efficient. Bayesian and traditional tests.

    * [More on relationships, part 2](corr-extended.html). Spearman's correlation, Kendall's tau, one-tailed tests, confidence intervals, plus a deeper look at the output of the Bayesian correlation test.

* [Sample characteristics](sample.html). How to calculate summary information about your sample, such as number of participants or gender balance, from your data file.

* [Making reports with R](insert-image.html). How to insert an RStudio graph into your wordprocessor document (e.g. Word). Links to _RMarkdown_ as an alternative.


## Putting R to work
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

## A Very Brief Guide to R

<a name="vbgtr"></a>

The _Absolute Beginners' Guide to R_ and _Putting R to Work_ provide, between them, about 20 hours of introductory material. For those in a hurry, the _Very Brief Guide to R_ covers the most critical material from those two courses in about four hours.

* [Using RStudio](using_rstudio.html): Brief introduction to the software

* [Exploring data](vbg_explore.html): Loading data, calculating means

* [Group differences](vbg_groups.html): Grouping, density plots, filtering.

* [Evidence, part 1](vbg_evidence.html): Bayesian and traditional t-tests

* [Evidence, part 2](vbg_corr.html): Bayes and traditional correlation, scatterplot


## Research Methods in Practice (Quantitative section)

<a name="rmip"></a>

These are intermediate-level materials. They are maintained by Ben Whalley on a
separate site, but have been designed to fit in here in this sequence of
materials. Only the _quantitative_ section of Ben's site contains information
concerning the usage of R.

- [Research Methods in Practice](https://benwhalley.github.io/rmip/data.html): Data handling, [fitting lines](https://benwhalley.github.io/rmip/regression.html) - _scatterplot with best fit line_ , **converting Likert scales from text to numbers**, **reverse scoring scale items**, multiple regression.

## Intermediate Guide to R

<a name="rmip"></a>

These are intermediate-level materials. They  provide analysis methods for conducting realistic, high-quality studies in psychology. They are aimed at a second-year undergraduate audience.

- [Revision](revision.html): A quick recap of key information covered in earlier courses.

- [Statistical power](power.html): How to calculate the statistical power of experiments.

    - [More on statistical power](effsize_from_papers.html): A deeper discussion on statistical power, including: (1) relation between statistical power and the replication crisis, (2) better standards for statistical power, (3) how to improve effect size, (4) estimating effect size from previous work.

- [Data preprocessing](preproc.html): Getting data from lab-based (OpenSesame)
  experiments into a format closer to something you can actually analyse, in
  five steps: loading, selecting, filtering, summarising, and combining. Also covers combining data frames, renaming columns, and using **loops**.
    - [More on preprocessing](more-on-preproc.html): A slightly more advanced worksheet, covering adding columns to a data frame, and subsetting strings.

- [Within-subject differences](anova1.html): Data preprocessing (pivoting and
  mutating). One-factor within-subject Bayesian ANOVA. Pairwise comparisons, multiple comparisons.

- [Understanding interactions](anova2.html): Learn what an interaction is, and
  learn how to do line plots at the same time.

- [Factorial differences](anova3.html): Two-factor Bayesian ANOVA (one within,
  one between), plus advice on: pairwise comparisons, better graphs, reporting Bayesian ANOVA, and ordinal (i.e. ordered) independent variables.


## Going further with R
<a name="gfwr"></a>

These are slightly more advanced materials, aimed at a final-year undergraduate psychology audience.

- Data management

    * [Data management](data-github.html): Anonymity and privacy, good and bad file types, creating and sharing a private github repository, adding a repository to Rstudio, adding files to github using Rstudio, modifying and updating files, git log as your logbook, branching, recovering an earlier version of a file.

- Preprocessing

    * [Data preprocessing for experiments](preproc-experiments.html): De-duplicating data, excluding participants, log transform.

    * [Data preprocessing for scales](preproc-scales.html): Handling missing data, calculating scale scores, tidying survey data.

- Descriptive statistics

    * [Better tables](better-tables.html): correlation matrix, custom table of descriptive statistics.

    * [Better graphs](better-graphs.html): publication-quality graphs showing both central tendency and variability (or uncertainty) of your data, including: line plots, distribution plots (density, violion, half-violin), box plots, and confidence intervals. Suggested plots for one- and two-factor designs, within-subject, between-subject, or mixed designs, and with ordered and unordered variables. Discussion of common bad plots to avoid (bar plots; confusions over confidence intervals). Pairs plot for correlational designs.

    * [Analysing scales](analyse-scales.html): Cronbach's alpha.

- Bayesian inferential statistics

    * [Bayesian approach to estimate sample size](power-bayesian.html): An introduction and how-to on estimating sample size with a Bayesian approach.

    * [One-sample Bayesian t-test](one-sample.html): Comparing a single-group sample of data against a population mean.

    * [More on Bayesian ANOVA](anova4.html): More on two-factor Bayesian ANOVA.

    * [More on regression](more-on-regression.html): Multiple regression with more than two predictors, hierarchical regression, evidence for individual predictors.

- Traditional inferential statistics

    * [Traditional ANOVA](more-on-anova.html): p-value based, approach to ANOVA.

    * [Traditional non-parametric tests](non-parametric.html): Mann-Whitney U, Kruskal-Wallis H.

<a name="studies"></a>

## Case studies
These are full preprocessing and analysis pipelines, mainly based on final-year undergraduate psychology projects.

- [The effects of negative mental imagery on self-esteem](cs-self-esteem.html): preprocessing, Cronbach's alpha, Bayesian ANOVA.

- [The Perruchet Effect](awdiss.html): **Downloading from OSF**, de-duplicating data, excluding participants, line graphs, **baseline correction of neuroscience data**, _functions_, _loops_, _merging data frames_, list of participant numbers, log transforms, _recoding data_, **Bayesian linear regression for within-subjects designs**.

- [Childrens’ language development](cs-picture-naming-wide.html): preprocessing, Bayesian t-test, tables of descriptive statistics, correlations, half-violin plot, Wilcoxon test.

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
Patric Bach, Alison Bacon, Dale Barr, Nadège Bault, Chris Berry,
Allegra Cattani, Laura Charlton,
Lisa DeBruine,
Charlotte Edmunds,
Emily Filewood,
Giorgio Ganis, Phil Gee, Michaela Gummerum,
Yaniv Hanoch, Cathryn Harries, Jessica Hart, Sophie Homer, Courtney Hooton,
Angus Inkster,
Jasmin Jones, Peter Jones,
Laith Kahn, Gokcek Kul
Helen Lloyd, Chris Longmore,
Jon May, Anthony Mee, Chris Mitchell, Millie Monks,
Karol Nedza,
Alyson Norman,
Charlie Reynolds, Matt Roser,
Paul Sharpe, Alastair Smith, Julian Stander,
Sylvia Terbeck,
Michael Verde,
Clare Walsh, Ben Whalley.
