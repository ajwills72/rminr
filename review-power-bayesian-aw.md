# Review notes

## Overall

Personally, I found this a really useful introduction, but I suspect it may be a bit too demanding for our students. I make some specific comments below that might help with that, but other than those things, I think step 4.2.2 is conceptually going to be the killer for them. I also think it's where you get a bit unclear.

The thing I'd do here, for simplicity and clarity is I'd use the mean and SD from the 'real' data and put that into `rnorm` to generate data. You might want to make the 'real' data look a bit more normal (particularly 'after') and do a group density plot to visualise what you're doing.

LD 2021-09-16: Amended.

I'd also stick to a b/subject design as your generation method ensures zero correlation between conditions, which is almost never the case for w/subject data. You might want to add an extension sheet to cover how to simulate w/subj data such that you estimate and preserve the correlation.

LD 2021-09-16: Amended.

Your command of English was generally really good, but there are some minor grammatical errors, I assume you have not screened for those yet.


## Section notes

### S2

- Telling our students they have 'coding skills' may scare a lot of them.

LD 2021-09-16: Amended.

### S4

You'll need to explain the equation in S4 in words.

LD 2021-09-16: Amended.

### S4.1

**e.g.** 40 participants? Is the Necker Cube on the right also meant to be bistable (it isn't for me)?

LD 2021-09-16: Amended.

### S4.2.1

- you probably should remind people that they should enter the code into a script. Give them a name for the script. Tell them to use the rminr-data project, and update that project and your worksheet so it works that way - I've given you access, see [link](https://github.com/ajwills72/rminr-data/invitations). Look at any of the 'going further' worksheets to see how this is done.

- Also, take care with directories - in your current form, the student will not have a `data` subdirectory!

LD 2021-09-16: Amended.

- You have something odd with your Rmarkdown in that it's generating `##` for output, which it should not. It'll be a setting. Look at the top of the .Rmd files in RMINR there'll be something that stops this happening (can't remember what, too long ago!)

LD 2021-09-16: Amended.

- You should explain the data you've loaded a bit i.e. include a brief codebook in the worksheet, as per most RMINR worksheets.

LD 2021-09-16: Amended.

- You use `ttestBF` in its within-subject format. They have never been taught this. I recommend using Bayesian ANOVA instead if you can, which they are familiar with. If there's a strong reason (e.g. code running speed) you can't do this, you'll have to explain this (to them) new command.

LD 2021-09-16: Amended.

- I don't see the point of the Cohen's d calculation. You don't seem to use the figure you calculate and I don't think you need it. I think you should drop it. If you do keep, here's a bunch of things you'll also need to fix:

    - There's something really odd with your cohen.d command which causes an error. What is that `| Subject(ppt)` doing there? I don't understand how you've ended up with a Rmd file that has an error-generating code but still produces the output? (I should say, I didn't generate your HTML, I took it from the repo.

    - You should refer back to the effect size worksheet when you do Cohen's d. And that's an issue, because they've not been taught w/subj Cohen's d in class, because there's about 5 different measures for this and different packages calculate different ones (the 'more on power' worksheet digs into this a bit more, but most will not have rad that).

LD 2021-09-16: Amended. Dropped effect size from discussion.

### S 4.2.2

- I think you should use `rnorm` and explain that. But is you need to stick with `rbinom` then you need to dwell more on what `rbinom` is doing for the students' benefit. Basically, it's flipping a biased coin 100 times.

LD 2021-09-16: Amended. Introductin students to a Bernoulli experiment seems like really pushing the limits of a workshop.

-  Your ideal data has a **much** larger effect size than the data you're trying to mimic. Try this:

`cohen.d(fluctuations ~ condition, data = ideal_data, paired = TRUE)`

LD 2021-09-16: Amended. Generated and original data has same effect size.

### TODO S 4.2.3

- House style, but when linking to other worksheets within RMINR, don't name the authors of that worksheet. LD 2021-09-16: Amended.

- There's an awful lot going on in that function, you may need to unpick it a bit more for the reader. Look at e.g. the Perruchet effect case study for an example of how to build up to using a function.

- And also, you're using base R subsetting which the students haven't been taught, you should use tidyverse subsetting. LD 2021-09-16: Amended.

### S 4.2.4 TODO

- Link to tibbles LD 2021-09-16: Amended.

- map_dbl is also a new one for this audience. You'll need to explain it.

- Give a sense of how long the simulation will take (in minutes). LD 2021-09-16: Amended.

- 'do the math' is an American colloquialism, please keep to UK English. LD 2021-09-16: Amended.

- You're gonna have to explain the code for that plot, step by step. Link back the appropriate previous worksheets.

### S 5

- I think your exercise should use a different experiment to the worksheet to date. You can use one of the datasets in `rminr-data` and link to the worksheet that used it first for an explanation. Then the students will have the experience of setting up simulated data from real data, which seems key to being able to make use of this technique in their own dissertation.

LD 2021-09-16: Amended. Good idea. I decided to use an inconclusive production.csv from rminr-data. It was in the Revision.
