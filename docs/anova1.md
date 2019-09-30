# One-factor ANOVA

Work in progress, here's the plan:

- Uses a large dataset provided to student. 

- Revision of b/subj t-test and Bayesian equivalent.

- Introduce within-subject versions of same. 

- Introduces within/subj ANOVA and Bayesian equivalent as an alternative method
for doing what we did with a within/subj t-test.

- Demonstrates how to do this with same dataset. 

- Explain an F-ratio as conceptually a similar thing to a t-value i.e. a
ratio of the size of the difference to the size of the variability. 

- Show how to pick out the figures needed for a standard report of e.g. F(1,
243) = 2.12, p < .001.

- Explain why we'd bother with something that's so similar to a t-test - two
reasons: (1) To have more than two nominal levels (covered later in this
worksheet), (2) to look at more than one factor at the same time (covered in a
later worksheet).

- Demonstrate one-factor w/subj ANOVA and Bayesian equivalent with a different
  large dataset with 3 nominal levels.

- What it means to have a significant result when there are more than two
nominal levels in the factor.

- Demonstrate use of subsetting and a t-test/BF to look at a specific pair. 

- Discuss the rapdily increasing number of pairs in a set of
items, and the problem of multiple comparisons. 

**Remainder of the session focusses on NHST only, for brevity**. There are equivalents in Bayesian statistics, but dealing with them is beyond this course.

- Introduce Bonferroni as simple (but conservative) way to deal with multiple comparisons.

- Show how to do Bonferroni in R. 

- Describe sphericity assumption of ANOVA (pragmatically, rather than with
deeply underlying theory).

- Present GG and HF as ways of compensating from divergence from this
  assumption.

- Focus on how to use within R rather than details of how it works (although
give some abstract sense of what these corrections do). 
