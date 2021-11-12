# Common errors
_Andy Wills_

## Try these things first...

**Check your typing** - The command has to be exactly as it appears on the worksheet. In particular, check your brackets `(  )`, and check that you haven't missed off the speech marks `" "`. Check you haven't missed out any commas `,`. Check you have typed captial letters as shown, e.g. `bayesfactor` is not the same as `BayesFactor`. Check whether your command uses `=` or `==`, these are not the same thing (see below for explanation).

**Restart R** - If the output you get is very different to what is shown in this worksheet, go to "Session" on the RStudio menu, and select "Restart R". If that doesn't fix your problem, see below. 

## Errors when loading data

If you get a message like:

`Error in open.connection(con, "rb") : Could not resolve host: www.willslab.org.uk` 

Check your internet connection (e.g. by using the web browser to look at your Twitter feed). If you have an internet connection, try the command again.

## Is it `=` or `==` ?

In R, `=` means the same as `<-`.  Computers don't cope well with situations were the same symbol means two different things, so we use `==` to mean "equal to". For example `filter(education == "master")` in our income data set means keep the people whose education level equal to "master".


___

This material is distributed under a [Creative Commons](https://creativecommons.org/) licence. CC-BY-SA 4.0. 


