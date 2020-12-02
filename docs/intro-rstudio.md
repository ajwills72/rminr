# Introduction to RStudio
_Andy Wills_

## Getting RStudio
Before you can use RStudio, you have to get it running on your computer. Here's how:

**Web browser** (recommended) - Go to an <a href = "https://rstudio.plymouth.ac.uk" target = "blank">RStudio server</a> and log on, using the username and password you have been given. 

_NOTE_: RStudio works on most web browsers (e.g. Firefox, Safari, Chrome) but does not work that well on the default web browser in Windows 10 ("Edge"). If you're using Windows, I recommend [downloading Firefox](https://www.mozilla.org/en-US/firefox/new/) and using that. Firefox is free and open source.

**Install on your own machine** (not recommended) - Alternatively, you can install RStudio on your own laptop or desktop (Windows, Mac, or Linux -- if you have a chromebook, you will have to use the web browser version, see above). It's completely free, and will probably take around 30 minutes to install. You can get it [here](https://rstudio.com/products/rstudio/download/#download). However, for teaching purposes, we recommend you use the web browser version. This is because: (a) these materials assume you are using the version of R currently on our RStudio server (currently 3.6.3), and (b) you will have to install the _packages_ you need as you go along. So, for example, if you type `library(tidyverse)` and get an error, you will need to install the tidyverse package using `install.packages(tidyverse)`. 

## Using RStudio
You'll be greeted with a screen that looks something like this:

![RStudio on first opening](pics/rstudio-new.png)

When you open RStudio for the first time, you can see three parts: 

1. The **Console** - This is the large rectangle on the left. This is where you tell R what to do, and it's also where R prints the answers to your questions. 

2. The **Environment** - This is the rectangle on the top right. This is where R keeps a list of the data it knows about. It's empty at the moment, because we haven't given R any data yet.

3. The **Files** - This is the rectangle on the bottom right. This is a bit like the _File Explorer_ in Windows, or the _Finder_ on a Mac. It shows you what files and folders R can see.

You should also be able to see that the two rectangles on the right have a number of other "tabs". These work like tabs on a web browser.  

The top rectangle has the tabs "Environment" and "History". The **History** tab keeps a record of commands you've recently typed into the Console. This can sometimes be useful.

The bottom rectangle has the tabs "Files", "Plots", "Packages", "Help", and "Viewer". We'll cover what these other tabs do later on. 

___

This material is distributed under a [Creative Commons](https://creativecommons.org/) licence. CC-BY-SA 4.0. 


