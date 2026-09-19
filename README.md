# Welcome to Research Methods in R

> **Archived project.** This repository is a preserved snapshot of the Research
> Methods in R teaching materials. It is no longer under active development and
> should be treated as read-only. The published materials remain available at
> <https://ajwills72.github.io/rminr/>.

This is the website we use to develop these teaching materials. If you were looking for the actual materials, 
[click here](https://ajwills72.github.io/rminr/)

## Archive notes

The source materials are retained for reference and reuse under the licences
described in [docs/README.md](docs/README.md#licence). External links in the
lessons are references for learners; build-time data and helper files used by
the source documents are stored in this repository wherever possible.

The final archive review is recorded in [ARCHIVE.md](ARCHIVE.md), including the
known optional R package dependencies and the checks used to validate the
published snapshot.

## Notes for contributors

This project is closed to routine development. Please do not open feature
requests or pull requests expecting ongoing maintenance. You may still fork the
repository for your own teaching or research, subject to the licences and
attributions in the materials.

## Notes to developers

The files in the _docs_ directory are the live contents of the RMINR website. The files are a mix of .md and .html. If you change the .md files, the live contents of the site changes. Use .md when possible, see below if you need to use RMarkdown.

The .html files are knitted from the .Rmd files in the _src_ directory. Do not change the .html files directly. Instead, change the .Rmd files, knit them and copy the resulting .html file into the _docs_ directory. 

### R compatibility checks

Check the syntax of every R and RMarkdown source file with:

```sh
Rscript scripts/check-r-source.R
```

This check does not run the lessons. Rendering a worksheet also requires its
R package dependencies; the historical materials use optional packages such as
`BayesFactor`, `afex`, and `rstanarm`.

### How to knit

The [RStudio](https://www.rstudio.com/) IDE supports knitting through its GUI. 

You can also knit from the R command line, using the `rmarkdown` package:

```
rmarkdown::render('irr.Rmd', output_format = 'all')
```

### Emacs users

RMarkdown documents are supported in [Emacs](https://www.gnu.org/software/emacs/) through the MELPA package poly-R. In Emacs, you may need to add the following to your init.el file:

```
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+R-mode))
```
