# Welcome to Research Methods in R

This is the website we use to develop these teaching materials. If you were looking for the actual materials, 
[click here](https://ajwills72.github.io/rminr/)

## Notes for new contributors

If you've a suggestion for an improvement, or a bug report, please make a pull request. Or, if you don't know how to do that, use the Issues function of github to log an issue and someone will pick it up and deal with it as soon as possible.

## Notes to developers

The files in the _docs_ directory are the live contents of the RMINR website. The files are a mix of .md and .html. If you change the .md files, the live contents of the site changes. Use .md when possible, see below if you need to use RMarkdown.

The .html files are knitted from the .Rmd files in the _src_ directory. Do not change the .html files directly. Instead, change the .Rmd files, knit them and copy the resulting .html file into the _docs_ directory. 

### How to knit

The [RStudio](https://www.rstudio.com/) IDE supports knitting through its GUI. 

You can also knit from the R command line, using the `rmarkdown` package:

```
render('irr.Rmd', 'all')
```

### Emacs users

RMarkdown documents are suported in [Emacs](https://www.gnu.org/software/emacs/) through the MELPA package poly-R. In Emacs, you may need to add the following to your init.el file:

```
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+R-mode))
```
