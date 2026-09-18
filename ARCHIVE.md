# Research Methods in R archive

This repository is a closed, preserved snapshot of the Research Methods in R
teaching materials. The `docs/` directory is the published GitHub Pages site;
the editable source is in `src/`. No new course development is planned.

## Reproducibility

The published HTML is retained so that the archive can be read without a local
R installation. Source documents were written for R and RStudio and use
packages such as `tidyverse`, `ggplot2`, `pander`, `viridis`, `gt`, `psych`,
`irr`, `BayesFactor`, `osfr`, and `fGarch`. Package availability and output may
change as R packages evolve; this archive does not promise a fresh rebuild of
every historical worksheet.

The data and helper files needed by the lessons are stored under `src/`.
External websites mentioned in the lessons are references or optional services,
not required repositories for the published site. A lightweight audit can be
run with:

```sh
sh scripts/check-archive.sh
```

## Analytics

The published site uses Google Analytics property `G-WXTBHY6FJW` to provide
aggregate usage information. The tag is configured in `docs/_config.yml` and
is supplied by the Jekyll theme. Analytics can be disabled by removing that
setting before publishing a fork.

## Licensing

The teaching content is described as CC-BY-SA 4.0 in `docs/README.md`.
The repository's existing GPL-3.0 licence applies to code where applicable.
Third-party material remains subject to its original licence and attribution.