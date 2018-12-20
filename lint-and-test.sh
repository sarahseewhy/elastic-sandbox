#!/bin/bash

set -e

function lint_files() {
    find modules/ -name '*.pp' | xargs puppet-lint \
        --with-filename \
        --fail-on-warnings
}

lint_files

