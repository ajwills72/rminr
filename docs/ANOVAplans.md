# Outline

## Semesterization
Runs in Semester 2, so has a 3-week break after Week 7.

## Basic structure
Students work in groups of 6 within workshops of 80. In each of 12 weeks, students have a 2-hour _high-intensity_ workshop (teaching and closely supervised group work), followed by a 2-hour _low-intensity_ workshop (loosely supervised group work towards pre-specified goals) for a total of 48 student contact hours across the semester.

In this time they go through a full research cycle twice. So, they go from a topic, to a hypothesis, to building an experiment, to collecting data, to analyzing it, to a group presentation, to modifying their experiment, to collecting more data, to analyzing it again, to writing a report.

## Example of topics and questions
A topic might be 'Basic processes of learning'. Within that topic, there are 2-4 sub-topics. For example:

1.  Relationship between surprise and learning
2.  Is learning sudden or gradual?
3.  What determines whether we learn smart rules or dumb similarity?

I've provided some [example slides](learning-topics.odp). 

## Data collection
Data collection works by 5/6 of each student group participating in six
experiments. For 30min studies, this takes 3 hours plus shifting time, so
easily fills two sessions. It results in N=25 for each experiment. For reasonable
power the first data collection should therefore be a within-subject design with a
reasonable effect size. The second data collection should in some way permit
the inclusion of a b/subj effect (even if that's just a cross-experiment
comparison). 

## Employability skills
Communication skills. Group working to deadline. Project planning / timetabling. Critical thinking / analysis.

## Stats taught
One-way w/subj ANOVA. 2x2 ANOVA (1 between, 1 within). Bayesian alternatives.

## Assessment method
Group oral presentation (20%). Writen report (80%). Psyc:EL competency tests (pass/fail)

There are a larg-ish set of pass/fail short competency tests, each can be taken an indefinite number of times until an end-of-semester deadline, you have to pass 80% of them to pass the pass/fail component. They are designed to be completable during class time, so there is support.

# Resourcing

## Staff
There are two main teaching roles:

- _Teacher_: A member of faculty, responsible for developing the materials and for teaching in class.

- _Teaching Assistant_ (TA): Could be a Ph.D. student, TARA, or faculty member. Responsible for teaching in class and marking reports. 

To teach a high-intensity workshop to a group of 80 students, we need 1 teacher and 4 TAs. To teach a low-intensity workshop, we need 2 TAs. TAs in the low-intensity sessions have to be a subset of the TAs in the high-intensity sessions, for continuity. 

For a cohort of 240 students, each workshop has to be delivered three times (3 _Instantiations_). I recommend different Teachers and TAs for each Instantiation.

## Computing
- PC, Mac, or Linux computing, **one machine per student**, is needed for all session. Some combination of bring-your-own, and university-provided will likely be needed.

- Students will need accounts on RStudio Server.

- Students will need PsychoPy on every machine. 

# Weekly schedule

## Week 1<a id="sec-9-1" name="sec-9-1"></a>

### Session A: Select a topic<a id="sec-9-1-1" name="sec-9-1-1"></a>

0 min - The Teachers have already prepared, between them, three topics. Each Teacher
must have a good grasp of all three topics. Each topic gets a 15 minute introduction,
delivered by one of the Teachers. 

60 min - The students get a 20 minute 'break', during which time they can
discuss the topics with each other and with the Teachers and TAs.

80 min - The students select a topic by going to stand at a particular point in
the room. 

85 min - Students are told to self-organize into groups of between 5-6
members. Each group is going to select a question within the topic to study for
the next 11 weeks, so it makes sense to group on similar interests and
friendship. The Teachers allocate TAs to groups. Where possible, any given TA should
be covering just one topic. 

90 min - TAs do introductions for their groups, and talk to them
about each of the 2-4 sub-topics in this topic area. Students are given
questions and assigned reading.

105 min - Students are told the homework: 

(1) For session 1B: Follow DLE instructions to install R, Rstudio, and PsychoPy
on their personal laptops.

(2) For session 2A: Read the assigned papers, 

(3) For session 2A: Decide in your group which topic you are going to
invesitgate

110 min - Finish.

### Session B: Methods bootcamp<a id="sec-9-1-2" name="sec-9-1-2"></a>

Materials: 

1.  A basic-as-possible PsychoPy script in a ZIP archive that implements a
    short conjunctive visual search experiment with two set sizes.

2.  A basic-as-possible R script to produce a correct present/absent RT by set
    size (5, 20) graph from an individual's data. Use tidyverse.

0 min - A Teacher gives a 20 min presentation on basics of PsychoPy from a
user perspective i.e.: Download and install (for anyone who didn't do this
homework). Initial becnhmarking. Zipping and unzipping. Loading a
script. Running it. Entering subject number. Locating the 3 data files (csv,
log, psydat). Keeping a backup. Inspecting the CSV file - rows are trials,
columns are info. Calculating a result from a CSV file by hand.

20 min - Short period while students and TAs get into roups and anyone
who was absent in session 1 is matched up with groups that have fewer than 6
members.

25 min - Students individually go through the demonstrated steps, using a ZIP
archive downloaded from DLE. TAs keep records of who has done this
successfully and hence has a pass mark for this exercise (this could possibly
be done through the online lab book). 

55 min - Break

65 min - A Teacher gives 20 min presentation on basics of data processing in
R. This is revision from Stage 1. Download and install R and Rstudio. Describe
the four-panel interface of R. Show how to: (1) Load a CSV file, (2) Select the
relevant columns, (3) Give those columns nice names, (4) aggregate the
trial-level data into a subject-level summary. (5) Plot a simple graph.

85 min - Students individually go through the demonstrated seteps, using a ZIP
archive downloaded from DLE. TAs record passes (perhaps via online lab
book system). 

105 min - Students are reminded of homework from Session A, and encouraged to
play around with R and Psychopy before next week. Also, the following
additional homework is set:

(4) Send the three files from your run of the PsychoPy experiment to your TA
 by email (this again could be done via online labbook instead if such a
system were avaialble). This is also a recorded-pass exercise.

## Week 2<a id="sec-9-2" name="sec-9-2"></a>

### Session A: An experiment is born<a id="sec-9-2-1" name="sec-9-2-1"></a>

0 min - Short period while students get into groups and the previously-absent
join groups.

10 min - Students discuss with each other, and their TA, what they have
read and brainstorm on possible questions one might ask about this topic.

40 min - A Teacher gives 20 min presentation on how to get from a sub-topic to
an broad experimental design (1st half of exp-design slides)

60 min - With support from TAs, sub-groups select a question and plan a
broad experimental design. 

100 min - The group nominates a student scribe to write down their idea in
no more than one page of A4 and email to their TA and every member of
their group (alternative: lab book).

105 min - A Teacher sets homework:

(1) For session 3A: Each member of the group finds a **different** paper relevant
to their topic and prepares to talk to their group about it in session 3A.

### Session B: Handling large data sets<a id="sec-9-2-2" name="sec-9-2-2"></a>

0 min - A Teacher reveals resource on DLE with 200+ participant files for the
1B experiment (these were collected in Week 1 from students). Runs R script from
week 1 on a few of them to demonstrate variability in psychological
data. Demonstrate development of that script which loads in all 200 files,
makes one big data frame. 

20 min - Get into groups

30 min - Pass/fail assessed individual exercise replicating the steps in the
Teacher's presentation.

50 min - Break

60 min - A Teacher presents on taking differences at a subject-level as a
good way of getting a better signal. Ignores present/absent, focusses on set
size. Demonstrates R script to take differences and plot histogram thereof. Use
this to revise concepts of mean and variance. Demonstrate mean and variance
calculation in R. 

80 min - Individual practice of above (pass/fail).

## Week 3<a id="sec-9-3" name="sec-9-3"></a>

### Session A: Reading and refining the idea<a id="sec-9-3-1" name="sec-9-3-1"></a>

0 min - Get into groups

5 min - Each member of the group presents to the group for 10 minutes
on the paper they have read and how it relates to/affects their planned
experiment. Allow 5 min subsequent to each presentation for this. TA
organizes, asks probing questions, and helps students decide what if any
changes to make on this basis. TA schedules 10 minute break somewhere
within this.

105 min - The group nominates a student scribe (different persont to last
week) to write down their revised idea in no more than one page of A4 and email
to their TA and every member of their group (alternative: lab book).

### Session B: Building an experiment in PsychoPy<a id="sec-9-3-2" name="sec-9-3-2"></a>

0 min - A Teacher gives 20 min presentation on how to use Builder View on
PsychoPy to build your own experiment. Discusses the two-panel interface of
PsychoPy. Demonstrates creating an event, adding some fixed-test instructions,
adding a response key.

20 min - Individual pass/fail exercise generating instruction screen for their
experiment (this may need to contain placeholder text for now).

35 min - A Teacher presentation on the following PsychoPy concepts: CSV files
as list of trials. Text and picture presentation. Loops. Introduce task below.

70 min - Individual pass/fail exercise to generate a script to investigate
wether lexical decision RT is affected by the congruence/incongruence of a
picture. A set of picture files is provided on the DLE. 

The students have the rest of the session to complete this exercise - and also
their own time until session 4B if they need it. 

## Week 4<a id="sec-9-4" name="sec-9-4"></a>

### Session A: Finalizing the idea<a id="sec-9-4-1" name="sec-9-4-1"></a>

0 min - A Teacher gives 20 min presentation on getting from a general design
to the best specific design you can (see 2nd phase in exp-design.odt file). 

25 min - Groups with TA review their revised design and work to turn
it into a specific protocol (something specific enough it could be programmed
in PsychoPy).

105 min - Group elects scribe (third different person) to write up the
protocol and email it to all group members and TA before Session 4B
(or lab book). If they manage this before the end of Session 4A, they can start
the work for session 4B.

### Session B: Writing your PsychoPy script<a id="sec-9-4-2" name="sec-9-4-2"></a>

Goal: Have a working, bug-checked PsychoPy script ready to go for Session
5A. The tasks, which they need to divide between members of the group
include: (1) Writing the instructions, (2) Producing the CSV file(s) that
define the trials. (3) Creating the stimulus sets, (4) Building the structure
in PsychoPy. (5) Testing for bugs. (6) Checking the output is usable. 

## Week 5<a id="sec-9-5" name="sec-9-5"></a>

### Session A: Data collection #1<a id="sec-9-5-1" name="sec-9-5-1"></a>

The whole session is dedicated to being participants in the experiments of
other groups - see notes.

### Session B: Introduction to inferential tests<a id="sec-9-5-2" name="sec-9-5-2"></a>

0 min - A Teacher reminds students briefly of material covered in 2B. Goes from
those ideas of mean and variance to the ideas of expeirmental and null
hypotheses, the idea of inferential testing, and the idea of a within-subjects
t-test. Demonstrates how to get from the 200 subject data set of 2B to a p
value using R. Discusses how t-test assesses P(data|null).

30 min - Individual pass/fail doing a t-test on a different (provided on DLE)
dataset. Maybe have multiple sets of data for those who work quickly

50 min - break (work through break if not finished)

60 min - Teacher presentation on how P(data|null) is what we traditionally
calculate but almost never what we actually want to know. Generally, we want to
know whether the experimental or null is more likely, given our data. So,
P(exp|data) / P(null|data). This is different, and not related to a p-value in
any simple way. Fortuantely, it's also possible to calculate that ratio (a
Bayes Factor). Demonstrate how to do this using Morey's BayesFactor package
(Note: I'm a bit sad that this is a non-informative-prior approach to Bayes,
but one step at a time).

80 min - Individual pass/fail doing a Bayesian t-test on the same DLE-provided
data set. Maybe have multiple sets of data for those who work quickly.

## Week 6<a id="sec-9-6" name="sec-9-6"></a>

### Session A: Data collection #2<a id="sec-9-6-1" name="sec-9-6-1"></a>

The data collection continues, as per Session 5A

### Session B: One-factor ANOVA<a id="sec-9-6-2" name="sec-9-6-2"></a>

0 min - In a pretty theory-light manner, a Teacher introduces within/subj ANOVA as an
alternative method for doing  what we did with a within/subj
t-test. Demonstrates how to do this with same dataset as 5B, using 'ez' package
in R. Explain an F-ratio as conceptually a similar thing to a t-value i.e. a
ratio of the size of the difference to the size of the variability. Shows how
to pick out the figures needed for a standard report of e.g. F(1, 243) = 2.12,
p < .001. Then, explain why we'd bother with something that's so similar to a
t-test - two reasons: (1) To have more than two nominal levels (covered this
session), (2) to look at more than one factor at the same time (covered in a
later session). Then, demonstrate one-factor w/subj ANOVA with a different
large dataset with 3 nominal levels, again using 'ez' package'. 

30 min - Individual pass/fail on running a multi-level one-factor ANOVA with a
different data set (provided). Provide multiple datasets for those who are
quicker.

60 min - break

70 min - A Teacher reminds students of the NHST vs. Bayes issue from 5B, and
introduces how to run a Bayesian version of this test from the Morey package

85 min - Individual pass/fail on Bayesian one-factor ANOVA

## Week 7<a id="sec-9-7" name="sec-9-7"></a>

### Session A: Pairwise tests and GG/HF corrections<a id="sec-9-7-1" name="sec-9-7-1"></a>

0 min - Teacher presentation. Light revision of 6B, and emphasis on what it means to
have a significant result when there are more than two nominal levels in the
factor. Demonstrate use of subsetting and a t-test to look at a specific pair
in the 6B data set. Discuss the rapdily increasing number of pairs in a set of
items, and the problem of multiple comparisons. Introduce Bonferroni as simple
(but conservative way to deal with this). Show how to do Bonferroni in R.

25 min - Individual pass/fail exercise practicing these techniques

50 min - Break

60 min - Teacher presentation. Describe sphericity assumption of ANOVA
(pragmatically, rather than with deeply underlying theory). Present GG and HF
as ways of compensating from divergence from this assumption. Focus on how to
use within R rather than details of how it works (although give some abstract
sense of what these corrections do)

80 min - Individual pass/fail exercise (quite short). Remaining time for
catchup on any pass/fail assessments missed.

### Session B: Analysing and interpreting your data<a id="sec-9-7-2" name="sec-9-7-2"></a>

Goal: With support of their TA, each group performs appropriate data
processing, analysis and interpretation of their data. Group nominates a
scribe (fourth different person) to put together a written summary of the results and
their interpretation, and pass to all group members and TA before session 8A.

If this takes less than 2 hours, they can use this time to catch up on any
missed pass/fail exercises.

## Week 8<a id="sec-9-8" name="sec-9-8"></a>

### Session A: Preparing a group presentation<a id="sec-9-8-1" name="sec-9-8-1"></a>

0 min - Get into groups

5 min - TA and group reprise what they did, what they have found, and
discuss any problems/limitations of what they have done. 

25 min - TA leads discussion of examples of very clear, and very unclear,
lectures they have encountered since joining Stage 1. What do these good/bad
experiences have in common? Possible issues - Rate of presentation; incorrectly
assumed knowledge; over-crowded slides; a million facts but no big picture; a
big picture but no facts; conclusions do not cleary follow from facts.

45 min - Group sub-divides the task of writing a presentation between them. The
sections would be something like: (A) Big picture overview, (B) Introducing the
specific question, (C) Metholodgy, (D) Results, (E) Interpretation, (F)
problems and next steps, (G) Writing an abstract.  Agree an allocation of time
and number of slides each. Group takes a break at some point

90 min - Group gives their draft presentation to their TA; TA and
themselves reflect on what went well/ not so well.

105 min - TA sets homework: 

(1) Send names, title, and abstract for talk to TA by Session 8B.
(2) Refine and practice your presentation in preparation for Session 9A.

### Session B: Two-factor ANOVA, interactions<a id="sec-9-8-2" name="sec-9-8-2"></a>

0 min - Teacher introduces the concept of an interaction as a difference of
differences. They should really spend a bunch of time explaning this from as
many angles as possible (including graphical), because a lot of students find
this really hard. Probably give some examples from the published literature. 

20 min - Students work through 8-10 examples of real data plotted and tabled in
various forms, with a potted explanation of the study, and are asked to write
down whether (numerically) they show a clear interaction or not, and what the
interpretation is of these data in terms of the experiment run. TAs go
around and discuss/check a randomly selected answer with each student. If the
student gets it wrong, the TA explains the correct answer and asks them to
do another example, which they'll come back to. Getting one right by the end of
this session counts as a pass. 

50 min - Teacher goes through a few examples of two-factor ANOVA with real data in
R, showing both 'ez' NHST and 'BayesFactor' versions.

70 min - Break

80 min - Individul pass/fail exercise on material above, using different data
sets.

## Week 9<a id="sec-9-9" name="sec-9-9"></a>

### Session A: Giving a group presentation<a id="sec-9-9-1" name="sec-9-9-1"></a>

Six of the seven staff members get into pairs -- this gives them 6 group
presentations to assess each (which they double mark). Prior to the session the marker pairs
circulate a symposium booklet for their 6 groups - names, title,
and abstract for each talk. Each group gets 10 min plus 5 min for questions and
feedback. With switchover etc., this should just fit into the 110 min time
available.

### Session B: Modifying an experiment<a id="sec-9-9-2" name="sec-9-9-2"></a>

The group and TA reflect on their results, and the feedback received
on their presentation. They discuss what they would have done differently if
they were starting again. They make an assessment of how serious these
shortcomings are to drive the following decision. Should they:

(A) Run a modified version of their first experiment, mainly centered on
addressing the shortcomings of their design or results (e.g. ceiling/floor
effects).

(B) Add a between-subjects condition to their existing study that widens the
investigation to add another factor. Run that second condition in their second
data colleciton phase. 

If choosing B, the TA needs to clarify that adding a condition like this
is OK for teaching purposes but should  be avoided in research you're going
to publish. It introduces a time-of-testing confound. Between-subject
conditions should be finely intermixed. 

By the beginning of Session 10A, the group should have an agreed protocol for the
next data collection phase. Again a scribe should be nominated (a 5th different
person) who writes this up and emails to sub-group and teacher.

## Week 10<a id="sec-9-10" name="sec-9-10"></a>

### Session A: Re-programming the experiment<a id="sec-9-10-1" name="sec-9-10-1"></a>

As Session 4B. If there is spare time, students can do catch-up exercises. They
can also seek / be given advice on writing up (via the Teachers).

### Session B: Data collection #1<a id="sec-9-10-2" name="sec-9-10-2"></a>

As Session 5A

## Week 11<a id="sec-9-11" name="sec-9-11"></a>

### Session A: Data collection #2<a id="sec-9-11-1" name="sec-9-11-1"></a>

As Session 6A.

### Session B: Analyzing and interpeting your data<a id="sec-9-11-2" name="sec-9-11-2"></a>

As Session 7B.

## Week 12<a id="sec-9-12" name="sec-9-12"></a>

### Session A: Writing a good report<a id="sec-9-12-1" name="sec-9-12-1"></a>

0 min - A Teacher gives 30 min talk on basics of writing a good report (see
report-writing.odp as an example).

35 min - Each group, with assistance of TAs, comes up with a bullet point
plan for each section of the report. 

60 min - Break; group re-arrange.

70 min - Each sub-group, with an audience of that TA's other two
groups, talks through their bullet point plan. TA and other groups
provide feedback on what they found clear / unclear.

105 min - Homework: Given two prior reports to read by Session B (see below)

### Session B: Critiquing reports / Finishing up<a id="sec-9-12-2" name="sec-9-12-2"></a>

0 min - Groups are given one example 1st class and one example 2ii report
(we would put these together ourselves by coming up with an imaginary study,
writing it up well, and then breaking it). Can they tell why those two reports
differed in mark? What are the good points of the 1st class report? Where did
the 2ii report go wrong? Support from TA.

When this activity is over (probably about 60 min) the students can use the
remaining time for whatever remaining questions they may have and/or a final
chance to catch up on the pass/fail component. 

# Schedule of work (Semester Two)<a id="sec-10" name="sec-10"></a>

Not yet planned.
