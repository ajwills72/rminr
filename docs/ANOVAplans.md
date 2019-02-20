# Outline

## Philosophy
Learning by doing. Relatively few techniques, lots of practice.

## Basic structure
Students work in groups of 6 within workshops of 80. In each of 12 weeks, students have a 2-hour _high-intensity_ workshop (teaching and closely supervised group work), followed by a 2-hour _low-intensity_ workshop (loosely supervised group work towards pre-specified goals) for a total of 48 student contact hours across the semester.

In this time they go through a full research cycle twice. So, they go from a topic, to a question, to a hypothesis, to building an experiment, to collecting data, to analyzing it, to a group presentation, to modifying their experiment, to collecting more data, to analyzing it again, to writing a report.

## Example of topics and questions
A topic might be 'Basic processes of learning'. Within that topic, there are 2-4 sub-topics. For example:

1.  Relationship between surprise and learning
2.  Is learning sudden or gradual?
3.  What determines whether we learn smart rules or dumb similarity?

I've provided some [example slides](learning-topics.odp). 

## Data collection
Data collection works by 5/6 of each student group participating in six
experiments. For 30min studies, this takes 3 hours plus shifting time, so
easily fills two two-hour session. It results in N=25 for each experiment. For reasonable
power the first data collection should therefore be a within-subject design with a
reasonable effect size. The second data collection should in some way permit
the inclusion of a b/subj effect (even if that's just a cross-experiment
comparison). 

## Employability skills
Communication skills. Group working to deadline. Project planning / timetabling. Critical thinking / analysis.

## Stats taught
One-way w/subj ANOVA. 2x2 ANOVA (1 between, 1 within). Bayesian alternatives.

## Ethics
The students wrtite a detailed description of their methods; the discussion and approval of this document by staff provides a practical insight into ethics in these fairly innocous studies.

## Assessment method
Group oral presentation (20%). Writen report (80%). Psyc:EL competency tests (pass/fail)

There are a larg-ish set of pass/fail short competency tests, each can be taken an indefinite number of times until an end-of-semester deadline, you have to pass 80% of them to pass the pass/fail component. They are designed to be completable during class time, so there is support.

## Semesterization
Runs in Semester 2, so has a 3-week break after Week 7.

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

# Outline plan

|    Week | Content                                           |
|---------|---------------------------------------------------|
|       1 | Select a topic / Methods bootcamp                 |
|       2 | An experiment is born / Processing large datasets |
|       3 | Finalizing the idea  / Building in PsychoPy       |
|       4 | Finalizing the PsychoPy script / Data collection  |
|       5 | One-factor ANOVA / Data collection                |
|       6 | Data analysis / Preparing a presentation          |
|       7 | Group presentations                               |
| -BREAK- | - Easter break -                                  |
|       8 | Modifying an expt                                 |
|       9 | Finalizing script / Data collection               |
|      10 | Two-factor ANOVA / Data collection                |
|      11 | Data analysis / Planning a report                 |
|      12 | Critquing reports                                 |

#  Detailed plan

## Week 0: Homework
At the end of the previous semester, students are told they should revise Stage
1 Absolute Beginners' Guide to R prior to Week 1 of the module.

## Week 1: Select a topic / Methods bootcamp
High instensity session:

| min | Contents                                                                                 |
|-----|------------------------------------------------------------------------------------------|
| 000 | Teacher gives a short introduction to each of the three topics.                          |
| 020 | Students select topic (by standing at a particular point in the room).                   |
| 025 | Students self-organize into groups. TA allocated to groups. Any given TA does one topic. |
| 030 | TAs introduce the sub-topics in their topic to their groups, and assign reading.         |
| 050 | Break                                                                                    |
| 060 | _Introduction to PsychoPy_ worksheet.                                                    |
| 090 | _Introduction to preprocessing in R_ worksheet                                           |
| 110 | Finish 

Low-intensity session and homework:

- Read, discuss the assigned papers.

- Agree in your group which sub-topic you're going to investigate.

- Complete Psyc:El submissions from worksheets.

## Week 2: An experiment is born / Processing large datasets
High-intensity session:

| min | Contents                                                               |
|-----|------------------------------------------------------------------------|
| 000 | Teacher introduces getting from sub-topic to broad experimental design |
| 020 | With TA support, groups define question and plan broad design          |
| 050 | TA assigns one paper per group member. BREAK.                          |
| 060 | _Preprocessing large data sets in R_ worksheet                         |
| 110 | Finish                                                                 |

Low-intensity session and homework:

- Each group member individually reads and tells group about it in
  low-intensity session.

- Complete and submit one-page broad design summary (Psyc:EL).

- Complete and submit Preprocessing large data sets assessment if not already
  done so.

## Week 3: Finalizing the idea / Building in PsychoPy

| min | Contents                                                 |
|-----|----------------------------------------------------------|
| 000 | Teacher introduces getting from broad to specific design |
| 020 | With TA support, groups work towards a specific protocol |
| 050 | BREAK                                                    |
| 060 | Teacher walks through Building in PsychoPy worksheet     |
| 080 | Students work through the exercise on worksheet          |
| 110 | FINISH                                                   |

Low intensity session and homework:

- Complete and submit protocol (Psyc:EL)
- Submit PsychoPy worksheet script (Psyc:EL)
- Start work on PsychoPy script for your protocol.

## Week 4: Finalizing the PsychoPy script / Data collection
High-intensity session:

Whole session is dedicated to achieving the following goal: Have a working,
bug-checked PsychoPy script ready to go for Session 5A. The tasks, which they
need to divide between members of the group include: (1) Writing the
instructions, (2) Producing the CSV file(s) that define the trials. (3)
Creating the stimulus sets, (4) Building the structure in PsychoPy. (5) Testing
for bugs. (6) Checking the output is usable.

Homework:

Finish script, upload to Psyc:EL.

Low-intensity

Data collection.

## Week 5: One-factor ANOVA / Data collection
- High intensity session: Whole session dedicated to one-factor ANOVA

- Low itensity session: Data collection

- Homework: Complete ANOVA exercises, submit PsychoPy script and data to Psyc:EL.

## Week 6: Data analysis / Preparing a presentation
- High-intensity session

| min | Contents                                              |
|-----|-------------------------------------------------------|
| 000 | With TA support, analyse and interpet data            |
| 080 | BREAK                                                 |
| 090 | TA led discussion of presentation planning (see Note) |
| 110 | Finish                                                |

Note:

TA and group reprise what they did, what they have found, and discuss any
problems/limitations of what they have done. TA then leads discussion of
examples of very clear, and very unclear, lectures they have encountered since
joining Stage 1. What do these good/bad experiences have in common? Possible
issues - Rate of presentation; incorrectly assumed knowledge; over-crowded
slides; a million facts but no big picture; a big picture but no facts;
conclusions do not cleary follow from facts. Then, TA supports group to
sub-divide the task of writing a presentation between them. The sections would
be something like: (A) Big picture overview, (B) Introducing the specific
question, (C) Metholodgy, (D) Results, (E) Interpretation, (F) problems and
next steps, (G) Writing an abstract.  Agree an allocation of time and number of
slides each.

Low-intensity session, homework:

- Write presentation

- Practice on each other, TAs, and reflect.

- Submit presentation title, author names, and abstract to Psyc:EL by end of
  week. Earlier you submit, more likely you are to get your choice of session
  next week. Order within session pulled out of a hat on the day.

- Submit analysis script to Psyc:EL

- Submit ANOVA exercises to Psyc:EL if not already done so.

## Week 7: Group presentations
The two sessions this week are identical -- both are staffed by one TA and one
Teacher (who double mark). In each session, up to 7 groups present. 10 minute
presentations, 3 min for questions and informal feedback, 2 min for switch
over. Just about fits into a 2 hour session.

Homework:

Upload presentation slides to DLE.

## BREAK
Easter Break intervenes, placing a 3-week gap in the schedule.

## Week 8: Modifying an experiment 
High-intensity session:

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

Students then revise their protocol, and re-program their experiment in
PsychoPy.

Homework, low-intensity session:

- Submit revised protocol to Psyc:EL
- Reprogram experiment

## Week 9: Finalizing the PsychoPy script / Data collection
As Week 4.

## Week 10: Two-factor ANOVA / Data collection
- High intensity session: Whole session dedicated to two-factor ANOVA.

= Low itensity session: Data collection

- Homework: Complete ANOVA exercises, submit PsychoPy script and data to Psyc:EL.

## Week 11: Data analysis / Planning a report
High-intensity session:

| min | Contents                                                          |
|-----|-------------------------------------------------------------------|
| 000 | With TA support, analyse and interpet data                        |
| 080 | BREAK                                                             |
| 090 | Teacher presentation report writing                               |
| 110 | Finish                                                            |

Low-intensity session, homework:

- Bullet point plan of report.

- Peer/TA feedback on bullet point plan.

- Read the good/bad reports used in Week 12.

- Submit analysis script to Psyc:EL

## Week 12: Critiquing reports
High-intensity session:

| min | Content                                              |
|-----|------------------------------------------------------|
| 000 | TA-led good-and-bad reports activity (see Note 1)    |
| 050 | BREAK                                                |
| 060 | TA-led discussion of bullet point plans (see Note 2) |


Note 1: Groups are given one example 1st class and one example 2ii report (we
would put these together ourselves by coming up with an imaginary study,
writing it up well, and then breaking it). Can they tell why those two reports
differed in mark? What are the good points of the 1st class report? Where did
the 2ii report go wrong?

Note 2: All groups working with a TA get together.  Each sub-group, with an
audience of that TA's other two groups, talks through their bullet point
plan. TA and other groups provide feedback on what they found clear / unclear.

Low-intensity session, homework:

Work on the report!

# Slides
- [Introducing topics](learning-topics.odp)

- [Experiment design](expt-design.odp)

- [Report writing](report-writing.odp)

# Worksheets

## Introduction to PsychoPy
Download and install. Initial becnhmarking. Zipping and unzipping. Loading a
script. Running it. Entering subject number. Running through the
expeirment. Locating the 3 data files (csv, log, psydat). Keeping a
backup. Inspecting the CSV file - rows are trials, columns are info. Uses: A
basic-as-possible PsychoPy script in a ZIP archive that implements a short
conjunctive visual search experiment with two set sizes.

## Building in PsychoPy
How to use Builder View on PsychoPy to build your own experiment. Discusses the
two-panel interface of PsychoPy. Demonstrates creating an event, adding some
fixed-test instructions, adding a response key. CSV files as list of
trials. Text and picture presentation. Loops. Exercise: write script to
investigate wether lexical decision RT is affected by the
congruence/incongruence of a picture. A set of picture files is provided.

## Introduction to preprocessing in R
Load the PsychoPy CSV file. Select relevant columns. Rename columns. Produce
subject-level summary. Plot simple graph. Upload PsychoPy CSV file, and enter
subject-level sumamry in PschoPy for auto-marking.

## Preprocessing large data sets in R
Uses resource of 25 participant files from "Introduction to preprocessing"
worksheet (different random sample of 25 from 200 for each student). Run script
from that worksheet on a few different people to illustrate between-subject
variability. Demonstrate development of script that loads in all 25 files and
makes one big data frame.  Introduce the idea of taking within-subject
differences as reducing that variabilty. Use R to take differences and produce
density plot, calculate mean and variance (some of this is revision). Upload
mean, variance, graph for auto-marking in Psyc:EL.

## One-factor ANOVA in R
Uses a large dataset provided to student. Starts with revision of b/subj t-test
and Bayesian equivalent. Then introduces within-subject versions. Introduces
within/subj ANOVA and Bayesian equivalent as an alternative method for doing
what we did with a within/subj t-test. Demonstrates how to do this with same
dataset. Explain an F-ratio as conceptually a similar thing to a t-value i.e. a
ratio of the size of the difference to the size of the variability. Shows how
to pick out the figures needed for a standard report of e.g. F(1, 243) = 2.12,
p < .001. Then, explain why we'd bother with something that's so similar to a
t-test - two reasons: (1) To have more than two nominal levels (covered this
worksheet), (2) to look at more than one factor at the same time (covered in a
later worksheet). Then, demonstrate one-factor w/subj ANOVA with a different
large dataset with 3 nominal levels. Upload results to Psyc:EL.

## Pairwise comparisons and sphericity corrections in R
Light revision of previous worksheet, and emphasis on what it means to have a
significant result when there are more than two nominal levels in the
factor. Demonstrate use of subsetting and a t-test to look at a specific pair
in the 6B data set. Discuss the rapdily increasing number of pairs in a set of
items, and the problem of multiple comparisons. Introduce Bonferroni as simple
(but conservative way to deal with this). Show how to do Bonferroni in
R. Describe sphericity assumption of ANOVA (pragmatically, rather than with
deeply underlying theory). Present GG and HF as ways of compensating from
divergence from this assumption. Focus on how to use within R rather than
details of how it works (although give some abstract sense of what these
corrections do). Upload results to Psyc:EL.

## Two-factor ANOVA in R
1. Introduces the concept of an interaction as a difference of differences. Spends
a bunch of time explaning this from as many angles as possible (including
graphical), because a lot of students find this really hard. Probably give some
examples from the published literature.

2. Students work through several examples of real data plotted and tabled in
various forms, with a potted explanation of the study, and are asked to record
in Psyc:EL whether (numerically) they show a clear interaction or not, and what the
interpretation is of these data in terms of the experiment run. 

3. Goes through a few examples of two-factor ANOVA with real data in
R, showing both NHST and Bayes  versions.
