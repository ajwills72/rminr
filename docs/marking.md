# Marking

This page explains the mark scheme for assessed exercises.

<a name = "exploring-data"></a>

## Exploring data

Refers to this worksheet: [Exploring data](exploring-incomes.html). 

For old hands, note that the auto-marking system used in previous years was
withdrawn (ask Peter if you want the backstory on this). So, you have to do it
fully by hand now. 

### Mark scheme:

(a) _Mean_ (**1 mark**): Students are asked to report a mean income.  
     Any answer that rounds to the correct whole number is
    marked correct (1 mark awarded). Any other answer is incorrect (0 marks
    awarded). **The correct answer is 87293**. 

(b) _Code for median calculation_ (**2 marks**): Students are asked to enter a 
    piece of code that calculates the
    median income. The correct code, canonically expressed, is `cpsdata %>%
    summarise(median(income))`.  Any code that evaluates to give the correct
    answer (56952) scores 2 marks.  Anything else scores 0 marks.
    If you are unsure whether the code would work, you can check it by
    following the worksheet (link above) up to that point and then substituting
    the student's code. Or, use your professional judgement. 
    
(c) _Text answer for mean versus median_ (**5 marks**): Students are asked,
"Does the mean or the median give a better indication of average salary in this
case? You need not write more than a few sentences, but you should explain your
reasoning.". 

A perfect answer would be something along the lines of:

"The median is better, because it is less affected by the rare, very high
incomes in the distribution. A median is nearly always better in cases where
the distribution is skewed."

The tutor awards marks on the basis of accuracy and clear expression. Only a
perfect answer should score 5 marks. A competent answer scores 4 marks. An answer 
that is correct but without explanation (e.g. "the median") gets 3 marks. An
answer that contains a conceptual error should score no more than 2 marks. Not
answering scores 0.

(d) _Uploaded graph_ (**7 marks**). Tutors mark the graph to the following
scheme (add up the points for a total):

- Something that looks like a graph has been uploaded (1 mark)

- The graph is a histogram (1 mark)

- The y-axis has a sensible label, e.g. "Number of people" (1 mark)

- The x-axis has a sensible label, e.g. "Income in US dollars" (1 mark)

- The histogram is _blue_ (1 mark)

- The _bin width_ on the x-axis looks about right; see the last graph on the
  worksheet for what it should look like - the bin width is the width of each
  bar making up the histogram (1 mark)
 
 - The background looks about right, e.g. is white rather than grey, again see
   example on worksheet (1 mark)
 
 - If the uploaded graph says "EXAMPLE PLOT", the student scores **zero** for
   the graph component of this assessment because they have lifted this graph
   off the teaching materials, rather than making it themselves.

### Final score and feedback

Write the component marks (see below) next to each question, and provide
a couple of sentences of feedback in the "Marker's comments" section of the template.
At a minimum, this should correct any errors or
omissions the student has made. In addition, say something happy and nice if at
all possible!

Upload to DLE. 

Calculate the final score by adding up the component scores and
expressing as a whole-number percentage (x*100/15). Enter this value into the DLE.


___

#### Licence
This material is distributed under a [Creative Commons](https://creativecommons.org/) licence. CC-BY-SA 4.0. 

