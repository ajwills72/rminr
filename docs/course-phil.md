# Pedagogy

## Overview

These worksheets are designed as introductory materials for psychology students with no background in programming. They were written with the goal of giving students the smallest number of simple 'patterns' (commands and short sequences of commands) to achieve the most common goals of data analysis in undergraduate psychology. These patterns should be explained sufficiently that they become reusable, and recombinable - in other words students can build their own analyses (e.g. for their dissertation) from the building blocks provided in this course. They should be able to do this without needing to treat R as a general-purpose computing language. Hence, concepts such as data types, objects, loops, and functions are introduced only to the extent they are strictly needed to achieve such goals. 

The materials are intended to be practical 'how to' manuals, but in order to use a tool properly you need to understand its function, so more 'theoretical' explanations of the underlying concepts are introduced as they are needed to inform their use. Concepts are introduced in an order of increasing dependency on previous concepts. This leads to some different ordering to some other courses. For example, effect size is introduced before evidence calculation (e.g. t-test), because the latter is both based on, and more general than, the former.

## Rules for writing patterns

In putting together the _patterns_ (code chunks) used in these materials, we followed these principles:

1. _Avoid incorrect or bad practice_ - The published literature contains any number of analysis pipelines that, by today's standards, are either bad practice or outright wrong. We won't teach such things to our students. If the practice is sufficiently common, we'll acknowledge it exists, and explain why we have not provided examples of how to do it.

1. _Three step_ rule - Avoid giving students a code block that involves more than about three steps. Once you get to three steps, break and explain what you've done, then move on to the next three steps. Do this even in preference to the simplicity rule. Longer blocks of code are hard to parse for non-programmers.

1. _Simplicity_ rule - Minimize the number of different commands used across the whole set of materials. Minimize the total number of steps required. Choose commands that operate as similarly as possible to each other (e.g. same syntax).

1. _One way_ rule - there are many ways to do the same thing in R. Pick one of them and stick to it. Don't arbitrarily change syntax.

1. _CSV data_ rule - Data should always be read in from a CSV file. This is because CSV is a free open simple format and hence suitable for archival storage. We do not write exercises that take data from Excel spreadsheets, or SPSS SAV files, or Word documents, etc, as these are all complex proprietary formats and hence not suitable for archival research. At some point, we might write a worksheet on how to get data from these poor-choice formats into CSV format. 

1. _Bayes Factor_ preference - Unlike p values, Bayes Factors are both relatively easy to interpret, and provide the possibility of providing evidence for the null. We therefore teach the Bayesian method first (and sometimes only teach the Bayesian method), unless this would violate the _simplicity_ rule. The way we keep Bayesian analysis simple for our audience is to limit descriptions of the  process of specification of priors to extension worksheets. To achieve this, we use  packages that have sensible default priors (e.g. BayesFactor). We appreciate that both this obfuscation, and the emphasis on hypothesis testing over parameter estimation, are potentially controversial decisions. To be clear, these are decisions made in the context of an introductory course - and we recommend considering more advanced courses as a follow-on to these materials. 

1. _Tidyverse_ preference - If there is a way of doing it in tidyverse, usually it is the right decision to do it that way. This is just because of the _one way_ rule, and the fact the materials are heavily based on tidyverse. However, if the tidyverse way is more complex, consider doing it some other way (see simplicity rule). 

## Raw data formats and preprocessing

Beyond the file type (which we standardise to CSV in these materials), there are a number of other ways raw data formats can differ. Some, mainly from experiments, are _long_ (many rows, few columns). Others are _wide_ (many columns, few rows). Seldom are they in a format that can be directly analyzed, and so preprocessing is required.

Advice on preprocessing therefore has to be specific to the raw data format you have available (and hence can't follow the 'one way' rule). In these worksheets, we've used two fairly protoypical formats - OpenSesame (for experiments, long format), and an SPSS-like wide format (for questionnaire data). Preprocessing steps start from one of those two forms, and are the simplest, shortest set of commands that get the data ready for analysis. 

