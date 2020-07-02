# Data preprocessing for scales

## General

- As per email, drop 'reverse score' section, and add link in Introduction for Ben's materials on how to do this.

- I quite liked Exercise 1. Non-trivial, I'd say, but that I think is about the right level for Stage 4.

- Exercise 2 has a bit of a gotcha - the instructions imply you need 26:45, but actually you need 25:45. Perhaps this is intentional? If so, maybe add a hint? So, after showing the desired output write somehting like:

Hint: Getting an error? Don't forget you also need to include the column containing the experimental condition.

## Selecting data

The instructions and title here are misleading. You say "selecting data" and that "Our first step will be to remove columns". But actually the first step is to load the data. So either have a separate section for loading the data, or call this "Loading and selecting data" and have text specifically dedicated to the load operation (it needn't be much, but there should be something). 

## Handling missing data

The final table in this section has no explanatory text - there should be some.

## Tidying survey data

"We save the output of the pipeline in " - I don't think you've explained what you mean by 'pipeline'? You should.

"column 25 is the participant’s condition." - Explain 'condition' 

"making it a factor" - you should link to somewhere that explains what a factor is e.g. anova1.html#anovaWS

Overall, this section was quite dense and I wonder whether it would be easier on the learner if you take the five operations one at a time, show the intermediate results and explain the commands one at a time, and then - finally - show how all 5 can be combined into a single pipeline.

## Standard syntax

As previous mentioned, keep to the pipe syntax, which we've used throughout the rest of these worksheets. So:

dass21_raw <- dass21_raw %>% select(partID, Age:DASS21)

not

dass21_raw <- select(dass21_raw, partID, Age:DASS21)

Similarly:

dass21 <- mutate(dass21, depression = rowSums(dass21[4 + c(3,5,10,13,16,17,21)]))
dass21_total <- select(dass21, partID, Age, Gender, depression)

and 

sses_pre_raw  <- select(sses, 1, 5:25)

## Beauty

Don't have code wider than 80 characters. Use line breaks if necessary.

## Reproducible science

I'd prefer if these datasets used meaningful entries - e.g. male / female rather than 1,2. and named rather than numbered experimental conditions. Basically, I'd rather not encourage meaningless entries as it makes the data harder to share and reuse. Note that in effect we're assuming that all columns are meaningful initially, but we convert the Likert responses to numbers for processing. So, the condition and gender columns should be likewise meaningful.

## Links

- Please refer to previous worksheets as worksheets, rather than as modules - this makes the material clearer and more re-usable outside our particular course (important given these materials are specifically designed for this kind of reuse. So:

Not this:

Refer back to the earlier module if you need a reminder of how to convert text responses to numbers.

but this:

Refer back to the [Cleaning up questionnaire data]() worksheet if you need a reminder of how to convert text responses to numbers.

## Typos

Some things I spotted:

some degree of agreement each question 

to ensure that it is valid and reliable measure 

truely - https://www.grammarly.com/blog/truly-truely/

rather than some other constructy

common techniques which you are likely -> common techniques you are likely

# Analysing scales

## Testing scale reliability

Use more paragraphs. e.g. split at "A few cautionary.."

"Cronbach’s alpha is a value from 0-1, with higher numbers indicating a more reliable scale"

I would say "with higher numbers often considered to indicate a more reliable scale (although this is [debatable]()). And link to something like:

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2792363/

"First, alpha increases as more questions are added to a scale, so it would artificially report higher levels of reliability in a scale with lots of questions."

Yes, I think we can just say this without explaining it, but you should link to a source, e.g.  

https://data.library.virginia.edu/using-and-interpreting-cronbachs-alpha/

"Second, if your scale consists of subscales (for example it measures depression and anxiety, as well as stress) you should calculate alpha for the subscales and not the whole scale."

Yes, agreed. But explain more, e.g. 

This is because subscales measure different things, and hence we would not expect them to strongly co-vary. For example, although depression and anxiety co-vary to some extent, we can imagine someone who is depressed but not anxious, or anxious but not depressed. So, we expect that our anxiety and depression subscales are measuring different things, which means even if our questionnaire was a good one, we would not necessarily expect high co-variance between these two scales.

"Finally, reverse-coded items will decrease the value of alpha,"

Yes, but to emphasize, "will artificially decrease" 
 
"Reverse coding was covered in the Preprocessing scales worksheet."

Update link - see previous worksheet notes.

"As you will recall, this experiment used the SSES to measure self-esteem before and after a mental imagery intervention. This was a 2 (time) x 3 (condition) mixed design, with the following experimental conditions:"

This explanation should go in the previous worksheet (see earlier notes). You do not need to repeat it here because you do not use condition in this worksheet.

## Cronbach alpha calculation

I think I said this already, but please simplify this and use standard syntax, like this:

sses_raw %>% select(q1:q20) %>% cronbach()

Also, note that once you drop the reverse scoring from the previous worksheet, you'll need to add:

sses_raw <- bind_rows(sses_pre_raw, sses_post_raw)

to this one.

## Exercise

Quite good, I thought :-) Perhaps you might hint as to where one can find which questions make up the other two subscales?

## References

The link is broken.

## Typos

I found it hard to wind down -> find, perhaps?

suggestive on an unreliable

the specific sale 

the scaled you are using. 


