# PSYC604

## Automark

In the code box, all terms must be present to pass (any order). The terms do not need to be present as whole words (i.e. do not need to be separated by spaces)

### Analysing scales

#### Exercise

Code box:

```
select
dass21
c(
,
DASS
cronbach
```

There is no free text box.

### Data preprocessing for experiments

There is only one (long) exercise:

Code box:

```
distinct
<-
count
%>%
filter
post_na
>
50
79
221
364
666
c(
!
%in%
subj
mutate
pre_na
1
=
/
pre_na
+
post_na
```

There is no free text box.

### Data preprocessing for scales

#### Exercise 1

Code box:

```
<-
mutate
rowSums
dass21
anxiety
stress
select
partID
Age
Gender
depression
```
There is no free text box.


#### Exercise 2

Code box:

```
select
sses
1
25
45
~
set_names
str_to_lower
%>%
str_replace_all
factor
select
partid
condition
post
time
subj
q1
q20
```

There is no free-text box.

### Analysing scales

#### Exercise

Code box:

```
select
dass21
c(
,
DASS
cronbach
```

There is no free text box.


### More on Bayesian ANOVA

#### Exercise 1

Code box:

```
%>%
factor
subj
perspective
predictability
<-
group_by
summarise
mean
blame
ggplot
aes
geom_line
geom_point
anovaBF
~
*
/
[3]
[4]
```

Free text:

In the free text box, have some limits that disallow something as short as one sentence, and anything longer than 300 words.

#### Exercise 2

Code box:

```
Test
select
Subject
Congruency
Load
RT
%>%
drop_na()
select
group_by
summarise
RT
mean
ggplot
geom_line
geom_point
factor
anovaBF
~
*
whichRandom
[4]
[3]
/
```

Free text box: 

In the free text box, have some limits that disallow something as short as one sentence, and anything longer than 300 words.

### Data preprocessing for scales

#### Exercise 1

Code box:

```
<-
mutate
rowSums
dass21
anxiety
stress
select
partID
Age
Gender
depression
```
There is no free text box.


#### Exercise 2

Code box:

```
select
sses
1
25
45
~
set_names
str_to_lower
%>%
str_replace_all
factor
select
partid
condition
post
time
subj
q1
q20
```

There is no free-text box.

### Traditional non-parametric tests

#### Exercise 1

Code box:

```
<-
%>%
wing_preproc
filter
task
==
np
group_by
cards
summarise
median
correct
wilcox.test
~
```

There is no free text box.

#### Exercise 2

Code box:

```
<-
%>%
filter
ers
==
development
group_by
subculture
summarise
median
score
kruskal.test
~
subculture
=

```

There is no free text box.
