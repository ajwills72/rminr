# RMINR at University of Plymouth, School of Psychology

# Stage 1

## PSYC411 Learning (Semester 1, first four weeks)

* [Introduction to RStudio](../intro-rstudio.md). A basic introduction to the software.

* [Exploring data](../exploring-incomes.html). Means, medians, and histograms. 

    * [More on tibbles](../more-on-tibbles.html). Deeper explanation of 'tibbles' in R.

    * [Means and medians](../mean-median.html). Some slides on the difference between a mean and a median.

* [Group differences](../group-differences.html). Means and standard deviations, by group. Filtering data. Effect size.

* [Evidence](../evidence.html). Introduction to p values. Traditional between-subjects t-test. Bayesian between-subjects t-test.

    * [More on t-tests](../more-on-t.html). Further information on traditional t-tests, and confidence intervals.

    * [More on Bayes Factors](../more-on-bf.html). A more detailed discussion of Bayes Factors.

* [Analyzing your project data](../using-projects.html). Analysing your own data. 

* [Entering data by hand](../entering-data-by-hand.html). Entering data into a spreadsheet. Saving data into your RStudio project.

## PSYC412 Psychological Science (Semester 1, from 5th week)

* PsycEL exercise "Navigation" uses the [spatial navigation](../navigate.html) worksheet. More on **bar graphs**.

* PsycEL exercise "Recognising faces" uses the [face recognition](../face-recog.html) worksheet. Means, _filtering data_, and a **bar graph**.

* PsycEL exercise "Memory from Life" uses the [autobiographical memory](../memories.html) worksheet. Entering data by hand, _histograms_.

## PSYC413 Debates in Psychology (Semester 1, from 5th week)

* PsycEl exercise "Visual illusions 1" uses the [visual illusions](../illusions.html) worksheet. Filtering data, means, **violin plot**, Bayesian t-test.

* PsycEL exercise "Automatic imitation" uses the [response compatibility](../response-compatibility.html) worksheet. Means, filtering data, standard deviations, and density plots.

## PSYC414 Relationships (Semester 2, first four weeks)

* [Inter-rater reliability](../irr.html). Percentage agreement. Cohen's kappa. 

    * [More on Cohen's kappa](../more-on-kappa.html). A discussion of some potentially surprising outputs from a Cohen's kaapa calculation.

* [Relationships](../chi.html). Frequency and contingency tables. Mosaic plots. Traditional chi-square test. Bayesian test. 

    * [More on relationships](../chi-extended.html). Extension material on chi-square calculations, including issues surrounding ordered variables (e.g. age), the interpretation of large contingency tables, and a further explanation of the output of the Bayesian chi-square test.

* [Relationships, part 2](../corr.html). Density plots. Scatter plots. Correlation co-efficient. Bayesian and traditional tests. 

    * [More on relationships, part 2](../corr-extended.html). Spearman's correlation, Kendall's tau, one-tailed tests, confidence intervals, plus a deeper look at the output of the Bayesian correlation test.
    
* [Sample characteristics](../sample.html). How to calculate summary information about your sample, such as number of participants or gender balance, from your data file.

* [Making reports with R](../insert-image.html). How to insert an RStudio graph into your wordprocessor document (e.g. Word). Links to _RMarkdown_ as an alternative.

* PsycEL exercise "Recognition"  [Facial attractiveness](../face-attract.html). Means, standard deviations, **inter-quartile range**, and _density plots_. 

## PSYC415 Topics in Psychology (Semester 2, from 5th week)

* PsycEL exercise "Eye Witness Memory" uses the [police lineup](../lineup.html) worksheet. Contingency table, mosaic plot, Bayesian contingency test, means, density plot, Bayesian t-test

* PsycEL exercise "Risk taking" uses the [risk taking](../risk-rat.html) worksheet. Means, **combining data frames**, filtering data, and _density plots_.

* A former PsycEL exercise used the  [creativity and the environment](../green.html). **Preprocessing**, means, density plots, effect size, Bayesian t-test.

## PSYC416 Connecting Psychology (Semester 2, from 5th week)

* PsycEL exercise "Animal Welfare" uses the [animal welfare](../lions.html) worksheet. Percentage agreement, Cohen's kappa, contingency tables, _bar charts_.

* A former PsycEL exercise "Political psychology" used the [political psychology](../brexit.html) worksheet. Means, filtering data, _summarising data_, density plots, effect size, Bayesian t-test, traditional t-test. 

# Stage 2

## PSYC519 Research Methods in Practice 1 (Semester 1)

- [Research Methods in Practice](https://benwhalley.github.io/rmip/data.html): Data handling, [fitting lines](https://benwhalley.github.io/rmip/regression.html) - _scatterplot with best fit line_ , **converting Likert scales from text to numbers**, **reverse scoring scale items**, multiple regression.

## PSYC520 Research Methods in Practice 2 (Semester 2)

- [Revision](../revision.html): A quick recap of key information covered in earlier courses.

- [Statistical power](../power.html): How to calculate the statistical power of experiments. 

    - [More on statistical power](../effsize_from_papers.html): A deeper discussion on statistical power, including: (1) relation between statistical power and the replication crisis, (2) better standards for statistical power, (3) how to improve effect size, (4) estimating effect size from previous work.

- [Data preprocessing](../preproc.html): Getting data from lab-based (OpenSesame)
  experiments into a format closer to something you can actually analyse, in
  five steps: loading, selecting, filtering, summarising, and combining. Also covers combining data frames, renaming columns, and using **loops**. 
    - [More on preprocessing](../more-on-preproc.html): A slightly more advanced worksheet, covering adding columns to a data frame, and subsetting strings.
    
- [Within-subject differences](../anova1.html): Data preprocessing (pivoting and
  mutating). One-factor within-subject Bayesian ANOVA. Pairwise comparisons, multiple comparisons.

- [Understanding interactions](../anova2.html): Learn what an interaction is, and
  learn how to do line plots at the same time.

- [Factorial differences](../anova3.html): Two-factor Bayesian ANOVA (one within,
  one between), plus advice on: pairwise comparisons, better graphs, reporting Bayesian ANOVA, and ordinal (i.e. ordered) independent variables.

# Stage 4

## PSYC605 Research Project

- Data management

    * [Data management](../data-github.html): Anonymity and privacy, good and bad file types, creating and sharing a private github repository, adding a repository to Rstudio, adding files to github using Rstudio, modifying and updating files, git log as your logbook, branching, recovering an earlier version of a file.

- Preprocessing

    * [Data preprocessing for experiments](../preproc-experiments.html): De-duplicating data, excluding participants, log transform.

    * [Data preprocessing for scales](../preproc-scales.html): Handling missing data, calculating scale scores, tidying survey data.
    
- Descriptive statistics

    * [Better tables](../better-tables.html): correlation matrix, custom table of descriptive statistics.

    * [Better graphs](../better-graphs.html): publication-quality graphs showing both central tendency and variability (or uncertainty) of your data, including: line plots, distribution plots (density, violion, half-violin), box plots, and confidence intervals. Suggested plots for one- and two-factor designs, within-subject, between-subject, or mixed designs, and with ordered and unordered variables. Discussion of common bad plots to avoid (bar plots; confusions over confidence intervals). Pairs plot for correlational designs. 
    
    * [Analysing scales](../analyse-scales.html): Cronbach's alpha.

- Bayesian inferential statistics 

    * [One-sample Bayesian t-test](../one-sample.html): Comparing a single-group sample of data against a population mean. 

    * [More on Bayesian ANOVA](../anova4.html): More on two-factor Bayesian ANOVA.

    * [More on regression](../more-on-regression.html): Multiple regression with more than two predictors, hierarchical regression, evidence for individual predictors.

- Traditional inferential statistics

    * [Traditional ANOVA](../more-on-anova.html): p-value based, approach to ANOVA.

    * [Traditional non-parametric tests](../non-parametric.html): Mann-Whitney U, Kruskal-Wallis H.

