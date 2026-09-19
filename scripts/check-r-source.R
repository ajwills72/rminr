#!/usr/bin/env Rscript

files <- list.files("src", pattern = "[.]R$|[.]Rmd$", recursive = TRUE, full.names = TRUE)
failed <- character()

for (path in files) {
  source_path <- path
  if (grepl("[.]Rmd$", path)) {
    source_path <- knitr::purl(path, output = tempfile(fileext = ".R"), quiet = TRUE)
  }

  result <- tryCatch(parse(source_path), error = identity)
  if (inherits(result, "error")) {
    failed <- c(failed, sprintf("%s: %s", path, conditionMessage(result)))
  }
}

if (length(failed) > 0) {
  cat(paste(failed, collapse = "\n"), "\n", sep = "")
  quit(status = 1)
}

cat(sprintf("%d R/Rmd files parsed successfully\n", length(files)))
