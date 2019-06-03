## Description of data

`wordnaming.csv` is simulated data for a word naming experiment. In this experiment, participants just had to name (i.e. speak out loud) each written word as it appeared on the screen. However, on every trial, there was also a picture. Sometimes the picture matched the word (e.g. the word 'car' and a picture of a car). This is called a _congruent_ trial. Other times, the picture and word were different (e.g. the word ' boat' and a picture of a carrot). This is called an _incongruent_ trial. Participants were instructed to ignore the picture, but were they able to do so? If they can't help processing the picture, then they should be slower to name the word on incongruent trials than on congruent trials. 

Some psychologists have suggested that learning how to meditate can improve people's ability to ignore irrelevant information. On that basis, we might expect those who have been trained how to meditate will show a smaller difference in reaction times between _congruent_ and _incongruent_ trials, compared to people who have not received such training.

In this experiment, 140 participants were randomly allocated to the meditation training condition, with another 140 assigned to a control condition (relaxation training). Within each group, half the participants were male and half were female. Each participant completed 60 trials of training. They did 30 trials, took a short break, and then did another 30 trials. This gives us 16800 trials in total. On each trial, the participant either named the word correctly, or they didn't. Either way, they took a certain amount of time (measured in milliseconds) to name the word. 

Here's what each of the columns in the data set contains:

| Column | Description                             | Values             |
| ------ | --------------------------------------- | ------------------ |
| subj   | Unique anonymous participant number     | 1-280               | 
| sex    | Biological sex of the participant       | "male", "female"   |
| medit  | Whether the participant has had meditation training | "meditate", "control" |
| block  | Block of trials                         | 1-2                |
| trial  | Trial number (per participant)          | 1-60               |
| word   | The word presented on this trial        | e.g. "cup"         |
| pic    | The name of the picture presented       | e.g. "cake"        |
| cond   | Experimental condition - congruent or incongruent trial? | 'cong', 'incong' |
| acc    | Accuracy of naming response             | 1 = correct, 0 = incorrect |
| rt     | Reaction time                           | in milliseconds    |

## Loading the data

`namdat  <- read_csv("wordnaming.csv", col_types = "ffffffffii")`

`col_types` will be new to you. To understand it, you need to understand a bit about _variable types_. 

- **integer** (i): Some of the data are numbers. For example, `trial` is a number, but it can only be a whole number (e.g. you can't have trial 24.352, it's either trial 24 or trial 25). We call these kinds of numbers _integers_. Similarly, our measure of reaction time is to the nearest millisecond, so `rt` is also an integer.

- **factor** (f): Some of the data are _factors_. Factors are basically anything where you can be sure the same value will occur more than once. `cond` is an example of this, because it can only ever be two different things: _cong_ or _incong_. The same is true for `subj` because each subject does more than one trial.

There are other types of variable, but we won't cover them in this worksheet

So, putting those two things together, `col_types = "fffffii` means that the first five columns of data are factors, and the last two are integers. Telling R this helps it make the right decisions about your analysis later.

## anovaBF

`anovaBF` works identically to `ttestBF`.

## aov_car: Explanation of command

`aov-car` works similarly to `ttestBF`, the only difference is that you have to tell it which column of your dataframe contains the subject numbers. This is what the `+ Error(subj)` part of the command does. 

## Repeated-measures test

In a repeated-measures design, each participant contributes at least two data points. In this case, those are their mean RT on incongruent, and congruent trials. 

The advantage of a repeated-measures design is that it allows us to control for individual differences, and hence answer our question more efficiently (i.e. with fewer participants). In this case, our measure is reaction time, and different people vary quite a lot on how quick they are at this kind of task. In a between-subjects design, this means we can end up needing to be...

`anovaBF` works similarly to before, except that it has to be told that this is a repeated-measures test, and where to find the subject numbers. It needs to be told this in two different places. First, it needs to be told in the `formula` part ... `+ subj`. It also needs to be told it in `whichRandom`. 

You can also do an NHST version of this test with `aov_car`. The command has a somewhat different format to `anovaBF`. For `aov_car` you tell it that `cond` is a within-subjects factor by adding the name of the column containing the within-subjects factor ...  `/cond` 

## Interactions

### 1-between, 1-within

`anovaBF` can handle more than one factor using the `*` character. We tell it we want to look at both meditation and condition by using the instruction `medit*cond`. We still need to keep the bits that tell it which column contains the subject numbers. 

`anova_car` can also handle more than one factor, but again the command structure is somewhat different to `anovaBF`. For `anova_car`, where you put the column names depends on whether it is a between-subjects factor or a repeated measure. We saw how to enter a repeated-measure factor in the last example. Between-subject factors are entered _before_ the Error part of the command and separated by a `+` sign ... `medit +`

### 2-between

`anovaBF` can handle more than one between-subjects factor, too. As before, we use the `*` character to separate the factors. One important thing to note here is theat **there are no within-subjects factors**. It's really important in this case to _not_ include anything referring to the column with the subject numbers. 

`anova_car` can also handle more than one between-subjects factor, but again the command format is different to `anovaBF`. In `anova_car` you **do** have to keep on telling it which column contains the subject numbers, even when there are no within-subject factors. This is a bit of an annoying quirk of the `afex` package (there are reasons for it, but we won't go into them here). 

### 2-within

