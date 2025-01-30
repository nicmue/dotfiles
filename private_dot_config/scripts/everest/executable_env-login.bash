#!/bin/bash

direnv allow ${BASH_SOURCE%/*}/direnv/$1
direnv exec ${BASH_SOURCE%/*}/direnv/$1 bash -c ${BASH_SOURCE%/*}/direnv/echo-pg.bash
