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

4p1

I'm still with you at this point, but what about a #powerful #callback along the lines of "Many of the limitations of traditional power calculations highlighted so far can be addressed by doing power calculations using Bayes Factors."

4.1p1

Too much background info? Maybe shorten and cite for the really keen.

4.1algorithm.2

(40 participant)

Do you mean "40 per participant"?

I have 2 general thoughts on 4.1:

I would be tempted to leave a lot of the details until you explain the step later on. e.g.

"3. Does t-test for subsets return a Bayes Factor between 1/3 and 3?"

Use the same (short) names of the algorithm steps as sub-headings under 4.2. This way you signpost what's coming in 4.2
in 4.1, and after you've understood 4.2 you can consolidate your knowledge by look at the summary algorithm and ensuring
you (now fully) understand what's happening in each step.

4.2p1

I didn't understand this:

"If you need it for your own project, look at this material."

That 3d Necker cube is twisting my melon, man. Is it needed here or can you just use the traditional one?

4.2.1

I would be a bit more prescriptive here, to circumvent having to do basic R support in the session e.g.

* Create a new project called power-bayesian
* Add the code in this worksheet to a script called necker.R
* Right click on [the data I made](url) and save the CSV file
* Create a folder called `data` in your R project
* Upload the CSV file to the `data` folder

Maybe add some more comments in each grey box for the copy-paste brigade (of which I'm a member!).