# General thoughts

To form the basis of a workshop, these Section 6 worksheets need at least one exercise i.e. something that goes beyond direct cut-and-paste.


# Preprocessing scales

OVERALL - I thought this was pretty good, but the reverse scoring can and should be done much more simply.

## Getting started

- I wondered why you didn't just use the rminr-data project here, rather than creating a new project? This would avoid having to copy across from one project to another, which they haven't done before and is a bit under-explained in your worksheet.

- More generally, because rminr-data is a git repo, they're going to have to 'pull' to get these files (at least this year), because they wouldn't have been there when they dowloaded the repo back in Stage 2. 

- You say `state-self-esteem.sav` but I think you mean `sses.csv` ?

## Selecting data

- I'm a bit worried about the de-anonymization potential of this data - we have IP adress, Browser, age, gender, Stage (with course and university perhaps guessable?). It's particularly a problem because this file is publicly available! I think you need to remove at least IPaddress and Browser from this raw data file i.e. from the repo, not just via a select command.

- Don't change from familiar syntax unless you have to. So it's:

`dass21_raw <- dass21_raw %>% select(partID, Age:DASS21)`

not

`dass21_raw <- select(dass21_raw, partID, Age:DASS21)`

## Calculating subscale scores

I suggest:

```
dass21 <- dass21 %>% 
mutate(dass21, depression = rowSums(dass21[4 + c(3,5,10,13,16,17,21)]))
```

which is easier to read, and keeps the pipe syntax they're used to. Also note that you should avoid long lines (longer than 80 characters) for readability, especially on small screens, but also more generally.

## Tidying survey data

There's some quite neat stuff there that I might use in my own scripts!

One thing, though. I think I can see why you split into two dataframes - makes it easier the way you're doing it to add the 'time' factor. However, subsequent commands would be quicker to run if you then did

```
sses_raw <- bind_rows(sses_pre_raw, sses_post_raw)
```

## Reverse scoring

There's a much simpler way to do this in base R that doesn't involve having to teach people about functions inside functions:

```
reverse_questions <- c('q2', 'q4', 'q5', 'q7', 'q8', 'q10', 'q13', 'q15', 'q16', 'q17', 'q18', 'q19', 'q20')

sses_rev <- sses_raw
sses_rev[,reverse_questions] <- 4 - sses_raw[,reverse_questions]
```

## Grammar typo: 

" now looks has a depression"
"We’ll demonstrate this more advanced preprocessing the other dataset "
"the data will be easier to analyse if rename the columns."
"This is indentical"
"indcates"

# Analyzing scales

- Doesn't really explain what Cronbach's alpha _is_. It is, at heart, a measure of the extent to which responses to different questions on the same scale co-vary (informally, 'correlate'). To the extent that these questions are meant to measure the same thing, we'd expect the answers to co-vary. There should be some exposition of this form see e.g. how correlation or inter-rate reliability is introduced in Stage 1 materials. 

- I think you also need some conventions. What does the field consider a 'good' or 'adequate' or 'poor' alpha? Of course, caveat the conventions, but still give them. 

- I think you probably also need to mention some problems with the measure, in particular that alpha is affected by the number of questions on the list, so long questionnaires look more reliable, even if they aren't. 

- It doesn't seem to make much sense to apply Cronbach's alpha to the SSES overall, because it has subscales. Surely, one should apply it separately to each sub-scale?

- It also doesn't seem to make much sense to calculate alpha separately for each condition of your experiment (although it's hard to tell, as you never explain what the conditions actually are).

- Uses `psy` library, which isn't part of the RStudio install. We can get this updated eventually, but for now you'll need to add instructions about `install.packages`. 

- I think you've over-complicated this for the target audience. For example, this seems much easier to explain and use:

```
sses %>% select(q1:q20) %>% cronbach()
```
