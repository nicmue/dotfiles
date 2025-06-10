#!/bin/bash

if [ "$#" -ne 0 ]; then
    printf 'ERROR! You must not provide any arguments!\n' >&2
    exit 1
fi

echo PGHOST=$PGHOST
echo PGUSER=$PGUSER
echo PGDATABASE=$PGDATABASE
echo PGPASSWORD=$PGPASSWORD
