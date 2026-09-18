#!/bin/sh
set -eu

failed=0

check_file() {
    if [ ! -f "$1" ]; then
        printf 'missing: %s\n' "$1"
        failed=1
    fi
}

check_file README.md
check_file ARCHIVE.md
check_file docs/_config.yml
check_file docs/_includes/google-analytics.html
check_file src/themeapa.R
check_file src/cps2.csv
check_file src/data/george1935pilot.csv
check_file src/rawdata/subject-11.csv

if grep -RInE 'source\("https?://' src --include='*.Rmd' --include='*.R'; then
    printf 'source files still contain archive-time external dependencies\n'
    failed=1
fi

remote_data_reads=$(grep -RInE 'read_csv\([^)]*https?://|read\.csv\([^)]*https?://|download\.file\([^)]*https?://' src --include='*.Rmd' --include='*.R' | grep -v 'zenodo.org/record/1120364/files/blind_data.csv' || true)
if [ -n "$remote_data_reads" ]; then
    printf '%s\n' "$remote_data_reads"
    printf 'source files still read data from external URLs\n'
    failed=1
fi

if grep -RIn 'https://benwhalley.github.io/rmip' src docs --include='*.Rmd' --include='*.md' --include='*.html' | grep -v '^docs/rmip/'; then
    printf 'repository content still links to the external RMIP site\n'
    failed=1
fi

if ! grep -q '^google_analytics: G-WXTBHY6FJW$' docs/_config.yml; then
    printf 'analytics property is not configured in docs/_config.yml\n'
    failed=1
fi

if [ "$failed" -ne 0 ]; then
    exit 1
fi

printf 'archive checks passed\n'