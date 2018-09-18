# Marking

This page explains the mark scheme for assessed exercises.

## Exploring data

Refers to this worksheet: [Exploring data](exploring-incomes.html). 

Some aspects of this assessment are auto-marked, others are marked by the tutor. Where a component is automarked, 
the automarking appears on the tutor's view on PsycEL; the student only sees it once the tutor has completed the marking. Where a component is tutor marked, the tutor enters their mark on the tutor view (e.g. by a drop-down box next to the question) -- they should be able to award any whole mark from zero to the maximum number of marks given below. Again, the student only sees it once the tutor has completed the marking.

Once the tutor has finished marking, the student will be able to view their mark for each component on PsycEL, along with their final score, and some free-text feedback.

### Mark scheme:

(a) _Mean_ (**1 mark**): Students are asked to report a mean income. The correct answer is 87293. 
    This is automarked by PsycEL. Any answer that rounds to this whole number is correct 
    (1 mark awarded). Any other answer is incorrect (0 marks awarded).

(b) _Code for median calculation_ (**2 marks**): Students are asked to enter a piece of code that calculates 
    the median income. The correct code, canonically expressed, is `cpsdata %>% summarise(median(income))`.
    Any code that evaluates to give the correct answer (56952) scores 2 marks. 
    Anything else scores 0 marks. Ideally, this is automarked by PsycEL -- there are some automarking technical         challenges here, which are detailed below.
    
(c) _Text answer for mean versus median_ (**5 marks**): Students are asked, "Does the mean or the median give a better indication of average salary in this case? You need not write more than a few sentences, but you should explain your reasoning.". Staff mark against a model answer, entering their mark on PsycEL (e.g. via a dropdown box)

A perfect answer would be something like:

"The median is better, because it is less affected by the rare, very high incomes in the distribution. A median is nearly always better in cases where the distribution is skewed."

The tutor awards marks on the basis of accuracy and clear expression. Only a perfect answer should score 5 marks. A competent answer scores 4 marks. An answer that contains a conceptual error should score no more than 2 marks. Not answering scores 0.  

(d) _Uploaded graph_ (**7 marks**). Tutors mark the graph to the following scheme (add up the points for a total):

- Something that looks like a graph has been uploaded (1 mark)

- The graph is a histogram (1 mark)

- The y-axis has a sensible label, e.g. "Number of people" (1 mark)

- The x-axis has a sensible label, e.g. "Income in US dollars" (1 mark)

- The histogram is _blue_ (1 mark)

- The _bin width_ on the x-axis looks about right; see the last graph on the worksheet for what it should look like - the bin width is the width of each bar making up the histogram  (1 mark)
 
 - The background looks about right, e.g. is white rather than grey, again see example on worksheet (1 mark)
 
 - If the uploaded graph says "EXAMPLE PLOT", the student scores **zero** for the graph component of this assessment    because they have lifted this graph off the teaching materials, rather than making it themselves.

### Final score

PsycEL should calculate a final score by adding up the component scores and expressing as a whole-number percentage (x*100/15). The student should be able to see this score on PsycEL once the marking is done. The module leader should be able to export all final scores as a single CSV file with two columns: `SRN, Rscore`


### Feedback    

In addition to the per-question scores and the final score, which are provided to the student as feedback, the tutor writes a couple of sentences in a free text box as further feedback. At a minimum, this should correct any errors or omissions the student has made. In addition, say something happy and nice if at all possible!




### How to automark R code

The challenge is that you can place as many spaces between keywords as you like (including, normally, none), and the command will still run fine. But you cannot put spaces in the middle of keywords. This is all pretty typical for modern computer languages. 

So, for example, these give the right answer:

`cpsdata   %>%   summarise   (   median   ( income   )   )`

`cpsdata%>%summarise(median(income))`

but these throw an error:

`cpsdata% >%summarise(median(income))`

`cpsdata%>%summ arise(median(income))`

I think there are two ways to approach automarking this kind of thing:

1. Have PsycEL execute the code the student provides using R (it's accessible
from the command line) and check the answer it gives. This may pose some technical, and some
security, challenges.

2. Use a [regular expression](https://en.wikipedia.org/wiki/Regular_expression).


___

#### Licence
This material is distributed under a [Creative Commons](https://creativecommons.org/) licence. CC-BY-SA 4.0. 

