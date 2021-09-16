All just suggestions. Hope they help. I know I'm not reporting typos but it's worth doing a final check for these as I
noticed a few.

1p2

I found the current wording a bit confusing, try

"You should be able to follow this worksheet if you understand the following materials:"

2p2

"One exception was [the worksheet where statistical power was introduced](https://www.andywills.info/rminr/power.html)..."

3p2

"Traditional techniques to estimate sample size are also limited. For example, they don’t allow you to plan for the null hypothesis being true. This is because p-values don’t let you conclude from null results."

I found "plan for ..." a bit hard to follow. If a traditional power calculation says your n is large enough to reliably
reject the null when p < .0x, and you get a null result, you can't reliably accept the null? If so, you might need a
sentence or two to explain why.

3p3

Do you mean "conflicting" evidence from > 1 underpowered study?

3p4

Estimates of what?

3p5

Maybe moving p5 nearer p2 will help to clarify the point you're making there.

3p6

I've been advised to avoid language like "Another important point to note is ...". Maybe

"Rather than a single value, effect sizes are best thought of as a range of possible values with different probabilities (Kruschke). However, ..."

LD: Nice!

4p1

I'm still with you at this point, but what about a #powerful #callback along the lines of "Many of the limitations of traditional power calculations highlighted so far can be addressed by doing power calculations using Bayes Factors."

LD: Great suggestion! #powerful #callback

4.1p1

Too much background info? Maybe shorten and cite for the really keen.

LD: I will keep it in anticipation of people outside of our cohort using it.

4.1algorithm.2

(40 participant)

Do you mean "40 per participant"?

LD: No, 40 participants. Amended.

I have 2 general thoughts on 4.1:

I would be tempted to leave a lot of the details until you explain the step later on. e.g.

"3. Does t-test for subsets return a Bayes Factor between 1/3 and 3?"

Use the same (short) names of the algorithm steps as sub-headings under 4.2. This way you signpost what's coming in 4.2
in 4.1, and after you've understood 4.2 you can consolidate your knowledge by look at the summary algorithm and ensuring
you (now fully) understand what's happening in each step.

LD: Would have a really nice structure. I will try to do it.

4.2p1

I didn't understand this:

"If you need it for your own project, look at this material."

That 3d Necker cube is twisting my melon, man. Is it needed here or can you just use the traditional one?

LD: Melon #horsename. Also, amended, took out the second cube.

4.2.1

I would be a bit more prescriptive here, to circumvent having to do basic R support in the session e.g.

* Create a new project called power-bayesian
* Add the code in this worksheet to a script called necker.R
* Right click on [the data I made](url) and save the CSV file
* Create a folder called `data` in your R project
* Upload the CSV file to the `data` folder

Maybe add some more comments in each grey box for the copy-paste brigade (of which I'm a member!).

"but that is a bit of a cop-out" - why? language too informal?

4.2.2p1

"Cohen’s d=0.217" doesn't match *d* in the output above.

LD: got rid of effect size.

4.2.2p2-3

"The first thing to jot down is to decide how our dependent variable will look like.

We know that we will have count data, because our dependent variable is the count of how many switches participants made between having the lower-left or upper-right square as the cube’s front side."

I think you could be more concise here e.g.

"Our dependent variable will have count data, because it is the count of how many switches participants made between having the lower-left or upper-right square as the cube’s front side."

Why is `rbinom()` most suitable?

LD: `rbinom` is suitable because each participants raw data is a Bernoulli distribution, where each "trial" has a binary outcome - see Necker Cube. Therefore we want to generate binomial data, not a gaussian distribution per se.

LD: 2021-09-16 Amended. Decided to use `rnorm` instead of `rbinom`, and change the dependent variable to the proportion of switches. This is a dummy example, so I am not worried about how the proportions were calculated - trying to simplify things.

4.2.2p5

"Note that size has to be same for both conditions." I need reminding what the 2 conditions are here (drug vs. nothing?)
as the design was quite a few paragraphs back.

4.2.2p8

Might be worth `ideal_data %>% head(20)` before this para to so the reader can see the results of the last few lines.

Ah, I see I was wrong about design: within Ps before/after. On reflection, these 3 columns with some example data would be useful when you introduce the study earlier.

4.2.3p1

I would just summarise what a function in one sentence (just use the last sentence of the para?) and link to Andy's
explanation "for a more detailed explanation of functions". BTW, the link
(https://www.andywills.info/rminr/awdiss.html#funcloop) didn't work for me, possibly because I'm looking at a preview of
your worksheet.

4.2.3p2

I think rhetorical questions get in the way of "hands-on" sections.

LD: Amended

4.2.4p1

"Beware that there are no special equations or complicated math involved here."

This sentence is a bit odd. It's a bit like saying "LOOK OUT! There are no #baers here."

LD: No #baers should be an issue. Amended.

4.2.4p2

I would be consistent and use "simulate" rather than "imitate".

I like the #callback to the central limit theorem.

4.2.4p3

Omit "object". They don't need to worry about implementation.

4.2.4p5

`mutate` (i.e. all function names in backticks)

I think you need a bit of explanation of how `map_dbl()` is using the function they wrote. Also point out in text (as
well as comment) that **this will take about 2-3 minutes on the RStudio server** (time how long it takes as this was my
unscientific estimate).

4.2.4

Add a comment to explain the code in steps 1-4 e.g. # calculate power at different sample sizes

"In frequentist methods, people usually expect your study to have at least 80% power. If we accept that convention for this as well, we can settle on a sample size of 50." Why 50? Explain. (Orient lazy people towards row 5!)

LD: Amended.

"This is the exact moment, when you might want to stop and think about how many participants you might potentially end up excluding. This depends a lot on the nature of your experiment and the characteristics of the population. If you have a learning criterion, you can end up excluding 30% of all participants. It is not uncommon to add 15 more participants on top of that 50, just to be safe."

I didn't follow this. Are you talking about testing more participants based on an expectation of excluding participants according to some criterion specific to an experiment?

LD: Amended. Removed for brevity.

5.

* Does this use the same `monte` data?
* I certainly had to think about how to do this, which I guess means it's a good test of understanding.

LD: I will change the data they need to use.
