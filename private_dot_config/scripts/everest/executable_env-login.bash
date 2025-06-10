#!/bin/bash

if [ "$#" -ne 1 ]; then
    printf 'ERROR! You must provide one and only one argument!\n' >&2
    exit 1
fi

direnv allow ${BASH_SOURCE%/*}/direnv/$1
direnv exec ${BASH_SOURCE%/*}/direnv/$1 bash -c ${BASH_SOURCE%/*}/direnv/echo-pg.bash
