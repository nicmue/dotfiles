#!/bin/bash

if [ "$#" -ne 0 ]; then
    printf 'ERROR! You must not provide any arguments!\n' >&2
    exit 1
fi

export KERNEL_POSTGRES_HOST=$PGHOST
export KERNEL_POSTGRES_DATABASE=$PGDATABASE
export KERNEL_POSTGRES_USER=$PGUSER
export KERNEL_POSTGRES_PASSWORD=$PGPASSWORD
