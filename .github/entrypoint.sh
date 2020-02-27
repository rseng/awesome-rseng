#!/usr/bin/env python

set -eu
set -o pipefail

# If the docs folder isn't created, do so.
if [ ! -d "/github/workspace/docs" ]; then
    printf "Creating docs folder for GitHub pages\n"
    cp -R /docs /github/workspace/docs
fi

# Cleanup old set of first issues
printf "Cleaning up previous first issues...\n"
rm -rf /github/workspace/docs/_issues

# Generate first issues
python /generate-first-issues.py
